FROM  tomcat:9-jdk11
RUN apt update
RUN apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN ls -l 
WORKDIR ./boxfuse-sample-java-war-hello
RUN ls -l 
RUN mvn package boxfuse-sample-java-war-hello
RUN cp ./target/hello-1.0.war /var/lib/tomcat9/webapp


