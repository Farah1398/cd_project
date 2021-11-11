FROM nginx:1.17.1-alpine
COPY ./dist/cd_project/cd-project /usr/share/nginx/html
EXPOSE 4201 
CMD ["nginx", "-g", "deamon off;"]
