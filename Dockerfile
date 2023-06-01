FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  http://admin:admin1@44.200.117.80:8081/repository/studentapp-snap/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20230601.070931-3.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
