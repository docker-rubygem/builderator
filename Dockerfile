FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.3.pre.beta.1

RUN gem install builderator --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["build"]
CMD ["--help"]
