FROM amazonlinux:2017.03
RUN yum -y install git python36 python36-pip zip && yum -y clean all
RUN python3 -m pip install --upgrade pip && python3 -m pip install boto3
RUN yum -y install gcc g++ gcc-c++ cmake
ADD package.sh /
RUN ["chmod", "+x", "/package.sh"]
ENTRYPOINT ["/package.sh"]
