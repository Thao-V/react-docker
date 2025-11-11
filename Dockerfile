# Build
FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm install && npm run build

# Copy the build to nginx
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=build /app/dist ./

EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
