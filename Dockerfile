FROM node:12.7-alpine AS build
WORKDIR /usr/app
RUN pwd
COPY . . 
RUN npm install 
RUN npm run build 
RUN ls


# Stage 2: Serve app with nginx server

# Use official nginx image as the base image

FROM nginx:alpine

# Copy the build output to replace the default nginx contents.
RUN pwd 
COPY --from=build  /usr/app/dist/lavanya /usr/share/nginx/html 

