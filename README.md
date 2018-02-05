# J2ObjC Unit

## Install

### IOS

Clone this project and add `ios/J2ObjCUnit/Classes` content in your ios project. 

### Android 


Run `gradle exportLib` in android project and `gradle assemble` in share project. So add dependencies in your project

```
compile fileTree(dir: 'path_to/j2objc-unit/share/build/libs', include: '*.jar')
compile fileTree(dir: 'path_to/libs/j2objc-unit/android/build/libs', include: '*.aar')
```

## Shared Project

If you are working or you want work with shared project, you can follow this sample project https://github.com/mobilemindtec/j2objc-app-test.git

## Write testes (Java)

To write shared tests see https://github.com/mobilemindtec/droidunit.git

## Android Usage


Add on `AndroidManifest.xml`

```
<activity android:name="br.com.mobilemind.j2objc.unit.TestResultWebView" 
          android:configChanges="keyboardHidden|orientation"/>
```

To run tests on android see https://github.com/mobilemindtec/droidunit.git


## IOS Usage

To run test on android add this code on view controller

```

J2ObjCUnitTestSuite.addTestCase(MyTestCase.java_getClass())

let webViewController = TestResultWebView()
self.present(webViewController, animated: true, completion: nil)

```
