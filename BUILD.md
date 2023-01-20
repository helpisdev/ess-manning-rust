# Build Steps

Once you have followed the instructions to complete the dependencies installation process, run th code generation:

```
dart pub global activate derry
derry gen_build
```
----------
Finally, build for your platform:

## Android
```
flutter build apk --multidex --obfuscate --split-debug-info=build/ess/__*flavor*__/outputs/symbols --split-per-abi --flavor __*flavor*__ --release
```
---------------
## Linux
```
flutter build linux --obfuscate --split-debug-info=build/ess/__*flavor*__/outputs/symbols --release
```
----------------
## Web
```
flutter build web --dart2js-optimization 04 --release --csp
```
-----------------

## Installation
To install run:
```
flutter install
```
