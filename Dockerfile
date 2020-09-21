FROM alpine

RUN apk --update add git git-lfs less openssh && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

ENTRYPOINT ["/usr/bin/git"]
