refer：(http://travis-ci.org/rajithd/spring-boot-oauth2)

Mysql
1.create database nsyundb 
2.source scheme.sql

run tomcat server 

use curl Fetching acess_token：
curl -X POST -vu clientName:clientPassword http://localhost:8080/ns/oauth/token -H "Accept: application/json" -d "password=123456&username=admin&grant_type=password&scope=read%20write&client_secret=clientPassword&client_id=clientName"

### Fetching acess_token by submitting refresh_token
```sh
curl -X POST -vu clientName:clientPassword 'http://localhost:8080/ns/oauth/token?grant_type=refresh_token&refresh_token=<refresh_token>'

{"access_token":"821c99d4-2c9f-4990-b68d-18eacaff54b2","token_type":"bearer","refresh_token":"e6f8624f-213d-4343-a971-980e83f734be","expires_in":1799,"scope":"read write"}
```

### Access secure resource sucessfully
```sh
curl -i -H "Authorization: Bearer <access_token>" http://localhost:8080/ns/secure

Secure Hello!



references


https://github.com/dsyer/spring-security-angular/

https://github.com/spring-guides/tut-spring-security-and-angular-js

https://github.com/chbatey/killrauction

https://github.com/nandhusriram/jwt-oauth2

https://github.com/gdongus/spring-boot-oauth-jwt-example

https://github.com/nandhusriram/jwt_token_mongo_store

https://github.com/tuanngda/spring-boot-oauth2-demo


