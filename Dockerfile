# 需要node打包
FROM node:8

# 需要nginx代理
RUN apt-get update  && apt-get install -y nginx

WORKDIR /app

COPY package*.json ./
COPY . /app

# 打包文件
RUN npm install --registry=https://registry.npm.taobao.org && npm run build
#RUN npm run build

# 复制node打包目录
# 复制nginx配置文件
RUN cp -r dist/* /var/www/html/ && cp APP-META/nginx/nginx.conf /etc/nginx/conf.d/

EXPOSE 8081

# 启动nginx
CMD ["nginx","-g","daemon off;"]
