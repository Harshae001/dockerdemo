
# Use the official Nginx image as the base
FROM nginx:alpine

# Copy the HTML, CSS, and JavaScript files into the container
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html
COPY script.js /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Default command to start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
