# Container image that runs the code
FROM ruby:3

COPY LICENSE README.md /

# Copies your code file from your action repository to the filesystem path `/` of the container

COPY entrypoint.sh /entrypoint.sh
COPY action.rb /action.rb

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
