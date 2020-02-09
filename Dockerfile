FROM ubuntu:latest
RUN apt update 
RUN apt upgrade -y
RUN apt install python3 python3-pip -y
RUN pip3 install flask
RUN apt install git -y
RUN git clone https://github.com/psiayn/SIHflaskmodel.git
RUN export FLASK_APP=SIHflaskmodel
EXPOSE 5000
WORKDIR /SIHflaskmodel
CMD ["python3","__init__.py"]
