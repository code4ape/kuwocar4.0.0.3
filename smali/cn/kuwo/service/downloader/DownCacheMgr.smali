.class public final Lcn/kuwo/service/downloader/DownCacheMgr;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Lcn/kuwo/service/downloader/DownCacheMgr;

.field private static e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x7

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/service/downloader/DownCacheMgr;->a:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bitrate"

    aput-object v1, v0, v2

    const-string v1, "file"

    aput-object v1, v0, v3

    sput-object v0, Lcn/kuwo/service/downloader/DownCacheMgr;->b:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "max(bitrate)"

    aput-object v1, v0, v2

    sput-object v0, Lcn/kuwo/service/downloader/DownCacheMgr;->c:[Ljava/lang/String;

    new-instance v0, Lcn/kuwo/service/downloader/DownCacheMgr;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;-><init>()V

    sput-object v0, Lcn/kuwo/service/downloader/DownCacheMgr;->d:Lcn/kuwo/service/downloader/DownCacheMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v2}, Lcn/kuwo/base/util/IOUtils;->readInt(Ljava/io/InputStream;)J

    invoke-static {v2}, Lcn/kuwo/base/util/IOUtils;->readInt(Ljava/io/InputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    long-to-int v1, v4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-ltz v1, :cond_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(JI)Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v9

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    const-string v2, "DownCacheMgr.getDownloadSong"

    invoke-virtual {v1, v2}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "kwhd_downpathmusicfiles"

    sget-object v2, Lcn/kuwo/service/downloader/DownCacheMgr;->b:[Ljava/lang/String;

    const-string v3, "rid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "bitrate desc"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    const-string v0, "file"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;-><init>()V

    iput-object v3, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->a:Ljava/lang/String;

    iput v2, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :goto_1
    move-object v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
.end method

.method public static a(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->delInvalidFileNameStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/KwFileUtils;->delInvalidFileNameStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;-><init>()V

    iput-object v1, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->a:Ljava/lang/String;

    const/16 v1, 0x18

    iput v1, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->b:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;J)Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownType;->d:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne p0, v0, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p0}, Lcn/kuwo/service/downloader/BitrateInfo;->b(Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadProxy$DownType;)I

    move-result v1

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne p0, v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {p2, p3, v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(JI)Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/service/downloader/DownCacheMgr;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".*."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "song"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/kuwo/base/util/KwFileUtils;->getFilesClassic(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v4, v0

    if-nez v4, :cond_4

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_7

    aget-object v5, v0, v2

    sget-object v6, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne p0, v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/kuwo/service/downloader/DownCacheMgr;->l(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v1, :cond_6

    new-instance v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->a:Ljava/lang/String;

    iput v6, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->b:I

    goto :goto_0

    :cond_5
    new-instance v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->l(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->a:Ljava/lang/String;

    iput v1, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->b:I

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move-object v0, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcn/kuwo/service/DownloadProxy$DownType;I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameWithoutSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->b(Ljava/io/File;Lcn/kuwo/service/DownloadProxy$DownType;I)V

    return-object v1
.end method

.method public static a(JLcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/kuwo/service/downloader/DownCacheMgr;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(J)V
    .locals 6

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v1, "kwhd_downpathmusicfiles"

    const-string v2, "rid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(JILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    const-string v2, "DownCacheMgr.saveDownloadSongBitrate"

    invoke-virtual {v1, v2}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "rid"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "bitrate"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "file"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kwhd_downpathmusicfiles"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
.end method

.method public static a(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 0

    sput-object p0, Lcn/kuwo/service/downloader/DownCacheMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    return-void
.end method

.method public static a(Ljava/io/File;Lcn/kuwo/service/DownloadProxy$DownType;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/kuwo/service/downloader/DownCacheMgr;->b(Ljava/io/File;Lcn/kuwo/service/DownloadProxy$DownType;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "song"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcn/kuwo/service/downloader/DownCacheMgr;->k(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, v0}, Lcn/kuwo/base/util/KwFileUtils;->fileMove(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(JI)I
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    const-string v2, "DownCacheMgr.checkDownloadSongBitrate"

    invoke-virtual {v1, v2}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "kwhd_downpathmusicfiles"

    sget-object v2, Lcn/kuwo/service/downloader/DownCacheMgr;->c:[Ljava/lang/String;

    const-string v3, "rid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lt v0, p2, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :goto_1
    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
.end method

.method public static b(Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;J)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p0}, Lcn/kuwo/service/downloader/BitrateInfo;->b(Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadProxy$DownType;)I

    move-result v4

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownType;->d:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne p0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".*."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "dat"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/kuwo/service/downloader/DownCacheMgr;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/kuwo/base/util/KwFileUtils;->getFilesClassic(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcn/kuwo/service/downloader/DownCacheMgr;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".*."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "dat"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/kuwo/base/util/KwFileUtils;->getFilesClassic(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v1, v5

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    array-length v6, v5

    move v3, v0

    move-object v0, v2

    :goto_1
    if-ge v3, v6, :cond_7

    aget-object v1, v5, v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/kuwo/service/downloader/DownCacheMgr;->l(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne p0, v8, :cond_4

    if-lt v7, v4, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v8, 0x18

    if-gt v7, v8, :cond_6

    move-object v0, v1

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_6
    const/16 v8, 0x30

    if-gt v7, v8, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    if-nez v0, :cond_8

    move-object v0, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/io/File;Lcn/kuwo/service/DownloadProxy$DownType;I)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lcn/kuwo/service/DownloadProxy$DownType;->ordinal()I

    move-result v0

    invoke-static {v1, v0}, Lcn/kuwo/base/util/IOUtils;->writeInt(Ljava/io/OutputStream;I)V

    invoke-static {v1, p2}, Lcn/kuwo/base/util/IOUtils;->writeInt(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "dat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcn/kuwo/service/downloader/DownCacheMgr;->k(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-static {p0, p1}, Lcn/kuwo/base/util/KwFileUtils;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/kuwo/service/downloader/DownCacheMgr;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "song"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameWithoutSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameWithoutSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/util/KwFileUtils;->getFilesClassic(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    aget-object v0, v1, v4

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/kuwo/service/downloader/DownCacheMgr;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameWithoutSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Lcn/kuwo/service/DownloadProxy$DownType;
    .locals 6

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-static {p0}, Lcn/kuwo/service/downloader/DownCacheMgr;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v2}, Lcn/kuwo/base/util/IOUtils;->readInt(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {}, Lcn/kuwo/service/DownloadProxy$DownType;->values()[Lcn/kuwo/service/DownloadProxy$DownType;

    move-result-object v3

    aget-object v0, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/downloader/DownCacheMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/DownCacheMgr$1;

    invoke-direct {v2, p0}, Lcn/kuwo/service/downloader/DownCacheMgr$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/downloader/DownCacheMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/DownCacheMgr$2;

    invoke-direct {v2, p0}, Lcn/kuwo/service/downloader/DownCacheMgr$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/kuwo/service/downloader/DownCacheMgr;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
