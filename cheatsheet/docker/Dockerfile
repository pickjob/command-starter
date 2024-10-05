# FROM
#       FROM <image>
#       FROM <image>:<tag>
FROM openjdk:jdk-stretch
# LABEL
#       LABEL <key>=<value> <key>=<value>
# ENV
#       ENV <key>=<value>
# ARG
#       ARG <name>[=<default value>]
ARG JAR_FILE
# SHELL
#       SHELL ["executable", "parameters"]
# RUN
#       RUN apt-get update && apt-get install -y \
#           package-bar \
#           package-baz 
# CMD
#       一个Dockerfile只能最有一条生效
#       CMD [“executable”, “param1”, “param2”…]
# ADD
#       ADD <src> ... <dest>
# COPY
#       COPY <src> ... <dest>
#       COPY requirementstxt /tmp/
COPY ${JAR_FILE} /java/app.jar
# VOLUME
#       VOLUME ["/data"]
# USER
#       USER <user>[:<group>]
# WORKDIR
#       WORKDIR /path/to/workdir
WORKDIR /java
# EXPOSE
#       EXPOSE PORT[/tcp|udp]
EXPOSE 8080
# ENTRYPOINT
#       ENTRYPOINT ["executable", "param1", "param2"]
ENTRYPOINT ["java", "-jar", "/java/app.jar"]
# HEALTHCHECK
#       HEALTHCHECK [OPTIONS] CMD command
#           --interval=DURATION: 30s
#           --timeout=DURATION: 30s
#           --start-period=DURATION: 0s
#           --start-interval=DURATION: 5s
#           --retries=N: 3
# 
#           0: success
#           1: unhealthy
#           2: reserved
#       HEALTHCHECK NONE