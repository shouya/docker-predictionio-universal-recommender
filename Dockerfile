FROM shouya/predictionio:latest

MAINTAINER Shou Ya <shouya@users.noreply.github.com>

# first engine
ADD UREngine /UREngine
RUN cd /UREngine && pio build --verbose
EXPOSE 8000

# second engine
# ADD UREngine /UREngine
# RUN cd /UREngine && pio build --verbose
# EXPOSE 8000

ADD run.sh /run.sh

ENTRYPOINT /run.sh

