export DATABASE_USER='root'
export DATABASE_PASSWORD='root123'
export DATABASE_PORT=3307

export DATABASE_URL="mysql://${DATABASE_USER}:${DATABASE_PASSWORD}@localhost:${DATABASE_PORT}/graphql-example"

docker-compose up -d

npm run generate:typings

npx prisma migrate dev --name init
npx prisma generate

open http://localhost:3000/graphql

nest start --watch