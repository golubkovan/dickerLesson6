FROM  ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install maven -y
RUN apt install git -y
RUN mkdir /tmp/demo
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /boxfuse-sample-java-war-hello
RUN ls -l 
RUN mvn package
RUN ls -l
RUN cp /target/hello-1.0.war /var/lib/tomcat9/webapp
CMD [ "executable" ]
EXPOSE 8080
