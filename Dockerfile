FROM debian
MAINTAINER yzinfo yzinfo
apt-get update
apt-get install -y ssh
apt-get install -y wget
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
apt remove -y wget
apt-get update
apt-get install -y aspnetcore-runtime-3.1
CMD ["/bin/bash"]
