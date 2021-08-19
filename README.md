# media-codec-testspace

Testing Ground for "codecs" mime type extension.

Follow the instructions below to create a nginx container that hosts a
html page with an embedded video file. The file is embedded with a simple
mime type declaration and with an extended mime type declaration that
includes de codecs details.

How to setup:

1. Login to SRF VPN
2. Build docker image with `docker build -t media-codecs-testpage .`
3. Run image with `docker run -d -p 8080:80 --network=bridge media-codecs-testpage`
4. You can now access the page from `http://MACHINE-IP:8080` where *MACHINE-IP* is your laptop's IP address in your local network