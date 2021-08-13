FROM python:3.9.5-slim-buster
SHELL ["/bin/bash", "-c"]

# Installing libraries
RUN apt update --fix-missing && apt install -y libaio1 wget unzip && apt upgrade -y

# Installing Oracle instant client
WORKDIR /opt/oracle
RUN wget https://download.oracle.com/otn_software/linux/instantclient/instantclient-basiclite-linuxx64.zip && \
  unzip instantclient-basiclite-linuxx64.zip && \
  rm -f instantclient-basiclite-linuxx64.zip && \
  cd /opt/oracle/instantclient* && \
  rm -f *jdbc* *occi* *mysql* *README *jar uidrvci genezi adrci && \
  echo /opt/oracle/instantclient* > /etc/ld.so.conf.d/oracle-instantclient.conf && \
  ldconfig

# Remove packages no longer needed
RUN apt remove wget unzip -y
