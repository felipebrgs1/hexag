FROM oven/bun:canary-alpine

WORKDIR /app


COPY package.json bun.lock ./
RUN bun install

COPY . .

RUN bun run generate

EXPOSE 3000

CMD ["bun", "run", "start"]