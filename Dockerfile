FROM ubuntu:latest

WORKDIR  ~/

ADD myScriptForJenkins.sh /

EXPOSE 8080

CMD = ["/bin/bash","~/myScriptForJenkins.sh"]
