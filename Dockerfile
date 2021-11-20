FROM node:12-alpine
WORKDIR /app
COPY . . 
RUN npm install 
RUN npm run build 

# Stage 2: Serve app with nginx server

# Use official nginx image as the base image
FROM nginx:alpine

# Copy the build output to replace the default nginx contents.
COPY --from=node /app/dist/lavanya /usr/share/nginx/html 

