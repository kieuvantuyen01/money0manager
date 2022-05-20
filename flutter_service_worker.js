'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "80a5545913a3d71a4d7aa9c94fa3e8f9",
".git/config": "3d5fb8f512fcb139cc17b068aac2f79c",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "7bf1fcc5f411e5ad68c59b68661660ed",
".git/index": "8aa57b9189961baa96d6f8c79c5ba9cc",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "afa7c653c638e7fe137b45cdc7f234a2",
".git/logs/refs/heads/main": "20ae4357f2add45dca10b32e2424fb27",
".git/logs/refs/remotes/origin/main": "93d031a89d9bdedc20fbdcd105cd6f21",
".git/objects/02/7a4e103a1045353d9df5f55aac8ce6c4bb921b": "d21cf4b1a71fa04bc245a346e5f6ec22",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/0e/cabe1f70a1b23b2089541343cbe1c92e84a087": "ffd0074f13970ee4c2a00852f09552bf",
".git/objects/20/5c413c2bc575057b139c70972e333471e5bcdf": "cd1b7fb6cc90d2eb1c0e35ae9f57a8ed",
".git/objects/22/efa441ca82cdd92419ffade7d1c270239f2860": "634079feb6ff0a5e92ee15028a05184c",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/28/d1ce739ac111aa8a3b9b18af655750263439a6": "8ec18d0730321498e7daaf0e058bb1b5",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/35/41412f1302b7a6403c7d12f1ac33d7006ef906": "516611542cfcdaa87fde49f157908944",
".git/objects/3d/66fd04242d80b29990d09ad67a5aebe2382ea3": "c9cbbacc4459715782fa0d2e7677ac87",
".git/objects/3e/0d120e7f771d85124781f068586100de04be62": "425163dd89ff0a4b9643354a70133b62",
".git/objects/42/37ad5f9bed5833c820c66d808fddad5a475061": "6588d3f45cbedbe2dcb761e0cad7fdd6",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/50/d9b8963ba0ac5bfd26abae8754e5547af4aea4": "4b4ebad2563778657b72b078501fc4d1",
".git/objects/51/63ec35dbd9177911a051813477070a87ad9a23": "4a2c3cd9bc9bcb522b4445ac80de2309",
".git/objects/52/480a63b1f184ea74afb06662aa98fa98864864": "6f8b2cf71be2b4830601f9db57eded45",
".git/objects/56/3285ab515f69ac08d3bd6bc3f0d9ea488e29f4": "0a6e916b24c1215a99a02e8f2b1054ec",
".git/objects/57/8d7ef99e7d228af8c6ba7944ed6e79e76ee13e": "49d94f496e68be7747f09af2aa5298ff",
".git/objects/5b/71128e13033b9e6c30c21735793c258809b93b": "d82a056c5df1b545529162450ad69c85",
".git/objects/5b/c87f33c46174e9e03eb42bbd57727b09e6cde5": "35f9b5af25dd367eaad6680a785c2964",
".git/objects/5f/4475d39a47bc7c92c7412993f8397cec175c56": "285a02e98b9594cc72d2ba37aba04af5",
".git/objects/60/c1b5ea41e283872bba2a5c2f803f8adf784e64": "6b1c870762da75613d40c028f43735a7",
".git/objects/66/6ac20aa8553107cddc8a550bc4a152f7fd521d": "2bd2ef71911e358d8d265951eabd3286",
".git/objects/66/d2c4155527f6d11d4f793639cf5b7d8d97bdb4": "97f4cde2a054f83ded9107b98275c15f",
".git/objects/69/57d9e62d74fe7fd13c233adc6fec9d4c327c06": "c97282fad80a3e73c591a7e6d6396db6",
".git/objects/6e/268d3ed1c08194869f39706fcd10bf4268127d": "bc2119031136da9f3cb19b9a05db52c0",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7c/ba8e18d1b50a8ff03d95968f45d88a2f80c5a0": "cb7c5101d7b9e3cf2a73fd3311861931",
".git/objects/7c/d9dd67d6fe2e5b0d883ec6a03bff4941dd10b2": "c88d61827b47daf3e8d1fa36a75abfc8",
".git/objects/81/713425a10e7f69079431be17a5515829a204bd": "1112613add97925becc45fed43e29e44",
".git/objects/84/67b2a021ec3e445e436a9714d252a8d4cfd50a": "f73f8927b12801ccbce3ad4261b40272",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8d/59b67721e79437748708079ddff77b4821aa3b": "b9f18bb55d77571cd74f8d31f474af6c",
".git/objects/96/e811161f424d45e0c989151ebb5db65ca144f4": "78d75fbe4f053df0b615ddda5e183a05",
".git/objects/9b/5f95b8591846e1b096813de5c1311e15a1b27d": "e14d45b459d6c244b713bc9a31a7dc39",
".git/objects/9f/c2a622c29a3e77c7e4e48f621ea4796b158b12": "efe7712751ea10e0d4211fd20f9f7c65",
".git/objects/9f/db77e23d111a4cf268e469ea085a3aff4317fb": "50bebc749e57ee7935b4a5e274b444bd",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/b0/b8262cda4603c4d44b4e681d8d31d42655b856": "eec535bdf010260e4f72a97b7a806dc0",
".git/objects/b5/8b0d16285c9c01dcb3ec460b9b9b57414ea531": "fa078fb9900f67be1f8fbb2e906a888e",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bf/cdcec200a1f97090e9c9a75a53ce691f69a84f": "c5362aea8af0df6a73eb29b12b1e77af",
".git/objects/c3/a3d3d3283e2313751080267db96ab2f65e7d0a": "473c5069b097732ecb8993aa4ae46815",
".git/objects/c4/7cfd07fce073d6f9d97c34e1d498672ac5834e": "839f5d955a40ae08ff95950ee8af295c",
".git/objects/c9/3bb012377ab781f19ea8cbb8e46cf2e2b918fe": "cd446fb7fd42d2c08319e1ce7eccdcb7",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/da/6d15ef2b35c7acff5e592c77ea4735d7fc14e7": "4edad34de7103c8114c2b74012900b00",
".git/objects/dc/9648bfd05c72a4c442d93d19b7e10863506ded": "8db21a640fa4276533e73d65a1daa15e",
".git/objects/dc/bb9ba014947907ac597d0adcc38cd4b6431607": "53a16a2a86fa97eed7cd0d640e609ede",
".git/objects/dd/0883d806b7c88983a324529094c25dfb52bcbc": "b18737b6e93f995739ff1a63051babe6",
".git/objects/de/362ae45881c103702ec815717e374f28b36a72": "115121ff2ad8a5b785cd9bd7d71f21b6",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ed/4622d051ea1c5f6c807c0f5845e52352167624": "1dacfd295460c3cef4b0cb1bd693d737",
".git/objects/ed/f616a0de5193ffa85a229f9dd358b977a9788b": "2f0d3b853184583588d9b8c25aab4f13",
".git/objects/f0/d8dee440df6805d4de7e6f8f548aad1dd6bc6e": "10ac68730828551e4fc11ac945d349ec",
".git/refs/heads/main": "64362a0d8325c90b0f6b9f18facd7319",
".git/refs/remotes/origin/main": "64362a0d8325c90b0f6b9f18facd7319",
"assets/AssetManifest.json": "1e9a2f65b74c6a4b5ceb39a113ffdb71",
"assets/assets/appIcon.png": "7c33fd56bef4a02ade92ab7906ba47fc",
"assets/assets/fb.png": "f412964b1fd8f3df4ac720fb99f251a4",
"assets/assets/google.png": "42091accf38e6ff41664a08bb4d017d8",
"assets/assets/images/bieu_do_icon.png": "5c67d56714f8f4340986946c55be20a6",
"assets/assets/images/cai_dat_icon.png": "6b3d9279a55b863eca6ab5b6f7965e89",
"assets/assets/images/chia_se_icon.png": "4a2f8aca0d50e9929f25f5cf5f11d5d9",
"assets/assets/images/danh_gia_icon.png": "813cd01ef29844fadf2bdfd44ffdb8e3",
"assets/assets/images/danh_muc_icon.png": "381dc412a76ccf932720dc280da952e3",
"assets/assets/images/header_icon.png": "a4eddffed9f56a75b194510bd12650c2",
"assets/assets/images/lien_he_icon.png": "f2019fe78ed8274142f073c18f659592",
"assets/assets/images/ngan_sach_icon.png": "208b624ba9deda32e17757091fb55991",
"assets/assets/images/nhac_nho_icon.png": "061e9addb6a1eed0b85d26d887c4ea59",
"assets/assets/images/quang_cao_icon.png": "83f39f52147641a512e00ee1b36647e0",
"assets/assets/images/tai_khoan_icon.png": "5535df7009ea69e2178e8905fe25aecc",
"assets/assets/images/thanh_toan_icon.png": "1e7c968dae83886cc3beeac5abb2426e",
"assets/assets/images/tien_te_icon.png": "a937c7ec8cf76b299237aac718688809",
"assets/assets/ngansach.png": "ff21181916c9f0786f706a8744fb6d06",
"assets/FontManifest.json": "87e04ddd47dc3c85e29dd1916b289700",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/NOTICES": "5e21cd294c988e994c052accc9a32898",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutterfire_ui/assets/countries.json": "8c937aac9f3b69162be779fbcd6199d2",
"assets/packages/flutterfire_ui/assets/fonts/SocialIcons.ttf": "a1207fae1578da27a062cb73d424aed9",
"assets/packages/flutterfire_ui/assets/icons/apple_dark.svg": "1b587ffd7d75c462847f8137a93f3161",
"assets/packages/flutterfire_ui/assets/icons/apple_light.svg": "2508cc7c5d302fd37edff1b87fedb594",
"assets/packages/flutterfire_ui/assets/icons/facebook.svg": "5fad3daafe7c7c5163fca56662d2738a",
"assets/packages/flutterfire_ui/assets/icons/google.svg": "3b5ceaea5e2391782d39df225a375d5d",
"assets/packages/flutterfire_ui/assets/icons/twitter.svg": "6086e2aad26effea1344c8e118520e32",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "dba76d7230e4fdc3a88a2c12caf3d696",
"/": "dba76d7230e4fdc3a88a2c12caf3d696",
"main.dart.js": "2edf094a628f06aa7cba28048c67c9db",
"manifest.json": "e3d40771ec797a21ac08e2bc4f885b96",
"version.json": "a248072ba3eae8e243b9d0ff107dc4a9"
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
