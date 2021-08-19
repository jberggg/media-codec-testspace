FROM nginx:alpine

ENV VIDEO_URL1 https://ais.zrh.production.srf.mpc/ais/download/representation/b013a0a2-6510-4159-b3de-7effaf7092bb
ENV VIDEO_URL2 https://ais.zrh.production.srf.mpc/ais/download/representation/477e182e-0adf-4cf1-a4b2-2d1782d72e89

ADD index.html /usr/share/nginx/html/
RUN /bin/sh -c 'cd /usr/share/nginx/html/ && wget -c --no-check-certificate $VIDEO_URL1 -O test-video1.mp4 && wget -c --no-check-certificate $VIDEO_URL2 -O test-video2.mp4'