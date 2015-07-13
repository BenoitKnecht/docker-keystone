FROM alpine

RUN apk --update add gcc git libffi-dev mariadb-dev musl-dev openssl-dev py-pip python-dev

RUN pip install mysql python-memcached
RUN pip install git+https://github.com/openstack/keystone.git
RUN pip install git+https://github.com/openstack/python-openstackclient.git

EXPOSE 5000 35357

ENTRYPOINT ["keystone-all"]
