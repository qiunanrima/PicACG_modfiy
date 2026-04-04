--CREATE TABLE DOWNLOAD_EPISODE_OBJECT(COMIC_ID TEXT, TITLE TEXT, ORDER INT, UPDATED_AT INT, STATUS );

                 --String episodeId;
                 --
                 --    String comicId;
                 --
                 --    String title;
                 --
                 --    int order;
                 --
                 --    String updatedAt;
                 --
                 --    /**For notify download status, such as, downloaded, downloading, canceled etc*/
                 --    int status;

alter table DB_COMIC_DETAIL_OBJECT add DOWNLOAD_STATUS INT;
alter table DB_COMIC_DETAIL_OBJECT add DOWNLOADED_AT INT;