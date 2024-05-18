FROM pudding/docker-app:node20-python3.7-20240518.121106

# FROM node:18.12.1-buster

# RUN apt-get update

RUN apt-get install -y \
     imagemagick
RUN apt-get install -y \
     poppler-utils

# RUN npm link @imgly/background-removal-node@1.4.5
RUN pip install rembg[cli]==2.0.56

COPY ./docker-build/rabbit.jpg /tmp/
RUN rembg i /tmp/rabbit.jpg /tmp/output.png

# COPY package.json /
# RUN npm install

# CMD ["bash"]

# RUN echo "20231112-0002"