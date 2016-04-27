FROM stefanlehmann/hybris-base-image:latest
MAINTAINER madespat <mathieu.despature@gmail.com>

ADD . /build
ADD ./entrypoint.sh /entrypoint.sh

# copy the build packages over
COPY hybrisServer*.zip /home/hybris/

ENTRYPOINT ["/entrypoint.sh"]