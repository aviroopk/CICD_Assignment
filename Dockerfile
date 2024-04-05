FROM python:3.11-buster
WORKDIR /
ADD ./data /data
ADD ./train.py /train.py
ADD ./test.py /test.py
ADD ./requirements.txt /requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt && chmod +x /train.py && python3.11 /train.py
CMD chmod +x /test.py && python3.11 test.py


