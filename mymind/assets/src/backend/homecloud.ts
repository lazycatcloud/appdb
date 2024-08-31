import Backend from "./backend.js";

export default class HomeCloud extends Backend {
    constructor() { super("homecloud"); }

    save (data: string, url: string) {
        console.log("save", url, data);
        return this.request("PUT", url, data);
    }

    load (url: string) {
        console.log("load", url);
        return this.request("GET", url);
    }

    async dirExist (url: string) {
        return await fetch(url, {"method": "PROPFIND"});
    }
    async createdir (url: string) {
        return await fetch(url, {"method": "MKCOL"});
    }
    async autoCreateDir (mymindDir: string) {
        let r = await this.dirExist(mymindDir)
        if (r.status === 207) {
            console.log("exist mymindDir")
        } else {
            console.log("exist not mymindDir")
            r = await this.createdir(mymindDir)
            if (r.status === 201) {
                console.log("create mymindDir success")
            } else {
                console.log("create mymindDir failed")
            }
        }
    }

    async request (method: string, url: string, data?: string) {
        let init: RequestInit = {
            method,
            cache: 'no-cache',
            credentials: "include"
        }
        if (data) { init.body = data; }

        let response = await fetch(url, init);
        let text = await response.text();

        if (response.status == 201 || response.status == 200) {
            return text;
        } else {
            throw new Error(`HTTP/${response.status}\n\n${text}`);
        }
    }
}
