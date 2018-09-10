FROM sgrio/java-oracle:jre_8

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME

RUN  curl -L http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-8/v8.5.33/bin/apache-tomcat-8.5.33.tar.gz -o /usr/local/apache-tomcat-8.5.33.tar.gz; tar -zxf /usr/local/apache-tomcat-8.5.33.tar.gz -C /usr/local/; mv /usr/local/apache-tomcat-8.5.33 /usr/local/tomcat ;  rm -f /usr/local/apache-tomcat-8.5.33.tar.gz

EXPOSE 8080
CMD ["catalina.sh", "run"]
