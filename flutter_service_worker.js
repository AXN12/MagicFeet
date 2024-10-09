'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "3d55e5cb2414cd0987dd1db1c4eaaf63",
"assets/AssetManifest.bin.json": "1f822f3ae077ba3552c0e4ebb24760b1",
"assets/AssetManifest.json": "4f0eef3ef3f98806594e0a9c3fc94a16",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "31fe70ad068970343a9026b4ab3f8b3f",
"assets/lib/assets/alina.jpg": "7a60aa73eff947aaf4a60c523397ffdb",
"assets/lib/assets/background.png": "90ff7112580b248e7ddd9bde1847b801",
"assets/lib/assets/backgroundmaini.jpg": "29d979ee3f93478cd7d24dd5c043442d",
"assets/lib/assets/logo.png": "6a9d65158918b85a78b551484bdf377f",
"assets/lib/assets/mani1.jpg": "5560330d145447ae19eda28b12b0ab8d",
"assets/lib/assets/mani10.jpg": "7b467e4de734bd8c2327fd8e538d00f8",
"assets/lib/assets/mani11.jpg": "c081d12ff1ae941baba47c1659701de6",
"assets/lib/assets/mani12.jpg": "77b2682edc2b569542741479ef9d7945",
"assets/lib/assets/mani13.jpg": "c82a1692857680618b514f8ceec0fc77",
"assets/lib/assets/mani2.jpg": "569d1ed95b5db7944c9a8398cc97d474",
"assets/lib/assets/mani3.jpg": "3ffd552c90d2e842a894f012d13daec5",
"assets/lib/assets/mani4.jpg": "081a74508101c7cca6b965eb9835a1e3",
"assets/lib/assets/mani5.jpg": "58288c3f8d8b46e2f928914c98ad6425",
"assets/lib/assets/mani6.jpg": "d9a7ca423141078b28d89ecb067b6659",
"assets/lib/assets/mani7.jpg": "9a8caf518737fe4f615858ec14831cf5",
"assets/lib/assets/mani8.jpg": "4f648ee5956181404ce00dfa4b17b99e",
"assets/lib/assets/mani9.jpg": "5931a5109f42780adc3365fb4a04d24f",
"assets/lib/assets/med1.jpg": "8ba264e6da020d989583d95edd7ab8d5",
"assets/lib/assets/med2.jpg": "c8698b45cd891006b894b4266cdc13e1",
"assets/lib/assets/med3.jpg": "dd7ecb84f1c6f6c73e8d52e6b86006df",
"assets/lib/assets/ped2.png": "65c46981fef7308ded9933dfaf1cc392",
"assets/lib/assets/ped3.png": "cc67700b1934d1a02b9004d086e0a2f7",
"assets/lib/assets/pedi1.jpg": "2709211f14226608b0094746c3b6735e",
"assets/lib/assets/pedi2.jpg": "eeff4367143ab7ce0889021e049c927f",
"assets/lib/assets/pedi4.jpg": "1460c8c39095594e58509aee4616239c",
"assets/lib/assets/pedi5.jpg": "f090b1caff065791de71f9df67b62626",
"assets/lib/assets/pedi6.jpg": "f1e102421e3539d35b340e3282e1e715",
"assets/lib/assets/photo1.png": "3bb69cba9e49db4a65dfb739df75704e",
"assets/lib/assets/photo2.jpg": "d2a6b8cd831ec91dd4aab38fffc57459",
"assets/lib/assets/slide1.jpg": "2d5eda520f0bf19d70f8f821b0a0f802",
"assets/lib/assets/slide2.jpg": "d2a6b8cd831ec91dd4aab38fffc57459",
"assets/lib/assets/slide3.jpg": "8f40834dad0ac176ac7a21e2febe422d",
"assets/lib/assets/slide4.jpg": "fb2cb22c3ffb51d1536877642c48967e",
"assets/lib/assets/slide5.jpg": "63435dc8a51e14587e40cd77d904ec26",
"assets/NOTICES": "c1d9bdf4ae7dea8314fbedbd783db131",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "32cc31c7f950543ad75e035fcaeb2892",
"canvaskit/canvaskit.js.symbols": "bb7854ddbcaa2e58e5bdef66b58d4b47",
"canvaskit/canvaskit.wasm": "6134e7617dab3bf54500b0a2d94fe17a",
"canvaskit/chromium/canvaskit.js": "6a5bd08897043608cb8858ce71bcdd8a",
"canvaskit/chromium/canvaskit.js.symbols": "f23279209989f44e047062055effde63",
"canvaskit/chromium/canvaskit.wasm": "ad6f889daae572b3fd08afc483572ecd",
"canvaskit/skwasm.js": "e95d3c5713624a52bf0509ccb24a6124",
"canvaskit/skwasm.js.symbols": "dc16cade950cfed532b8c29e0044fe42",
"canvaskit/skwasm.wasm": "aff2178f40209a9841d8d1b47a6e6ec7",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "5de281a37b2308e43846d3a0b545c921",
"flutter_bootstrap.js": "3270a3ede7217f2c77bf2d972d8c2790",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "d61570f80d5d555a6152a71f6a0a8350",
"/": "d61570f80d5d555a6152a71f6a0a8350",
"main.dart.js": "35ef2adedcee3f8a0d2939c5e8dbbb1b",
"manifest.json": "4d905c2e647b54f45fd73c219981c183",
"version.json": "44f68bd07968caf15be80e2729e23bc0"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
