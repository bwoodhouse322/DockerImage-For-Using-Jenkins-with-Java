FROM ubuntu:latest

WORKDIR  ~/

ADD myScriptForJenkins.sh /

EXPOSE 8080

CMD = ["bash","~/myScriptForJenkins.sh"]
