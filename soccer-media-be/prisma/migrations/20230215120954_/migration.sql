/*
  Warnings:

  - You are about to alter the column `message` on the `post` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(256)`.
  - You are about to alter the column `email` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(256)`.
  - You are about to alter the column `name` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(256)`.
  - You are about to alter the column `username` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(256)`.

*/
-- AlterTable
ALTER TABLE "post" ADD COLUMN     "parentId" VARCHAR(256),
ADD COLUMN     "shares" INTEGER NOT NULL DEFAULT 0,
ALTER COLUMN "message" SET DEFAULT '',
ALTER COLUMN "message" SET DATA TYPE VARCHAR(256),
ALTER COLUMN "likes" SET DEFAULT 0;

-- AlterTable
ALTER TABLE "user" ALTER COLUMN "email" SET DATA TYPE VARCHAR(256),
ALTER COLUMN "name" SET DEFAULT '',
ALTER COLUMN "name" SET DATA TYPE VARCHAR(256),
ALTER COLUMN "username" SET DEFAULT '',
ALTER COLUMN "username" SET DATA TYPE VARCHAR(256);

-- AddForeignKey
ALTER TABLE "post" ADD CONSTRAINT "post_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "post"("id") ON DELETE SET NULL ON UPDATE CASCADE;
