FROM 	 debian 

ADD https://s3.amazonaws.com/bizmodeller/MyMediaForAlexa/Release+1.3.82.0/mymedia_1.3.82.0-1_amd64.deb /usr/local/bin

RUN apt-get update && apt-get install -y \
    ffmpeg \
	/usr/local/bin/mymedia_1.3.82.0-1_amd64.deb

EXPOSE 52051 52050

ENTRYPOINT ["/opt/mymedia/MyMediaForAlexa"]
