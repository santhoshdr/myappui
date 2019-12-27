FROM node:alpine AS builder

WORKDIR /app

COPY . .

#RUN npm install 
#RUN npm build
#RUN cd /app
#RUN ls -l

FROM nginx:1.13.3-alpine
RUN ls -l
#CMD ["nginx", "-g", "daemon off;"]
COPY  --from=builder  /app/dist/ /usr/share/nginx/html/
