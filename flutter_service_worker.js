'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "c63b820ca6e47027aba429f5b9cbf07f",
"assets/assets/1.png": "e45b18f5232640dc544f17376e5e6067",
"assets/assets/2.png": "879e0c90292c74d3cb66a067dfecfb4e",
"assets/assets/dsc.png": "bd954ceeeb42b91899ebe1c3b0d79850",
"assets/assets/fonts/agustina.otf": "7b9833076716a8d14eec0cf885a3153c",
"assets/assets/fonts/montserrat.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/assets/hi.gif": "cad5918d86b6a7e83f1fb4acead70e4c",
"assets/assets/mlsa.png": "38a9ff3a6296a84b7e059fa194f7e401",
"assets/assets/projects/3D-B.png": "a79bd1cbf56791f28a51014248b72da7",
"assets/assets/projects/android.png": "765adf924dae4d5e67bfb640bcd05c48",
"assets/assets/projects/catchMeB.png": "6ed758795b29afbc9c474c35514f7e88",
"assets/assets/projects/flash.png": "a2fcf91ffe48dcac24b29498fdea7f95",
"assets/assets/projects/flashB.png": "8a014a03b224ec19698ab92e1907697f",
"assets/assets/projects/flutter.png": "0b5a2f8d3f4d173805affaf9f84f6c87",
"assets/assets/projects/java.png": "62be9fb6e1d7166e9cbeeed913096752",
"assets/assets/projects/mask.png": "f9d05b7caa7dae6426a4e9792bec6319",
"assets/assets/projects/maskB.png": "2e85e9372e92b02e500912bd6d830d3b",
"assets/assets/projects/pokeball.png": "15d279f25acc085da48d2a1948c7fe4c",
"assets/assets/projects/pokedex.jpg": "2ef99ec6d69840a71d8cba3874390292",
"assets/assets/projects/portfolio.png": "671d94496a8f6263407a40f997459bd2",
"assets/assets/projects/wearB.png": "498ed21a2c6b1ef81dcd6f4c520794bb",
"assets/assets/projects/wearos.png": "e28b39f2dcff7e52bf045bc08245ccc0",
"assets/assets/projects/www.png": "4106b86d362dfa2afcf7d47abebc950e",
"assets/assets/services/app.png": "9d2da88edb7f550ef24874b306b4ae12",
"assets/assets/services/blog.png": "5e1cbb2c67e2b8ea9ae4bcce0705d2a4",
"assets/assets/services/ml.jpg": "65ae4b8bf3cac5ff6b97e1c4de682e90",
"assets/assets/services/open.png": "4a5996597d32b06d91183f0860c29aab",
"assets/assets/services/rapid.png": "8d3ff9fbdddae77403af46662f011ee8",
"assets/assets/services/ui.png": "3cf727247752b730a05f51fe0177036f",
"assets/assets/srm.png": "757e078c76d306a1fec1648f4f786d7e",
"assets/FontManifest.json": "53db916e40f5cd339f7e07ff4f1303a1",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "808aca79eedfa1c549947b43c76dec22",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "622bfd9a73cfd80f4419e4cd9be100f1",
"icons/android-icon-144x144.png": "f3cb725a3518c4f8324272e8509caf46",
"icons/android-icon-192x192.png": "66881777171b9e2a794a28cd703524d5",
"icons/android-icon-36x36.png": "d42e2117b16faa8ce0ebead968d7da62",
"icons/android-icon-48x48.png": "1095c6e3edfb70d63c67600ccada4783",
"icons/android-icon-72x72.png": "43e48088054f7f622b5d3d17966ed5e6",
"icons/android-icon-96x96.png": "0ca9518156827098bf8a4f3d7a4ac99f",
"icons/apple-icon-114x114.png": "5e31ac635c539797131c1bac218e854e",
"icons/apple-icon-120x120.png": "241b977633162452b54166eadaa54c25",
"icons/apple-icon-144x144.png": "f3cb725a3518c4f8324272e8509caf46",
"icons/apple-icon-152x152.png": "ed7bebcc49eaa0a5d2edc59f60c03850",
"icons/apple-icon-180x180.png": "fa8327e3b46248abf5aee6b3b9d0ab01",
"icons/apple-icon-57x57.png": "eecdf75a4183854708f095c0d52ad018",
"icons/apple-icon-60x60.png": "18c437bd24f5de073dbcec678ae802aa",
"icons/apple-icon-72x72.png": "43e48088054f7f622b5d3d17966ed5e6",
"icons/apple-icon-76x76.png": "262e0eb5ce8a7ce947f0f5280789174b",
"icons/apple-icon-precomposed.png": "16257d8e8c53a7387c5a2825e9456ea4",
"icons/apple-icon.png": "16257d8e8c53a7387c5a2825e9456ea4",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/favicon-16x16.png": "622bfd9a73cfd80f4419e4cd9be100f1",
"icons/favicon-32x32.png": "e7362c379567e724f3c5699ad566c599",
"icons/favicon-96x96.png": "0ca9518156827098bf8a4f3d7a4ac99f",
"icons/favicon.ico": "efcd46ec0abcf61f24656454f1f2f42f",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/ms-icon-144x144.png": "f3cb725a3518c4f8324272e8509caf46",
"icons/ms-icon-150x150.png": "47ca49e2215710743712a86a0381b4f1",
"icons/ms-icon-310x310.png": "745a7fb4ec8152d633b8b2c745254993",
"icons/ms-icon-70x70.png": "5423e4e0d1083c60b225039152bbfb8a",
"index.html": "9bc6a5ef08b4950b2c94a8922e78d7e4",
"/": "9bc6a5ef08b4950b2c94a8922e78d7e4",
"main.dart.js": "ca423899ce9113e7dadfd6afb11ee345",
"manifest.json": "028e94a9edd225a01c06d476350ef9a8",
"style.css": "ea14c82542cebe5c0a3d5d8e2c79f3d2",
"style.css.map": "0613c67b854dd49e7ea53d4c88d8eaa6",
"style.sass": "e029d4c59c7df8ad2e7c986ca176bc10",
"version.json": "5d095fe197f14fd7807557076ce68faf"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
