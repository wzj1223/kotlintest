FROM openjdk:8-jdk
WORKDIR /root
ARG JAR_FILE
ADD ./kotlinTest.jar /root/kotlinTest.jar

#ENTRYPOINT ["java", "-jar", "dataservice.jar"]

#ENV DB_Type=mysql\
#    Hazelcast_MGT_Enable=true\
#    Hazalcast_MGT_URL=http://127.0.0.1:8080/hazelcast-mancenter\
#    ELASTIC_APM_SERVICE_NAME=dataservice\
#    ELASTIC_APM_APPLICATION_PACKAGES=com.variflight.aps.dataservice\
#    ELASTIC_APM_SERVER_URLS=http://localhost:8200\
#    DB_Host=10.9.9.100\
#    DB_Port=3306\
#    DB_Name=aps\
#    DB_User=root\
#    DB_Pass=APS@a
EXPOSE 8081
CMD java -jar kotlinTest.jar