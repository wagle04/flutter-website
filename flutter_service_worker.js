'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "5c4aa91c2afc901d007aa901068fd806",
"assets/assets/images/flutter.png": "1066ca72d3ac0d9341a2e6d522e4876e",
"assets/assets/images/photo.jpg": "69a6fe351d56ee2707aa2e04ea1df99a",
"assets/assets/images/spp.png": "0013ec6850062d3d9ca33802a2b8b31f",
"assets/FontManifest.json": "18eda8e36dfa64f14878d07846d6e17f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "23bad233b9c5fc242967003318fca6d5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"favicon.png": "0013ec6850062d3d9ca33802a2b8b31f",
"icons/Icon-192.png": "0013ec6850062d3d9ca33802a2b8b31f",
"icons/Icon-512.png": "0013ec6850062d3d9ca33802a2b8b31f",
"index.html": "e583cc061be93e9aa2561c132b6803fb",
"/": "e583cc061be93e9aa2561c132b6803fb",
"main.dart.js": "b9096278611b54c251954d653f7239a2",
"manifest.json": "d1326f451fbc4ed5ef4a907a2076461d"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
