Firebase Authorization Administration based on the [official Firebase Admin GO SDK](https://firebase.google.com/docs/auth/admin).

## Features

Exposes the [official Firebase Admin GO SDK](https://firebase.google.com/docs/auth/admin) to Dart to enable the usage of that SDK on the server. 

Currently the following methods are implemented:
- createUser
- updateUser
- deleteUser
- getUser
- getUserByEmail
- getUserByPhoneNumber
- setCustomClaims
- getCustomClaims
- revokeRefreshTokens
- verifyIdToken
- verifyIDTokenAndCheckRevoked
- createCustomTokenWithClaims
- createCustomToken

## Considerations before using

The purpose of this package, as an alternative to other implementations, was to have as much of an official Firebase Auth Admin SDK on the server possible. Since at the time of this writing there is no official Firebase Dart Admin SDK, the closest approach was to use the official GO SDK and expose it to Dart via FFI - Foreign Function Interface.

While there is some extra confidence by exposing an official SDK, there are some caveats to this implementation that you should be aware of.

- While both Dart and Go are garbage collected platforms, the interface used to communicate between them is C interface (Dart FFI coupled with Go's CGO). This means that there is data marshalling going on. Mainly, this means that there is manual memory allocation and destruction going on. While we have taken a lot of care to prevent any memory leak, we would be grateful for any memory leak report in case you experience one, by filling an issue on GitHub.

- Calls to GO are synchronous and may take an undeterministic time to complete as the GO SDK will need to call Firebase to complete the requests. The simplest approach we found to avoid having frozen isolates while waiting for GO requests was to launch an isolate on each request, thus freeing the isolate you are calling the API from to do other work in the meantime. We do appreciate suggestions on better ways to do this, or even better, pull requests containing actual improvements. We still did not implement an isolate pooling mechanism to prevent an eventual isolate explosion. In case you expect any scaling issues, our advice is to avoid using the ```verifyIdToken``` and ```verifyIDTokenAndCheckRevoked``` on every call, but instead use other token verification mechanisms as described in https://firebase.google.com/docs/auth/admin/verify-id-tokens. In fact, we advise using this API only when responding to calls made by users that have already been authenticated.


## Getting started

The usage of this package requires a few extra steps than usual:
- Add this package to your package dependencies on pubspec.yaml.

- The package includes a dynamic library, ```lib-auth```, which you need to be able to access from your application. Find the physical path to the package and you may either add that path to your library search path, or you may copy or add a symbolic link from the library to the root of your app's package. The file extension of the library is different for each operating system:
    * Linux: ``lib-auth.so``
    * MacOS: ``lib-auth.dylib``
    * Windows ``lib-auth.dll``

- Generate and download a new private key following the instruction in https://firebase.google.com/docs/admin/setup, under **To generate a private key file for your service account**.

- If you are adding the downloaded file containing the private key to a directory under your Git repository (or any other source control repository, for that matter), we highly advise you to **add it to your ``.gitignore`` file**. You do not want your private keys to end exposed in your code repository. While each downloaded private key file has a different filename, for referencing purposes, we will assume it has been renamed to ``service-account.json``.


## Usage

After completing the steps in the previous section, you should be ready to use the API.

First thing we need to do, preferably on the main function, is to initialize the API. We need to do this only once for the entire life of your application and regardless of the isolates you create later. In other words, as long as you've called ``initialize`` from your main Isolate (or any other isolate for that matter), you never need to call it again, not even on isolates you spawn later on.

```dart
import 'package:firebase_auth_admin/firebase_auth_admin.dart' as firebase;

void main() {
    
    firebase.initialize('service-account.json');
    
    // remaining initialization and app running
}
```

Please note the following:
- The call to initialize referes to ``service-account.json``. This would be the file containing your private key (after we renamed it). In the example, we are assuming it is either in your search path or under the application's directory. Alternatively, you may specify a complete absolute path to the file.
- The call is synchronous. This is the only synchronous call to this API, as strictly every other call is async.


After initializing, all remaining calls to the API are very straightforward. For instance, the following code would enable us to create a custom token 