import BackendUI from "./backend.js";
import HomeCloud from "../../backend/homecloud.js";
import * as app from "../../my-mind.js";
import { repo as formatRepo, getByName } from "../../format/format.js";
import { fill as fillFormats } from "../format-select.js";


interface State {
    file: string;
}

export default class HomeCloudUI extends BackendUI<HomeCloud> {
    protected homeUrl = "/_lzc/files/home";
    protected file = "";

    constructor() {
        console.log("constructor 1");
        super(new HomeCloud(), "懒猫云");

        fillFormats(this.format);
        this.format.value = localStorage.getItem(this.prefix + "format") || "native";
		this.dir.value = localStorage.getItem(`${this.prefix}.dir`) || "/";
        console.log("constructor 2");
    }

    protected get format () { return this.node.querySelector<HTMLSelectElement>(".format")!; }

	get dir() { return this.node.querySelector<HTMLInputElement>(".home_cloud_save_dir")!; }

    getState (): State {
        console.log("getState 1");
        console.log("getState 2");
        return { file: this.file };
    }

    setState (data: State) {
        console.log("setState 1");
        this.load(data.file)
        console.log("setState 2");
    }

    async save () {
        console.log("save 1");
        localStorage.setItem(`${this.prefix}.format`, this.format.value);
		let dir = this.dir.value;
        dir = dir.length > 0 ? dir : "/";
		localStorage.setItem(`${this.prefix}.dir`, dir);
        let format = formatRepo.get(this.format.value)!;
        var json = app.currentMap.toJSON();
        var data = format.to(json);
        var name = app.currentMap.name + "." + format.extension;

        try {
            if (this.file) {
                await this.backend.save(data, `${this.homeUrl}${dir}${this.file}`);
            } else {
                // await this.backend.autoCreateDir(`${this.homeUrl}${this.dir}`);
                await this.backend.save(data, `${this.homeUrl}${dir}${name}`);
            }
            this.saveDone();
        } catch (e) {
            this.error(e);
        }
        console.log("save 2");
    }

    async load (file = "") {
        console.log("load 1, file:", file);
        if (file) {
            this.file = file;
            console.log("url:", `${this.homeUrl}${this.file}`);

            try {
                let data = await this.backend.load(`${this.homeUrl}/${this.file}`);
                let format = getByName(`${this.homeUrl}/${this.file}`) || formatRepo.get("native")!;
                let json = format.from(data);
                this.loadDone(json);
            } catch (e) {
                this.error(e);
            }
        } else {
            // const lzcFilePicker=require("@lazycatcloud/lzc-file-pickers")
            // <lzc-file-picker
            //     v-if="fromFilePickerProps.show"
            //     :base-url="fromFilePickerProps.baseUrl"
            //     target=""
            //     show
            //     type="file"
            //     :title="fromFilePickerProps.title"
            //     @visible="fromFilePickerProps.show = false"
            //     @submit="onUploadSubmit"
            // ></lzc-file-picker>
            let file = document.getElementById("home_cloud_file_picker");
            if (file) {
                // 现有代码结构下，无法在此函数中获取到文件路径(回调函数无法调取这里)，决定此处只用来展示文件选择器
                // 通过文件选择器的回调函数做 url 跳转，跳转时使用支持的 load 加载方法来加载指定文件。
                // let data = await this.backend.load(`${this.homeUrl}/${this.file}`);
                // let json = formatRepo.get("native")!.from(data);
                ;(window as any).invoke(file, "init")
                ;(window as any).invoke(file, "open")
            } else {
                console.error("lzcFilePicker not found")
            }
        }
        console.log("load 2");
    }
}
