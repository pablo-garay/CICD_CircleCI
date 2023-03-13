FROM python:2.7.14

RUN mkdir /opt/workspace_pagaray/
RUN mkdir /tmp/cicd-logs
WORKDIR /opt/workspace_pagaray/

COPY requirements.txt .
COPY source/hello_world.py /opt/workspace_pagaray/
COPY source/chat_with_chatgpt.py /tmp/

EXPOSE 80

RUN ["chmod","+x","./hello_world.py"]
RUN ["chmod","+x","/tmp/chat_with_chatgpt.py"]
RUN [ "./hello_world.py" ]
RUN [ "/tmp/chat_with_chatgpt.py | tee /tmp/cicd-logs/chatgpt_response.txt" ]
