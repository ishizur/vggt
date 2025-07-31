FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-runtime
# タイムゾーンを設定
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update && apt-get install -y python3-pip git libopencv-dev

WORKDIR /app
COPY ./requirements.txt /app
RUN python3 -m pip install -r requirements.txt
COPY ./requirements_demo.txt /app
RUN python3 -m pip install -r requirements_demo.txt

ENV GRADIO_SERVER_PORT=7860
ENV GRADIO_SERVER_NAME="0.0.0.0"
EXPOSE 7860
