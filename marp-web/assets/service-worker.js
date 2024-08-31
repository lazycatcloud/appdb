/**
 * Welcome to your Workbox-powered service worker!
 *
 * You'll need to register this file in your web app and you should
 * disable HTTP caching for this file too.
 * See https://goo.gl/nhQhGp
 *
 * The rest of the code is auto-generated. Please don't update this file
 * directly; instead, make changes to your Workbox build configuration
 * and re-run your build process.
 * See https://goo.gl/2aRDsh
 */

importScripts("https://storage.googleapis.com/workbox-cdn/releases/4.3.1/workbox-sw.js");

importScripts(
  "precache-manifest.4852e57ad559185a46cc5aa0f04bceac.js"
);

workbox.core.setCacheNameDetails({prefix: "marp-web"});

self.addEventListener('message', (event) => {
  if (event.data && event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});

/**
 * The workboxSW.precacheAndRoute() method efficiently caches and responds to
 * requests for URLs in the manifest.
 * See https://goo.gl/S9QRab
 */
self.__precacheManifest = [
  {
    "url": "index.html",
    "revision": "e9fe6325ab0b3eae49a6616f7b4b0c14"
  },
  {
    "url": "android-chrome-192x192.png",
    "revision": "1519fdff431f116ad9f1ab2132588a89"
  },
  {
    "url": "android-chrome-384x384.png",
    "revision": "aef3bcabe526d2ee1d9f9ca6c4f8d678"
  },
  {
    "url": "favicon-16x16.png",
    "revision": "6cba87fdc021848c0876a754338e6db2"
  },
  {
    "url": "favicon-32x32.png",
    "revision": "67769491a101d849170e01598e073a4d"
  },
  {
    "url": "mstile-150x150.png",
    "revision": "9bbd398c3e52e67d89373e84a924a73c"
  }
].concat(self.__precacheManifest || []);
workbox.precaching.precacheAndRoute(self.__precacheManifest, {});
