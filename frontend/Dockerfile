# ビルドステージ
FROM node:20.11.0 AS build
WORKDIR /usr/src/app
COPY my-app/package.json ./
RUN npm install
COPY my-app ./
RUN npm run build

# 実行ステージ
FROM nginx:1.25.3-alpine AS runtime
COPY --from=build /usr/src/app/build /usr/share/nginx/html

ENV REACT_APP_API_URL http://localhost:3000

CMD ["npm", "run", "start"]