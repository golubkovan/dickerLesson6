FROM  tomcat:9-jdk11
RUN apt update && install maven -y && install git -y && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR ./boxfuse-sample-java-war-hello
RUN mvn package && cp ./target/hello-1.0.war /usr/local/tomcat/webapps

