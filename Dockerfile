FROM dockersamples/visualizer

COPY ./server.js /app/server.js

#-------------------------------------------------------------------------------
# Labelling
#-------------------------------------------------------------------------------

ARG BUILD_DATE
ARG VCS_REF
ARG VCS_URL
ARG VERSION
ARG DOCKER_IMAGE

LABEL com.roguewave.particulummobile.build-date=$BUILD_DATE \
      com.roguewave.particulummobile.name="$DOCKER_IMAGE" \
      com.roguewave.particulummobile.description="Particulum Mobile Visualizer App - needed for Docker API usage" \
      com.roguewave.particulummobile.vcs-ref=$VCS_REF \
      com.roguewave.particulummobile.vcs-url="$VCS_URL" \
      com.roguewave.particulummobile.version=$VERSION \
      com.roguewave.particulummobile.schema-version="1.0"
