# Use the official Nginx image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy the content of the public folder into the working directory
COPY public/ .

# Expose the default Nginx HTTP port
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
