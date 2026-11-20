FROM node:20-slim
WORKDIR /app
COPY package.json ./
COPY server.js ./
COPY public ./public
ENV NODE_ENV=production
EXPOSE 3000
USER node
CMD ["node", "server.js"]
