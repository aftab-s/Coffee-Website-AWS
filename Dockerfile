# Use a lightweight web server as the base image
FROM nginx:alpine

# Remove the default NGINX configuration
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML file and images to the container
COPY . /usr/share/nginx/html

# Expose port 80 to allow access to the web server
EXPOSE 8081