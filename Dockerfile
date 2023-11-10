FROM amazonlinux:2023
# Alternative if you get an error due to Docker Hub rate limiting:
# FROM public.ecr.aws/amazonlinux/amazonlinux:2023

RUN dnf update -y
RUN dnf install -y nginx
COPY ./html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
