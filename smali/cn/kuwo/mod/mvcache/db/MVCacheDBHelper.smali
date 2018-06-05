.class public Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field public static b:J

.field private static d:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:[Ljava/lang/String;


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    invoke-direct {v0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;-><init>()V

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    const-string v0, "mvdown"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    const-string v0, "rid"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->f:Ljava/lang/String;

    const-string v0, "listid"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->g:Ljava/lang/String;

    const-string v0, "name"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->h:Ljava/lang/String;

    const-string v0, "artist"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->i:Ljava/lang/String;

    const-string v0, "artistid"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->j:Ljava/lang/String;

    const-string v0, "album"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->k:Ljava/lang/String;

    const-string v0, "duration"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->l:Ljava/lang/String;

    const-string v0, "hot"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->m:Ljava/lang/String;

    const-string v0, "source"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->n:Ljava/lang/String;

    const-string v0, "resource"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->o:Ljava/lang/String;

    const-string v0, "hasmv"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->p:Ljava/lang/String;

    const-string v0, "mvquality"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->q:Ljava/lang/String;

    const-string v0, "haskalaok"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->r:Ljava/lang/String;

    const-string v0, "downsize"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->s:Ljava/lang/String;

    const-string v0, "downquality"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->t:Ljava/lang/String;

    const-string v0, "filepath"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->u:Ljava/lang/String;

    const-string v0, "fileformat"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->v:Ljava/lang/String;

    const-string v0, "filesize"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->w:Ljava/lang/String;

    const-string v0, "createtime"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->x:Ljava/lang/String;

    const-string v0, "mviconurl"

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->y:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->o:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->p:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->q:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->r:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->s:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->t:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->u:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->v:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->w:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->x:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->y:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->z:[Ljava/lang/String;

    const-wide/16 v0, 0xa

    sput-wide v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public static a()Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    return-object v0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MVCacheDBHelper"

    const-string v1, " game Download Db open Error"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(JLjava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    aput-object p3, v1, v2

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v2

    const-string v3, "DownloadDBMgr.delDownTask"

    invoke-virtual {v2, v3}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    const-string v4, " [rid] = ? and [mvquality] = ?"

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
.end method

.method public a(Lcn/kuwo/base/bean/Music;)J
    .locals 4

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(JLjava/lang/String;)I

    :cond_0
    sget-wide v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b:J

    invoke-virtual {p0, p1, v0, v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(Lcn/kuwo/base/bean/Music;J)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    const-string v2, "MVCacheDBHelper.addDownTask"

    invoke-virtual {v1, v2}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
.end method

.method public a(Lcn/kuwo/base/bean/Music;J)Landroid/content/ContentValues;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcn/kuwo/base/bean/Music;->b(J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "mviconurl"

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 9

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v3, " listid=? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v6, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    const-string v1, "DownloadDBMgr.getDownedsList1"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, " [createtime] desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music;-><init>()V

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/Music;->a(Landroid/database/Cursor;)Z

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->y:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public b(Lcn/kuwo/base/bean/Music;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->y:Ljava/lang/String;

    iget-object v3, p1, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v3

    const-string v4, "DownloadDBMgr.updateDownloadingMusicMvIconUrl"

    invoke-virtual {v3, v4}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    const-string v5, " [rid] = ? "

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
.end method

.method public b(Lcn/kuwo/base/bean/Music;J)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(Lcn/kuwo/base/bean/Music;J)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v3

    const-string v4, "DownloadDBMgr.updateDownloadedInfo"

    invoke-virtual {v3, v4}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    const-string v5, " [rid] = ? "

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
.end method

.method public b()Lcn/kuwo/base/bean/MusicList;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Lcn/kuwo/mod/list/MusicListInner;

    sget-object v0, Lcn/kuwo/base/bean/ListType;->s:Lcn/kuwo/base/bean/ListType;

    invoke-direct {v9, v0}, Lcn/kuwo/mod/list/MusicListInner;-><init>(Lcn/kuwo/base/bean/ListType;)V

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " listid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    const-string v1, "MVCacheDBHelper.loadDownloadingMusics"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, " [createtime] "

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music;-><init>()V

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/Music;->a(Landroid/database/Cursor;)Z

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->y:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcn/kuwo/mod/list/MusicListInner;->f(Lcn/kuwo/base/bean/Music;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :cond_1
    :goto_2
    return-object v9

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public b(JLjava/lang/String;)Z
    .locals 11

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v2, v1, [Ljava/lang/String;

    sget-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->f:Ljava/lang/String;

    aput-object v0, v2, v9

    sget-object v0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->q:Ljava/lang/String;

    aput-object v0, v2, v8

    new-array v4, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    aput-object p3, v4, v8

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    const-string v1, "DownloadDBMgr.hasDownTask"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    const-string v3, " [rid] = ? and [mvquality]= ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    if-lez v1, :cond_1

    move v0, v8

    :goto_0
    move v8, v0

    :cond_0
    :goto_1
    return v8

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :cond_3
    :goto_2
    move v8, v9

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    if-gtz v0, :cond_0

    move v8, v9

    goto :goto_1

    :cond_4
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    if-gtz v0, :cond_0

    move v8, v9

    goto :goto_1

    :cond_5
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
.end method

.method public c(Lcn/kuwo/base/bean/Music;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v4, p1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    sget-wide v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a:J

    invoke-virtual {p0, p1, v2, v3}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(Lcn/kuwo/base/bean/Music;J)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v3

    const-string v4, "DownloadDBMgr.addDownloadingMusic"

    invoke-virtual {v3, v4}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
.end method

.method public c()Lcn/kuwo/base/bean/MusicList;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Lcn/kuwo/mod/list/MusicListInner;

    sget-object v0, Lcn/kuwo/base/bean/ListType;->s:Lcn/kuwo/base/bean/ListType;

    invoke-direct {v9, v0}, Lcn/kuwo/mod/list/MusicListInner;-><init>(Lcn/kuwo/base/bean/ListType;)V

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v3, " listid=? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v6, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    const-string v1, "MVCacheDBHelper.loadDownloadedMusics"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->e:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, " [createtime] desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music;-><init>()V

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/Music;->a(Landroid/database/Cursor;)Z

    sget-object v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->y:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcn/kuwo/mod/list/MusicListInner;->f(Lcn/kuwo/base/bean/Music;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :cond_1
    :goto_2
    return-object v9

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method
