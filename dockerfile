# Use uma imagem base do Nginx
FROM nginx:alpine

# Meta-informações
LABEL maintainer="seu-email@example.com"
LABEL version="1.0"

# Copie os arquivos estáticos para a pasta do servidor web no container
COPY index.html /usr/share/nginx/html/
COPY favicon.ico /usr/share/nginx/html/
COPY dist/ /usr/share/nginx/html/dist/

# Exponha a porta 80
EXPOSE 80

# Inicie o Nginx quando o container for iniciado
CMD ["nginx", "-g", "daemon off;"]
