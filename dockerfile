# FROM redis:6-alpine
# # for security mesures we use the user created instaid of root user
# USER redis
# # allow remote connection
# EXPOSE 6379
# # copy the config file
# COPY redis.conf /usr/local/etc/redis/redis.conf
# # invoke redis with our custom config file
# CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
# ---- bitnami image
FROM bitnami/redis:latest
# for security mesures we use the user created instaid of root user
USER 1001
# allow remote connection
EXPOSE 6379
ENV REDIS_PASSWORD=testing
# invoke redis 
CMD ["redis-server"]