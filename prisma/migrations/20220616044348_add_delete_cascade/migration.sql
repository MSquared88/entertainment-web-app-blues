-- DropForeignKey
ALTER TABLE "UserBookmarks" DROP CONSTRAINT "UserBookmarks_mediaId_fkey";

-- DropForeignKey
ALTER TABLE "UserBookmarks" DROP CONSTRAINT "UserBookmarks_userId_fkey";

-- AddForeignKey
ALTER TABLE "UserBookmarks" ADD CONSTRAINT "UserBookmarks_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserBookmarks" ADD CONSTRAINT "UserBookmarks_mediaId_fkey" FOREIGN KEY ("mediaId") REFERENCES "Media"("id") ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO "Media"("id","title", "year", "rating", "category", "trendingThumbnail", "isTrending", "smallThumbnail", "mediumThumbnail", "largeThumbnail")
VALUES 
  ('cl4gjesvu0019p0v9lh2m5i6l','Bottom Gear','2021','PG','Movie','/assets/thumbnails/bottom-gear/trending/large.jpg',true,'/assets/thumbnails/bottom-gear/regular/small.jpg','/assets/thumbnails/bottom-gear/regular/medium.jpg','/assets/thumbnails/bottom-gear/regular/large.jpg'),
  ('cl4gjesvu0020p0v9h8jklniz','Beyond Earth','2019','PG','Movie','/assets/thumbnails/beyond-earth/trending/large.jpg',true,'/assets/thumbnails/beyond-earth/regular/small.jpg','/assets/thumbnails/beyond-earth/regular/medium.jpg','/assets/thumbnails/beyond-earth/regular/large.jpg'),
  ('cl4gjesvu0021p0v9rk6qd1pf','1998','2021','18+','Movie','/assets/thumbnails/1998/trending/large.jpg',true,'/assets/thumbnails/1998/regular/small.jpg','/assets/thumbnails/1998/regular/medium.jpg','/assets/thumbnails/1998/regular/large.jpg'),
  ('cl4gjesvu0022p0v9qra8u5l0','Undiscovered Cities','2019','E','TV Series','/assets/thumbnails/undiscovered-cities/trending/large.jpg',true,'/assets/thumbnails/undiscovered-cities/regular/small.jp','/assets/thumbnails/undiscovered-cities/regular/medium.jpg','/assets/thumbnails/undiscovered-cities/regular/large.jpg'),
  ('cl4gjesvv0025p0v91lbie7ol','Autosport the Series', '2016','18+','TV Series','null',false,'/assets/thumbnails/autosport-the-series/regular/small.jpg','/assets/thumbnails/autosport-the-series/regular/medium.jpg','/assets/thumbnails/autosport-the-series/regular/large.jpg'),
  ('cl4gjesvv0026p0v9u9wdxzvb','The Great Lands','2019','E','Movie','null',false,'/assets/thumbnails/the-great-lands/regular/small.jpg','/assets/thumbnails/the-great-lands/regular/medium.jpg','/assets/thumbnails/the-great-lands/regular/large.jpg'),
  ('cl4gjesvv0027p0v925x2omus','Same Answer II','2017','E','Movie','null',false,'/assets/thumbnails/same-answer-2/regular/small.jpg','/assets/thumbnails/same-answer-2/regular/medium.jpg','/assets/thumbnails/same-answer-2/regular/large.jpg'),
  ('cl4gjesvv0032p0v9rxzxmcw9','Below Echo','2016','PG','TV Series','null',false,'/assets/thumbnails/below-echo/regular/small.jpg','/assets/thumbnails/below-echo/regular/medium.jpg','/assets/thumbnails/below-echo/regular/large.jpg'),
  ('cl4gjesvv0033p0v9ga8o7pxn','Earths Untouched','2017','18+','Movie','null',false,'/assets/thumbnails/earths-untouched/regular/small.jpg','/assets/thumbnails/earths-untouched/regular/medium.jpg','/assets/thumbnails/earths-untouched/regular/large.jpg'),
  ('cl4gjesvv0034p0v93qvocfub','Community of Ours','2018','18+','TV Series','null',false,'/assets/thumbnails/community-of-ours/regular/small.jpg','/assets/thumbnails/community-of-ours/regular/medium.jpg','/assets/thumbnails/community-of-ours/regular/large.jpg'),
  ('cl4gjesvv0035p0v9egda6tf0','No Land Beyond','2019','E','Movie','null',false,'/assets/thumbnails/no-land-beyond/regular/small.jpg','/assets/thumbnails/no-land-beyond/regular/medium.jpg','/assets/thumbnails/no-land-beyond/regular/large.jpg'),
  ('cl4gjesvv0036p0v9gdjmgy3f','The Rockies','2015','E','TV Series','null',false,'/assets/thumbnails/the-rockies/regular/small.jpg','/assets/thumbnails/the-rockies/regular/medium.jpg','/assets/thumbnails/the-rockies/regular/large.jpg'),
  ('cl4gjesvv0039p0v9nwer4ttp','Dark Side of the Moon','2018','PG','TV Series','/assets/thumbnails/dark-side-of-the-moon/trending/large.jpg',true,'/assets/thumbnails/dark-side-of-the-moon/regular/small.jpg','/assets/thumbnails/dark-side-of-the-moon/regular/medium.jpg','/assets/thumbnails/dark-side-of-the-moon/regular/large.jpg'),
  ('cl4gjesvv0043p0v91czpq4yc','The Diary','2019','PG','TV Series','null',false,'/assets/thumbnails/the-diary/regular/small.jpg','/assets/thumbnails/the-diary/regular/medium.jpg','/assets/thumbnails/the-diary/regular/large.jpg'),
  ('cl4gjesvv0045p0v9p42039x3','Van Life','2015','PG','Movie','null',false,'/assets/thumbnails/van-life/regular/small.jpg','/assets/thumbnails/van-life/regular/medium.jpg','/assets/thumbnails/van-life/regular/large.jpg'),
  ('cl4gjesvv0048p0v9p3t0t3ou','During the Hunt','2016','PG','TV Series','null',false,'/assets/thumbnails/during-the-hunt/regular/small.jpg','/assets/thumbnails/during-the-hunt/regular/medium.jpg','/assets/thumbnails/during-the-hunt/regular/large.jpg'),
  ('cl4gjesvv0050p0v90jilfhyd','Whispering Hill','2017','E','Movie','null',false,'/assets/thumbnails/whispering-hill/regular/small.jpg','/assets/thumbnails/whispering-hill/regular/medium.jpg','/assets/thumbnails/whispering-hill/regular/large.jpg'),
  ('cl4gjesvv0052p0v95klzk1gy','Off the Track','2017','18+','Movie','null',false,'/assets/thumbnails/off-the-track/regular/small.jpg','/assets/thumbnails/off-the-track/regular/medium.jpg','/assets/thumbnails/off-the-track/regular/large.jpg'),
  ('cl4gjesvv0053p0v9k928nmq6','Relentless','2017','PG','Movie','null',false,'/assets/thumbnails/relentless/regular/small.jpg','/assets/thumbnails/relentless/regular/medium.jpg','/assets/thumbnails/relentless/regular/large.jpg'),
  ('cl4gjesvv0056p0v90gf9ihn5','Production Line','2018','PG','TV Series','null',false,'/assets/thumbnails/production-line/regular/small.jpg','/assets/thumbnails/production-line/regular/medium.jpg','/assets/thumbnails/production-line/regular/large.jpg'),
  ('cl4gjesvv0057p0v9wo34noep','The Heiress','2021','PG','Movie','null',false,'/assets/thumbnails/the-heiress/regular/small.jpg','/assets/thumbnails/the-heiress/regular/medium.jpg','/assets/thumbnails/the-heiress/regular/large.jpg'),
  ('cl4gjesvv0059p0v9kh24fa08','Dogs','2016','E','TV Series','null',false,'/assets/thumbnails/dogs/regular/small.jpg','/assets/thumbnails/dogs/regular/medium.jpg','/assets/thumbnails/dogs/regular/large.jpg'),
  ('cl4gjesvv0061p0v9o71c4ais','Asia in 24 Days','2020','PG','TV Series','null',false,'/assets/thumbnails/asia-in-24-days/regular/small.jpg','/assets/thumbnails/asia-in-24-days/regular/medium.jpg','/assets/thumbnails/asia-in-24-days/regular/large.jpg'),
  ('cl4gjesvv0065p0v9p5sshnf5','Darker','2017','18+','Movie','null',false,'/assets/thumbnails/darker/regular/small.jpg','/assets/thumbnails/darker/regular/medium.jpg','/assets/thumbnails/darker/regular/large.jpg'),
  ('cl4gjesvv0066p0v91lmhoftz','112','2013','PG','TV Series','null',false,'/assets/thumbnails/112/regular/small.jpg','/assets/thumbnails/112/regular/medium.jpg','/assets/thumbnails/112/regular/large.jpg'),
  ('cl4gjesvv0067p0v9l8yz354n','Lone Heart','2017','E','Movie','null',false,'/assets/thumbnails/lone-heart/regular/small.jpg','/assets/thumbnails/lone-heart/regular/medium.jpg','/assets/thumbnails/lone-heart/regular/large.jpg'),
  ('cl4gjesvv0068p0v9os731nga','The Tasty Tour','2016','PG','TV Series','null',false,'/assets/thumbnails/the-tasty-tour/regular/small.jpg','/assets/thumbnails/the-tasty-tour/regular/medium.jpg','/assets/thumbnails/the-tasty-tour/regular/large.jpg'),
  ('cl4gjesvv0069p0v95fyihn5h','Unresolved Cases','2018','18+','TV Series','null',false,'/assets/thumbnails/unresolved-cases/regular/small.jpg','/assets/thumbnails/unresolved-cases/regular/medium.jpg','/assets/thumbnails/unresolved-cases/regular/large.jpg'),
  ('cl4gjesvv0073p0v9ut08lehg','Mission: Saturn','2017','PG','Movie','null',false,'/assets/thumbnails/mission-saturn/regular/small.jpg','/assets/thumbnails/mission-saturn/regular/medium.jpg','/assets/thumbnails/mission-saturn/regular/large.jpg');