-- DropForeignKey
ALTER TABLE "UserBookmarks" DROP CONSTRAINT "UserBookmarks_mediaId_fkey";

-- DropForeignKey
ALTER TABLE "UserBookmarks" DROP CONSTRAINT "UserBookmarks_userId_fkey";

-- AddForeignKey
ALTER TABLE "UserBookmarks" ADD CONSTRAINT "UserBookmarks_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserBookmarks" ADD CONSTRAINT "UserBookmarks_mediaId_fkey" FOREIGN KEY ("mediaId") REFERENCES "Media"("id") ON DELETE CASCADE ON UPDATE CASCADE;