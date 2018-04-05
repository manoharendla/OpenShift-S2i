FROM openshift/jenkins
MAINTAINER manoharendla277@gmail.com
EXPOSE 8080



FROM openshift/jenkins-2-centos7
COPY plugins.txt /opt/openshift/configuration/plugins.txt
RUN /usr/local/bin/install-plugins.sh /opt/openshift/configuration/plugins.txt
