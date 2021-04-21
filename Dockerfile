FROM ruby:3

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
COPY action.rb /action.rb

ENTRYPOINT ["/entrypoint.sh"]
