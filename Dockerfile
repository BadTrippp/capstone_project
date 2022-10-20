FROM nginx

## Step 1:
# Copy source code to working directory
COPY ./html /usr/share/nginx/html

## Step 2:
# Expose port 80
EXPOSE 80
