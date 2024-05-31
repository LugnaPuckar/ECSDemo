FROM public.ecr.aws/amazonlinux/amazonlinux:2023
# Using the above FROM due to docker hub rate limiting.
# Can use the below one but risk for rate limiting.
# FROM amazonlinux:2023

RUN dnf update -y
RUN dnf install -y nginx
COPY ./html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
