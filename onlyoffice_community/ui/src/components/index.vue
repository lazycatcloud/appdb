<template>
  <div class="creations">
    <div class="header">
      <img src="/icon_128.png" />
      <h2>ONLYOFFICE Docs</h2>
    </div>

    <div class="spacer"></div>

    <div class="creation-container">
        <div class="item-box" v-for="item in types" @click="handleClick(item)">
          <img :src="item.icon" />
          <a>{{ item.name }}</a>
        </div>
    </div>

    <div class="spacer"></div>

  </div>

  <lzc-file-picker 
    base-url="/_lzc/files/home"
    v-if="filePicker.show"
    @visible="pickCancel"
    :type="filePicker.type"
    :multiple="false"
    :accept="filePicker.accept"
    @submit="pickFinished"
    style="padding-bottom: 1rem"
  ></lzc-file-picker>

  <dialog id="create-dialog" class="create-dialog">
    <span class="title">{{ dialogTitle }}</span>

    <div style="flex-grow: 4;"></div>

    <div class="content" @click="showFolderPicker">
      <span>位置: </span><label>{{ dialogCreateAt }}</label>
    </div>

    <input class="content" v-model="dialogCreateName" placeholder="请输入文件名" @input="handleCheckConflict" />
    <span class="warning">{{ message }}</span>

    <div class="spacer"></div>

    <div class="foot">
      <button class="cancel" @click="handleCancel">取消</button>
      <button class="submit" @click="handleSubmit">确定</button>
    </div>
  </dialog>
</template>

<script>
import { checkConflict, create, openFile, dirPath, basePath } from "../api/api"
import { mimes } from "./consts"

export default {
  data() {
    return {
      dialog: null,
      dialogTitle: "",
      chosenType: null,
      dialogCreateAt: "",
      dialogCreateName: "",
      message: null,
      types: [
        { "name": "打开文件", "icon": "/mimes/folder.svg", "ext": "all" },
        { "name": "文本文档", "icon": "/mimes/writer.svg", "ext": "odt", "template": "" },
        { "name": "电子表格", "icon": "/mimes/sheet.svg", "ext": "ods", "template": "" },
        { "name": "演示文稿", "icon": "/mimes/impress.svg", "ext": "odp", "template": "" },
      ],
      filePicker: {
        show: false,
        type: "file",
        accept: "",
      }
    }
  },
  mounted() {
    this.dialog = document.getElementById("create-dialog")
    this.dialog.addEventListener("keyup", (event) => {
      if (event.keyCode == 13) {
        this.handleSubmit()
      }
    });

  },
  methods: {
    // 展示文件选择器，由打开文件调用，所以需要传入所有支持的mimetype
    showFilePicker() {
      this.filePicker.type = "file",
      this.filePicker.show = true,
      this.filePicker.accept = mimes
    },
    // 展示文件夹选择器，由创建文件的dialog调用，所以需要先关闭dialog
    showFolderPicker() {
      this.filePicker.type = "directory",
      this.filePicker.show = true
      this.dialog.close()
    },
    // 处理 lzc-file-picker 返回值
    pickFinished(selected) {      
      let result = selected.detail[0][0].filename
      if (this.filePicker.type == "file") {
        // 如果选中的是文件，直接打开
        openFile(result)
      } else {
        // 如果选中的是文件夹，设置路径，并重新展示dialog
        this.dialogCreateAt = result
        this.handleCheckConflict()
      }
    },
    pickCancel() {
      this.filePicker.show = false;
      if (this.filePicker.type != "file") {
        this.dialog.showModal()
      }
    },
    // 打开文件或创建文件
    handleClick(item) {
      this.chosenType = item

      // 选中“打开文件”，弹出文件选中框
      if (this.chosenType.ext === "all") {
        this.showFilePicker()
        return
      }

      console.log(item)
      this.dialogCreateAt = "/"
      this.dialogCreateName = ""
      this.dialogTitle = `创建${item.name}`
      this.dialog.showModal()
      this.message = null
    },
    // dialog cancel
    handleCancel() {
      this.dialog.close()
    },
    // 检查文件冲突，为新建文件准备
    async handleCheckConflict() {
      try {
        let { data } = await checkConflict(this.getCreateAbs())
        if (data.conflict === true) {
          this.message = "文件已存在"
        } else {
          this.message = null
        }
        return data.conflict
      } catch (e) {
        if (!!e && !!e.response && !!e.response.data) {
          window.alert(e.response.data)
        } else {
          window.alert(e)
        }
        return null
      }
    },
    // 获取将要创建文件的绝对路径，由文件夹和文件名拼接出来
    getCreateAbs(){
      let dir = dirPath(this.dialogCreateAt)
      let base = basePath(`${this.dialogCreateName}.${this.chosenType.ext}`)
      return `${dir}/${base}`
    },
    // dialog submit，实际的创建文件
    async handleSubmit() {
      console.log(this.dialogCreateName)

      let conflict = await this.handleCheckConflict()
      if (conflict === false) {
        // 创建文件
        let path = this.getCreateAbs()
        create(path).then(() => {
          openFile(path)
        }).catch(e => {
          if (!!e && !!e.response && !!e.response.data) {
            window.alert(e.response.data)
          } else {
            window.alert(e)
          }
        })
      }
    }
  }
}
</script>

<style scoped>
.creations {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;

  justify-content: center;
  align-items: stretch;
}

.creations .header {
  background-color: #f8f9fa;
  display: flex;
  flex-direction: row;
  align-items: center;
  height: 3rem;
}

.creations .header img {
  width: 2em;
  height: 2em;
  margin: 0 0.5rem;
}

.creations .header h2 {
  margin: 0;
}

.creation-container {
  display: flex;
  justify-content: center;
  flex-wrap: wrap
}

.creation-container .item-box {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 10rem;
  height: 10rem;
  margin: 0.25rem;

  border: 1px solid transparent;
}

.creation-container .item-box:hover {
  border: 1px solid lightgray;
  border-radius: 1rem;
  box-shadow: 3px 3px 5px lightgrey;
}


.creation-container .item-box img {
  width: 7rem;
  height: 7rem;
}

.spacer {
  flex-grow: 2;
}

.create-dialog {
  width: 100%;
  height: 100%;
  max-width: 20rem;
  max-height: 13.5rem;
  border: none;
  border-radius: 1rem;
  box-shadow: 3px 3px 5px lightgray;

  display: flex;
  flex-direction: column;
  align-items: left;
}

.create-dialog .title {
  font-size: 1.5rem;
}

.create-dialog .content {
  font-size: 1.25rem;
  border-radius: 0.5rem;
  border: 1px solid #dcdfe6;
  padding: 0.5rem;
  color: #606266;
  margin-top: 0.5rem;
}

.create-dialog .warning {
  font-size: 0.75rem;
  height: 1rem;
  color: red;
}

.create-dialog .content:focus-visible {
  outline: none;
  border-color: #409eff;
}

.create-dialog .content::placeholder {
  font-weight: normal;
  color: lightgray;
}

.create-dialog .foot {
  display: flex;
  flex-direction: row-reverse;
}

.create-dialog .foot button {
  transition-property: all;
  transition-duration: .3s;
  padding: 0.45rem 2.152rem;
  font-size: 0.92rem;
  font-weight: bold;
  border-radius: 0.25rem;
}

.create-dialog .foot .submit {
  color: #FFFFFF;
  background-color: #4c89fb;
  border-color: transparent;
}

.create-dialog .foot .cancel {
  background: none;
  border: 1px solid #4c89fb;
  color: #4c89fb;
  transition: 0.5s linear;
  margin-bottom: 0;
  margin-left: 5px;
}
</style>