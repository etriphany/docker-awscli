FROM        alpine:latest

LABEL       maintainer "etriphany.com"

ENV         OS_PACKAGES "groff less python py-pip"

# OS depencencies
RUN         apk add ${OS_PACKAGES} --update --no-cache && \
            rm -rf /var/cache/apk

# Do not run as root
RUN         addgroup -S user && \
            adduser -S -G user user

# Install
RUN         pip install awscli  && \
            apk del py-pip --purge && \
            rm -rf /var/cache/apk

# Configure
WORKDIR     /home/user/

USER        user

CMD         ["/bin/sh"]
