FROM redis:5-alpine
# for security mesures we use the user created instaid of root user
USER redis
EXPOSE 6379
CMD ["redis-server", "--bind ecf-back-75k8f.ondigitalocean.app", "--protected-mode no" "--loglevel debug"]