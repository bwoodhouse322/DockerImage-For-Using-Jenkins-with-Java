FROM ubuntu:14.04

WORKDIR  /

ADD myScriptForJenkins.sh /
RUN chmod +x myScriptForJenkins.sh
EXPOSE 8080

CMD = ["/myScriptForJenkins.sh"]
