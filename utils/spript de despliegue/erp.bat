@echo off
"C:\Program Files\Java\jdk-17\bin\java" -Xmx512M -jar D:\Sistema\erp.jar --spring.datasource.url=jdbc:postgresql://localhost:5432/db_lubri_campeon --spring.datasource.username=postgres --spring.datasource.password=manager --spring.datasource.driver-class-name=org.postgresql.Driver
exit
