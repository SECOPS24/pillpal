FROM node:20-slim
# Runtime only needs node; drop npm/npx/corepack to remove bundled vulnerable deps (tar, glob, minimatch, cross-spawn)
RUN rm -rf /usr/local/lib/node_modules/npm /usr/local/lib/node_modules/corepack /usr/local/bin/npm /usr/local/bin/npx /usr/local/bin/corepack
WORKDIR /app
COPY package.json ./
COPY server.js ./
COPY public ./public
ENV NODE_ENV=production
EXPOSE 3000
USER node
CMD ["node", "server.js"]
