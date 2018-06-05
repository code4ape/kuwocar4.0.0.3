.class public Lcn/kuwo/base/db/DataBaseManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Lcn/kuwo/base/db/DataBaseManager;

.field private static c:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private d:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "kwmusiccar.db"

    sput-object v0, Lcn/kuwo/base/db/DataBaseManager;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/db/DataBaseManager;->b:Lcn/kuwo/base/db/DataBaseManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/kuwo/base/db/DataBaseManager;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcn/kuwo/base/db/DataBaseManager;->d:Ljava/util/concurrent/locks/Lock;

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/db/DataBaseManager;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/db/DataBaseManager;->d:Ljava/util/concurrent/locks/Lock;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcn/kuwo/base/db/DataBaseManager;
    .locals 2

    const-class v0, Lcn/kuwo/base/db/DataBaseManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/kuwo/base/db/DataBaseManager;->b:Lcn/kuwo/base/db/DataBaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/base/db/DataBaseManager;->b:Lcn/kuwo/base/db/DataBaseManager;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/db/DataBaseManager;

    invoke-direct {v0, p0}, Lcn/kuwo/base/db/DataBaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/kuwo/base/db/DataBaseManager;->b:Lcn/kuwo/base/db/DataBaseManager;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "musiclib.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    const-string v2, "olddb_update"

    invoke-static {v1, v2, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u6570\u636e\u5e93"

    const-string v2, "\u8001\u7248\u672c\u6570\u636e\u5e93\u8fc1\u79fb\u5f00\u59cb"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcn/kuwo/kwmusiccar/App;->IS_DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "musiclib.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwFileUtils;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/base/db/DataBaseManager$1;

    invoke-direct {v2}, Lcn/kuwo/base/db/DataBaseManager$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a()Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcn/kuwo/base/db/DataBaseManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcn/kuwo/base/db/old/MusicLibDataBase;->b()V

    sget-object v0, Lcn/kuwo/base/db/DataBaseManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, ""

    const-string v1, "olddb_update"

    invoke-static {v0, v1, v3, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const-string v0, "\u6570\u636e\u5e93"

    const-string v1, "\u8001\u7248\u672c\u6570\u636e\u5e93\u8fc1\u79fb\u5b8c\u6bd5"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u6570\u636e\u5e93"

    const-string v1, "\u6570\u636e\u5e93\u5347\u7ea7\u5f02\u5e38\u4f1a\u6709\u4e22\u5931\uff01"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    if-ge p1, p2, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/db/DBUpdateMgr;->a()Lcn/kuwo/base/db/DBUpdateMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/kuwo/base/db/DBUpdateMgr;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    invoke-static {}, Lcn/kuwo/base/db/DBUpdateMgr;->a()Lcn/kuwo/base/db/DBUpdateMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/kuwo/base/db/DBUpdateMgr;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/DataBaseManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/DataBaseManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcn/kuwo/base/db/DataBaseManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public d()V
    .locals 1

    :try_start_0
    sget-object v0, Lcn/kuwo/base/db/DataBaseManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/db/DataBaseManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/db/DataBaseManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/db/DataBaseManager;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS [kwhd_list] ([id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, [cloudid] INTEGER NOT NULL, [radioid] INTEGER, [name] TEXT NOT NULL, [showname] TEXT NOT NULL, [uid] INTEGER, [username] TEXT NOT NULL, [type] TEXT NOT NULL, [picture] TEXT NOT NULL, [listpath] TEXT NOT NULL, [version] INTEGER NOT NULL, [syncflag] INTEGER NOT NULL, [listsource] TEXT, [createtime] TEXT)"

    invoke-direct {p0, p1, v0}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS [kwhd_music] ([id]  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, [listid] INTEGER NOT NULL, [rid] INTEGER, [name] TEXT NOT NULL, [artist] TEXT NOT NULL, [artistid] INTEGER, [album] TEXT NOT NULL, [duration] INTEGER, [hot] INTEGER, [source] TEXT NOT NULL, [resource] TEXT NOT NULL, [hasmv] INTEGER, [mvquality] TEXT NOT NULL,[haskalaok] INTEGER, [downsize] INTEGER, [downquality] TEXT NOT NULL, [filepath] TEXT NOT NULL, [fileformat] TEXT NOT NULL, [filesize] INTEGER, [createtime] TEXT)"

    invoke-direct {p0, p1, v0}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX LIST_MUSIC_INDEX ON kwhd_music(listid)"

    invoke-direct {p0, p1, v0}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS [kwhd_downpathmusicfiles] ([id]  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, [rid] INTEGER NOT NULL,[bitrate] INTEGER NOT NULL, [file] TEXT NOT NULL UNIQUE ON CONFLICT REPLACE)"

    invoke-direct {p0, p1, v0}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX BITRATE_TABLE_INDEX ON kwhd_downpathmusicfiles(rid)"

    invoke-direct {p0, p1, v0}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS [kwhd_radio] ([ListID] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, [ListName] TEXT NOT NULL, [ParentID] INTEGER, [Radio] INTEGER, [ServerID] INTEGER, [Picture] TEXT)"

    invoke-direct {p0, p1, v0}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS [mvdown] ([id]  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, [listid] INTEGER NOT NULL DEFAULT (0), [rid] INTEGER, [name] TEXT NOT NULL, [artist] TEXT NOT NULL, [artistid] INTEGER, [album] TEXT NOT NULL, [duration] INTEGER, [hot] INTEGER, [source] TEXT NOT NULL, [resource] TEXT NOT NULL, [hasmv] INTEGER, [mvquality] TEXT NOT NULL,[haskalaok] INTEGER, [downsize] INTEGER, [downquality] TEXT NOT NULL, [filepath] TEXT NOT NULL, [fileformat] TEXT NOT NULL, [filesize] INTEGER, [createtime] TEXT,[mviconurl] \t\t\tTEXT)"

    invoke-direct {p0, p1, v0}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    invoke-virtual {p0, p1}, Lcn/kuwo/base/db/DataBaseManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/base/db/DataBaseManager$2;

    invoke-direct {v2, p0}, Lcn/kuwo/base/db/DataBaseManager$2;-><init>(Lcn/kuwo/base/db/DataBaseManager;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {p1, p2, p3}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
