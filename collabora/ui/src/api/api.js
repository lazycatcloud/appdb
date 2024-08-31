export function filePath(){
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    return urlParams.get("file")
}

export function openFile(path) {
    let url = new URL(location.origin)
    url.searchParams.append("file", path)
    location.href = url.toString()
}

export function dirPath(path) {
    return path.split("/").filter((item, index, arr) => {
        return arr[index] !== ''
    }).join("/")
}

export function basePath(path) {
    for(let i = path.length - 1; i>=0; i--) {
        if(path[i] == '/') {
            return path.substr(i+1)
        }
    }
    return path
}

import axios from "axios";

const api = axios.create({
})

export function discover() {
    return api.request({
        url: "/wopi/api/discover",
        method: "GET",
    })
}

export function isSupport(name) {
    return api.request({
        url: "/wopi/api/isSupport",
        method: "GET",
        params:{
            ext: name.split(".").pop()
        }
    })
}

export function getToken(filePath) {
    return api.request({
        url: "/wopi/api/token",
        method: "GET",
        params:{
            file: filePath
        }
    })
}

export function checkConflict(filePath) {
    return api.request({
        url: "/wopi/api/conflict",
        method: "GET",
        params:{
            file: filePath
        }
    })
}

export function create(filePath) {
    return api.request({
        url: "/wopi/api/create",
        method: "POST",
        data:{
            file: filePath
        }
    })
}

export function isActive() {
    return api.request({
        url: "/wopi/api/isActive",
        method: "POST"
    })
}

export function post(urlSrc, title, file_id, token) {
    console.log(`${location.origin}/wopi/files/${file_id}`);
    let WOPISrc=`${location.origin}/wopi/files/${file_id}`
    let lang = "zh-CN"
    let closebutton = 1
    let url = new URL(urlSrc)
    url.searchParams.append("WOPISrc", WOPISrc)
/*     url.searchParams.append("title", title.split("/").slice(-1)[0])
    url.searchParams.append("lang", lang)
    url.searchParams.append("closebutton", closebutton) */

    let form = new FormData()
    form.append("access_token",token)
    form.append("access_token_ttl", new Date().getTime() + 3600 * 24 * 100)
    return fetch(url.toString(),{
        "headers":{
            "sec-fetch-dest": "iframe",
            "accept":"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        },
        "body": form,
        "method": "POST"
    })
}