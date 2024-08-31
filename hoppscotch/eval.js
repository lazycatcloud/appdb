const settingsInitData = {
  "syncCollections": true,
  "syncHistory": true,
  "syncEnvironments": true,
  "PROXY_ENABLED": true,
  "PROXY_URL": location.origin + '/api/',
  "EXTENSIONS_ENABLED": false,
  "URL_EXCLUDES": {
      "auth": true,
      "httpUser": true,
      "httpPassword": true,
      "bearerToken": true,
      "oauth2Token": true
  },
  "THEME_COLOR": "indigo",
  "BG_COLOR": "system",
  "TELEMETRY_ENABLED": true,
  "EXPAND_NAVIGATION": true,
  "SIDEBAR": true,
  "SIDEBAR_ON_LEFT": true,
  "ZEN_MODE": false,
  "FONT_SIZE": "small",
  "COLUMN_LAYOUT": true
}

function tryLog(...args) {
  console.log("[debugger]",...args)
}

function rebuildSettings() {
  const key = 'settings'
  const value = localStorage.getItem(key)
  if (!value) {
    tryLog('not cache, write cache')
    localStorage.setItem(key, JSON.stringify())
    location.reload()
    return
  }
  const data = JSON.parse(value)
  const newProxy = location.origin + '/api/'
  if (data.PROXY_URL != newProxy) {
    data.PROXY_ENABLED = true
    data.PROXY_URL = newProxy
    localStorage.setItem(key, JSON.stringify(data))
    location.reload()
  }
}

;(()=> {
  setTimeout(()=> {
    tryLog('try replace default proxy api')
    rebuildSettings()
  }, 420)
})()