# Use an official Nginx image as the base image
FROM nginx:latest

# Copy your HTML files and other static assets to the default Nginx web server directory
COPY ./ /usr/share/nginx/html/

# Expose the default Nginx port (usually 80)
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
