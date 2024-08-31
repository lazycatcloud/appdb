<script>
import { filePath, isSupport, getToken, isActive } from './api/api';
import creation from "./components/index.vue"
export default {
  data() {
    return {
      createNew: null,
      dialog: null,
      message: "ONLYOFFICE 正在启动",

      openNewDialog: false,
      openNewUrl: null,
      openNewText: null,
    }
  },
  components: {
    creation,
  },
  methods: {
    checkActive() {
      isActive().then(({ data }) => {
        if (data.message != "OK") {
          setTimeout(() => {
            this.checkActive()
          }, 1000)
        } else {
          this.dialog.close()
          this.loadView()
        }
      })
    },
    loadView() {
      let file = filePath()
      if (!file) {
        document.title = 'ONLYOFFICE Docs'
        this.createNew = true
      } else {
        this.createNew = false
        let doc_name = file.split("/").slice(-1)[0]
        document.title = `ONLYOFFICE Docs: ${doc_name}`

        let urlSrc = null
        let fileId = null
        let access_token = null
        isSupport(file).then(({ data }) => {
          urlSrc = data.urlSrc
          return getToken(file)
        }).then(({ data }) => {
          fileId = data.file_id
          access_token = data.access_token

          let url = new URL(urlSrc)
          url.hostname = location.hostname
          url.protocol = location.protocol
          url.port = location.port

          url.search = ""

          if (navigator.userAgent.includes("Android") || navigator.userAgent.includes("iPhone")) {
            url.searchParams.append("mobile", 1)
          }
          url.searchParams.append("WOPISrc", `${location.origin}/wopi/files/${fileId}`)
          url.searchParams.append("title", doc_name)
          url.searchParams.append("lang", navigator.language)
          // url.searchParams.append("UserCanNotWriteRelative", "true")
          //url.searchParams.append("closebutton", "0")

          this.$refs.coll_form.action = url.toString()
          this.$refs.access_token.value = access_token
          this.$refs.access_token_ttl.value = new Date().getTime() + 3600 * 24 * 100
          this.$refs.coll_form.submit()
          //return post(urlSrc, file, data.file_id, data.access_token)
        }).catch((e) => {
          console.log(e)
          if (!!e && !!e.response && !!e.response.data) {
            window.alert(e.response.data)
          } else {
            window.alert(e)
          }
        })
      }
    },
    jumpToNew() {
      location.href = this.openNewUrl
    },
    onIframeLoadHandler() {
      let frame = document.getElementById("collabora-ui").contentDocument
      let sty = frame.createElement('style')
      sty.innerHTML = '.editmode-off {z-index: -1 !important;}'
      frame.head.appendChild(sty)
    },
    onOpennewDialogButtonClicked(text) {
      if (text == 'confirm') {
        this.jumpToNew()
      }
      this.openNew = null
      this.openNewDialog = false
      let dialog = document.getElementById("opennew-dialog")
      dialog.close()
    }
  },
  mounted() {
    this.dialog = document.getElementById("waiting-dialog")

    this.dialog.showModal()
    this.checkActive()


    window.addEventListener("lzc_action_event", ({ detail }) => {
      if (!detail) {
        return
      }
      if (detail.type != "OnActivateWindow" || !detail.msg) {
        return
      }
      this.openNewUrl = detail.msg

      let current = new URL(location.href).searchParams.get("file")
      if (!current) {
        this.jumpToNew()
        return
      }

      let next = new URL(detail.msg).searchParams.get("file")
      this.openNewText = `您正在浏览(或编辑）: ${current}, 是否打开: ${next}? `

      if (current == next) {
        console.log("debug: 打开的是同一个文件", current)
        return
      }

      this.openNewDialog = true
      let dialog = document.getElementById("opennew-dialog")
      dialog.showModal()
    })
  }
}
</script>
<template>
  <template v-if="createNew === true">
    <creation></creation>
  </template>
  <template v-else="createNew === false">
    <iframe id="collabora-ui" ref="coll_fram" name="collabora-online-viewer" :onload="onIframeLoadHandler"></iframe>
    <div style="display: none">
      <form ref="coll_form" action="" enctype="multipart/form-data" method="post" target="collabora-online-viewer"
        id="collabora-submit-form">
        <input ref="access_token" name="access_token" value="" />
        <input ref="access_token_ttl" name="access_token_ttl" value="" />
        <input type="submit" value="" />
      </form>
    </div>
  </template>
  <dialog v-if="createNew === null" id="waiting-dialog" class="waiting-dialog">
    <div style="flex-grow: 5"></div>
    <img class="loading" src="/loading.gif" />
    <div style="flex-grow: 1"></div>
    <span>{{ message }}</span>
    <div style="flex-grow: 5"></div>
  </dialog>
  <dialog id="opennew-dialog" class="waiting-dialog">
    <div style="flex-grow: 3"></div>

    <div style="font-size: 1.1rem;">{{ openNewText }}</div>

    <div style="flex-grow: 2"></div>

    <div class="foot" style="">
      <button class="submit" @click="onOpennewDialogButtonClicked('confirm')">确定</button>
      <button class="cancel" @click="onOpennewDialogButtonClicked('cancel')">取消</button>
    </div>
  </dialog>
</template>

<style scoped>
.waiting-dialog {
  width: 100%;
  height: 100%;
  max-width: 20rem;
  max-height: 11.25rem;
  border: none;
  border-radius: 1rem;
  box-shadow: 3px 3px 5px lightgray;

  display: flex;
  flex-direction: column;
  align-items: center;
}

.waiting-dialog .loading {
  height: 2rem;
  width: 2rem;
}

.waiting-dialog .foot {
  width: 100%;
  display: flex;
  flex-direction: row-reverse;
}

.waiting-dialog .foot button {
  transition-property: all;
  transition-duration: .3s;
  padding: 0.45rem 2.152rem;
  font-size: 0.92rem;
  font-weight: bold;
  border-radius: 0.25rem;
}

.waiting-dialog .foot .submit {
  color: #FFFFFF;
  background-color: #4c89fb;
  border-color: transparent;
  margin-left: 1rem;
}

.waiting-dialog .foot .cancel {
  background: none;
  border: 1px solid #4c89fb;
  color: #4c89fb;
  transition: 0.5s linear;
  margin-bottom: 0;
}
</style>
