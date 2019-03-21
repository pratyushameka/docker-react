from node:alpine as builder
Workdir '/app'
copy package.json .
run npm install
copy . .
run npm run build


From nginx
copy --from=builder /app/build /usr/share/nginx/html

