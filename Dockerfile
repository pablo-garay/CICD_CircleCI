FROM python:2.7.14

RUN mkdir /opt/hello_world/
WORKDIR /opt/hello_world/

COPY requirements.txt .
COPY source/hello_world.py /opt/hello_world/

EXPOSE 80

RUN ["chmod","+x","./hello_world.py"]
RUN [ "./hello_world.py" ]
