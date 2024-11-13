FROM ubuntu:22.04.01

ENV DEBIAN_FRONTEND=noninteractive

COPY dockerimage.yml /tmp/dockerimage.yml
COPY inventory /tmp/inventory

RUN ansible-playbook -i /tmp/inventory /tmp/dockerimage.yml
CMD ["/bin/bash"]
