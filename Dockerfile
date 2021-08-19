FROM nginx:alpine

ENV VIDEO_URL https://ais.zrh.production.srf.mpc/ais/download/representation/b013a0a2-6510-4159-b3de-7effaf7092bb

ADD index.html /usr/share/nginx/html/
RUN /bin/sh -c 'cd /usr/share/nginx/html/ && wget -c --no-check-certificate $VIDEO_URL -O test-video.mp4'