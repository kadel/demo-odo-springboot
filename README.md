## add user

```
curl localhost:8080/user/add -d name=First -d email=first@example.com
```
```
java -Dspring.profiles.active=mysql -jar target/demo-0.0.1-SNAPSHOT.jar

```
mvn spring-boot:run -Dspring-boot.run.profiles=mysql
```

```
podman run -it -e MYSQL_USER=springuser  -e MYSQL_PASSWORD=ThePassword  -e MYSQL_DATABASE=db_example -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 docker.io/mysql
```


```
SPRING_PROFILES_ACTIVE
```