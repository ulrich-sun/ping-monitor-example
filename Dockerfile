FROM alpine:3.9
LABEL maintainer="Silvere"
RUN apk update && \
    apk add --no-cache python2 py-pip fping
ENV PORT=80
COPY ping-exporter.py /opt/ping-exporter.py
CMD ["sh", "-c", "python2 /opt/ping-exporter.py -p $PORT"]
