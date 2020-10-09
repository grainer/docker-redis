FROM redis:5-alpine
# for security mesures we use the user created instaid of root user
USER redis
EXPOSE 6379
CMD ["redis-server"]