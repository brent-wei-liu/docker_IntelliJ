#FROM docker-registry.ops.yahoo.com:4443/java_platform/ylinux6-openjdk:stable-11
FROM docker.ouroath.com:4443/ylinux/ylinux6:6.9.0

MAINTAINER Wei Liu <brentweiliu@verizonmedia.com>

#ENTRYPOINT ["/opt/idea-IU-173.4548.28/bin/idea.sh"]
USER root
ENV IDEA_JDK /home/y/libexec64/jdk64-1.8.0
ENV PATH="/home/y/bin:${PATH}"
RUN yinst i yjava_jdk

#ADD https://download-cf.jetbrains.com/idea/ideaIU-2019.2.tar.gz /opt/idea.tar.gz
#ADD ideaIU-2019.2.tar.gz /opt/
ADD mac_id_rsa /home/brentweiliu/.ssh/mac_id_rsa
ADD mac_id_rsa.pub /home/brentweiliu/.ssh/mac_id_rsa.pub

RUN ls -a /opt/
#RUN tar --extract --verbose --directory /opt --file /opt/idea.tar.gz && rm -rf /opt/idea-IU-192.5728.98/jre64 && rm -f /opt/idea.tar.gz
#RUN rm -rf /opt/idea-IU-192.5728.98/jre64
#USER brentweiliu
