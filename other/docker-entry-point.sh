#!/bin/sh -ex

npx prisma migrate deploy
mkdir /litefs
sqlite3 /litefs/data/sqlite.db "PRAGMA journal_mode = WAL;"
sqlite3 /litefs/data/cache.db "PRAGMA journal_mode = WAL;"
npm run start
