FROM node:10-slim

LABEL repository="https://github.com/Meshredded/circleci-vsce"
LABEL homepage="https://github.com/Meshredded/circleci-vsce"
LABEL maintainer="Akram MECHERI <mecheri.akram@gmail.com>"

RUN npm i -g vsce

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]