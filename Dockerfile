# menggunakan image node dengan tags 14-alpine, juga memastikan dapat berjalan pada lingkungan apple silicon
FROM --platform=linux/amd64 node:14-alpine

# menentukan working directory
WORKDIR /app

# copy selluruh source code ke working directory di atas
COPY . .

# set lingkungan production dan set host database
ENV NODE_ENV=production DB_HOST=item-db

# menginstall library dependent dan build app
RUN npm install --production --unsafe-perm && npm run build

# mengekspos 8080 sebagai port yang digunakan
EXPOSE 8080

# menjalankan npm
CMD ["npm", "start"]