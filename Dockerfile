FROM ubuntu:14.04

WORKDIR  ~/

ADD myScriptForJenkins.sh /

EXPOSE 8080

CMD = ["/bin/bash","~/myScriptForJenkins.sh"]
