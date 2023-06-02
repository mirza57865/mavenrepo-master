FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  http://admin:admin1@3.233.232.204:8081/repository/student-snap/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20230601.073739-4.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
