ARG API_REF="ghcr.io/thatpix3l/glint-api:latest"
ARG WEB_REF="ghcr.io/thatpix3l/glint-web:latest"

FROM ${WEB_REF} AS web

FROM ${API_REF}
COPY --from=web /var/www/ /app/public/