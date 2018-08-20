FROM ubuntu:14.04

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa -y || exit 0 \
&& apt-get update -y  &&apt-get install -y wget apache2 openjdk-8-jdk maven git

RUN wget http://ftp-chi.osuosl.org/pub/jenkins/war-stable/2.121.3/jenkins.war
EXPOSE 8080

CMD ["java", "-jar", "jenkins.war"]
