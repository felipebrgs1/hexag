FROM node:24-slim

WORKDIR /app

# Instala curl e bash
RUN apt-get update && apt-get install -y curl bash && apt-get install -y unzip

# Instala o Bun e adiciona ao PATH
RUN curl -fsSL https://bun.sh/install | bash && \
    export PATH="/root/.bun/bin:$PATH" && \
    bun --version

ENV PATH="/root/.bun/bin:$PATH"

COPY package.json bun.lock ./
RUN bun install

COPY . .

RUN bun run generate

RUN bun run migrate

EXPOSE 3000

CMD ["bun", "run", "start"]