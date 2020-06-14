FROM ubuntu:18.04

RUN apt-get update -y &&  DEBIAN_FRONTEND=noninteractive apt-get install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils && apt-get autoclean && apt-get autoremove
RUN apt-get install make
RUN apt-get install -y qemu libvirt-bin ebtables dnsmasq-base
RUN apt-get install -y libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev
RUN apt-get install -y wget && apt-get -y install curl
RUN curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb
RUN apt install ./vagrant_2.2.6_x86_64.deb
RUN gem install nokogiri
RUN vagrant plugin install vagrant-libvirt
RUN apt-get -y install openssh-server


COPY startup.sh ./

ENTRYPOINT ["/startup.sh"]

