FROM debian
MAINTAINER yzinfo yzinfo
ENV LANG C.UTF-8
RUN apt-get update
RUN apt-get install -y ssh
RUN apt-get install -y wget
RUN wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt remove -y wget
RUN apt-get update
RUN apt-get install -y aspnetcore-runtime-3.1
CMD ["/bin/bash"]
