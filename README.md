# hexag

## Prisma + Postgres

1. Instale as dependências:
   ```sh
   bun install
   ```
2. Suba o banco de dados:
   ```sh
   docker-compose up -d postgres
   ```
3. Configure o arquivo `.env` com a string de conexão:
   ```env
   DATABASE_URL="postgresql://postgres:postgres@localhost:5432/hexag"
   ```
4. Crie o schema do Prisma:
   ```sh
   bunx prisma init
   # Edite o schema.prisma conforme necessário
   bunx prisma migrate dev
   ```
5. Gere o client:
   ```sh
   bunx prisma generate
   ```
6. Rode o projeto normalmente:
   ```sh
   bun run index.ts
   ```

This project was created using `bun init` in bun v1.2.17. [Bun](https://bun.sh) is a fast all-in-one JavaScript runtime.
