export DATABASE_USER=''
export DATABASE_PASSWORD=''

export DATABASE_URL="mysql://${DATABASE_USER}:${DATABASE_PASSWORD}@localhost:3306/graphql-example"

npm run generate:typings

npx prisma migrate dev --name init
npx prisma generate

open http://localhost:3000/graphql

nest start --watch