FROM node:alpine

ENV TIME_ZONE Asiz/Shanghai

RUN apk add --no-cache curl zsh git openssh tzdata \
    && echo "${TIME_ZONE}" > /etc/timezone \
    && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
    && rm -rf /var/cache/apk/*

RUN zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

CMD [ "zsh" ]
