# Curve25519

Curve25519 contains X25519 and Ed25519 implementations.

### Usage

##### X25519


```objective-c
// Generate a KeyPair
KeyPair *keyPair = [X25519 generateKeyPair];
// Generate a KeyPair with privateKey
KeyPair *keyPair = [X25519 generateKeyPairWithPrivateKey:privateKey];
// Generate a shared secret
NSData *sharedSecret = [X25519 computeSharedSecretWithPrivateKey:privateKey peersPublicKey:peersPublicKey];
```

##### Ed25519


```objective-c
// Generate a KeyPair
KeyPair *keyPair = [Ed25519 generateKeyPair];
// Generate a KeyPair with privateKey
KeyPair *keyPair = [Ed25519 generateKeyPairWithPrivateKey:privateKey];
// Sign data with privateKey
NSData *signature = [Ed25519 signWithPrivateKey:privateKey data:data]
// Verify data with publicKey
BOOL validSignature = [Ed25519 verifyWithSignature:signature publicKey:publicKey data:data;
// Sign data with KeyPair
signature = [Ed25519 signWithKeyPair:keyPair data:data]
// Verify data with publicKey
validSignature = [Ed25519 verifyWithSignature:signature publicKey:publicKey data:data;
```
 
### CocoaPods

Install with [CocoaPods](https://cocoapods.org) by adding the following to your `Podfile`:

```
pod 'Curve25519', :git => 'https://github.com/robxyy/Curve25519.git', :tag => '1.0.0'
```

### License

    Copyright 2022 Rob X

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
