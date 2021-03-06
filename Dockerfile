# New file written by Priyanka
FROM alpine:edge	 
MAINTAINER Priyanka George
RUN apk add --no-cache openjdk8
COPY target/shipping.jar /opt/lib/
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/lib/shipping.jar", "shipping"]
EXPOSE 8081
