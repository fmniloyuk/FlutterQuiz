# myapp

A new Flutter project.

### Generate JKS file to release signed APK
```
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```
