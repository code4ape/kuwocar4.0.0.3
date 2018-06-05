.class public Lcn/kuwo/base/db/old/MusicLibDataBase;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcn/kuwo/base/bean/ListType;)I
    .locals 10

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-string v3, "uid = ? and name = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "kwhd_list"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2
    return v0

    :cond_1
    :try_start_4
    const-string v0, "kwhd_list"

    const/4 v1, 0x0

    invoke-static {p1}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Lcn/kuwo/base/bean/ListType;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move v0, v9

    :goto_3
    :try_start_5
    const-string v3, "updateNewLists"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_5
    if-eqz v2, :cond_3

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v0

    move v0, v9

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_3
.end method

.method private static a(Lcn/kuwo/base/bean/ListType;)Landroid/content/ContentValues;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "cloudid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "radioid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "name"

    invoke-virtual {p0}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "showname"

    invoke-virtual {p0}, Lcn/kuwo/base/bean/ListType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "username"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {p0}, Lcn/kuwo/base/bean/ListType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "picture"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "listpath"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "syncflag"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    const/4 v0, 0x0

    const-class v1, Lcn/kuwo/base/db/old/MusicLibDataBase;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    sget-object v2, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    invoke-static {v3}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "musiclib.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6570\u636e\u5e93"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    :try_start_1
    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    div-int/lit8 v0, v0, 0x0

    :cond_2
    sget-object v0, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v2, "MusicLibDataBase"

    const-string v3, "Failed creating database"

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)Lcn/kuwo/base/bean/ListType;
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/ListType;->a:Lcn/kuwo/base/bean/ListType;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcn/kuwo/base/bean/ListType;->f:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(J)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".mp3"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, ".aac"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x7

    invoke-static {v3}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;II)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const-string v3, "listid = ? and rid = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    :try_start_0
    const-string v1, "kwhd_music"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "filepath"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    move-object v0, v8

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v8

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v8

    goto :goto_1

    :cond_3
    move-object v0, v8

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    const/4 v0, 0x5

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_c

    invoke-static {}, Lcn/kuwo/base/db/old/OldMusicTable;->a()Lcn/kuwo/base/db/old/OldMusicTable;

    move-result-object v0

    aget v3, v2, v1

    invoke-virtual {v0, v3}, Lcn/kuwo/base/db/old/OldMusicTable;->a(I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aget v4, v2, v1

    invoke-static {v4}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(I)Lcn/kuwo/base/bean/ListType;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Landroid/database/sqlite/SQLiteDatabase;Lcn/kuwo/base/bean/ListType;)I

    move-result v4

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/db/old/OldMusic;

    new-instance v6, Lcn/kuwo/base/bean/Music;

    invoke-direct {v6}, Lcn/kuwo/base/bean/Music;-><init>()V

    iget v7, v0, Lcn/kuwo/base/db/old/OldMusic;->b:I

    int-to-long v8, v7

    iput-wide v8, v6, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v7, v0, Lcn/kuwo/base/db/old/OldMusic;->c:Ljava/lang/String;

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v7, v0, Lcn/kuwo/base/db/old/OldMusic;->d:Ljava/lang/String;

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    iget v7, v0, Lcn/kuwo/base/db/old/OldMusic;->f:I

    int-to-long v8, v7

    iput-wide v8, v6, Lcn/kuwo/base/bean/Music;->d:J

    iget-object v7, v0, Lcn/kuwo/base/db/old/OldMusic;->e:Ljava/lang/String;

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    iget v7, v0, Lcn/kuwo/base/db/old/OldMusic;->g:I

    iput v7, v6, Lcn/kuwo/base/bean/Music;->f:I

    const/4 v7, 0x0

    iput v7, v6, Lcn/kuwo/base/bean/Music;->l:I

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcn/kuwo/base/bean/Music;->h:Z

    iget-object v7, v0, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    if-eqz v7, :cond_1

    aget v7, v2, v1

    const/16 v8, 0xf

    if-ne v7, v8, :cond_6

    iget-object v7, v0, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-virtual {v7}, Lcn/kuwo/base/db/old/AudioResourceNode;->c()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    :goto_2
    iget-object v7, v0, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-virtual {v7}, Lcn/kuwo/base/db/old/AudioResourceNode;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->o:Ljava/lang/String;

    iget-object v7, v0, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-virtual {v7}, Lcn/kuwo/base/db/old/AudioResourceNode;->b()I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v6, Lcn/kuwo/base/bean/Music;->t:J

    iget-object v0, v0, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-virtual {v0}, Lcn/kuwo/base/db/old/AudioResourceNode;->getSize()I

    move-result v0

    int-to-long v8, v0

    iput-wide v8, v6, Lcn/kuwo/base/bean/Music;->u:J

    const-string v0, "\u6570\u636e\u5e93"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new music cursize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v6, Lcn/kuwo/base/bean/Music;->u:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " totalsize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v6, Lcn/kuwo/base/bean/Music;->t:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-wide v8, v6, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    iget-object v0, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget v0, v2, v1

    const/16 v7, 0xb

    if-eq v0, v7, :cond_2

    aget v0, v2, v1

    const/16 v7, 0xd

    if-ne v0, v7, :cond_4

    :cond_2
    iget-wide v8, v6, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v8, v9}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v0, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-static {p0, v0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Landroid/database/sqlite/SQLiteDatabase;Lcn/kuwo/base/bean/ListType;)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-wide v8, v6, Lcn/kuwo/base/bean/Music;->a:J

    long-to-int v7, v8

    invoke-static {p0, v0, v7}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Landroid/database/sqlite/SQLiteDatabase;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    :cond_4
    aget v0, v2, v1

    const/16 v7, 0xa

    if-eq v0, v7, :cond_5

    aget v0, v2, v1

    const/16 v7, 0xe

    if-ne v0, v7, :cond_7

    :cond_5
    iget-object v0, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v7, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    iget-object v7, v0, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-virtual {v7}, Lcn/kuwo/base/db/old/AudioResourceNode;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    iget-object v0, v6, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    aget v0, v2, v1

    const/16 v5, 0xe

    if-ne v0, v5, :cond_a

    sget-object v0, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-static {p0, v0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Landroid/database/sqlite/SQLiteDatabase;Lcn/kuwo/base/bean/ListType;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-static {p0, v3, v0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Z

    :cond_a
    invoke-static {p0, v3, v4}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Z

    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-static {p0, v0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Landroid/database/sqlite/SQLiteDatabase;Lcn/kuwo/base/bean/ListType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    invoke-static {p0, v0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {}, Lcn/kuwo/base/db/old/OldMusicListTable;->a()Lcn/kuwo/base/db/old/OldMusicListTable;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcn/kuwo/base/db/old/OldMusicListTable;->a(I)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/db/old/OldMusicList;

    new-instance v3, Lcn/kuwo/base/bean/RadioList;

    invoke-direct {v3}, Lcn/kuwo/base/bean/RadioList;-><init>()V

    invoke-virtual {v0}, Lcn/kuwo/base/db/old/OldMusicList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/kuwo/base/bean/RadioList;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuwo/base/db/old/OldMusicList;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/kuwo/base/bean/RadioList;->a(I)V

    invoke-virtual {v0}, Lcn/kuwo/base/db/old/OldMusicList;->a()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcn/kuwo/base/bean/RadioList;->a(Z)V

    invoke-virtual {v0}, Lcn/kuwo/base/db/old/OldMusicList;->getServerId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/kuwo/base/bean/RadioList;->setServerId(I)V

    invoke-virtual {v0}, Lcn/kuwo/base/db/old/OldMusicList;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/kuwo/base/bean/RadioList;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    invoke-static {v1}, Lcn/kuwo/base/db/RadioListTable;->a(Ljava/util/Collection;)Z

    :cond_f
    return-void

    :array_0
    .array-data 4
        0xa
        0xe
        0xb
        0xd
        0xf
    .end array-data
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    const-string v3, "listid = ? and rid > ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    :try_start_0
    const-string v1, "kwhd_music"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v8, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "rid"

    const-string v3, "rid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "filepath"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d"

    invoke-static {v3, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "kwmusiccar/Song"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "bitrate"

    invoke-static {v2}, Lcn/kuwo/base/db/old/MusicLibDataBase;->c(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "file"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v2, "kwhd_downpathmusicfiles"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    :goto_4
    return-void

    :cond_4
    if-eqz v0, :cond_2

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v8, :cond_5

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_6
    throw v0

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v0, v8

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\u6570\u636e\u5e93"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Z
    .locals 8

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    const-string v3, "kwhd_music"

    const/4 v4, 0x0

    int-to-long v6, p2

    invoke-virtual {v0, v6, v7}, Lcn/kuwo/base/bean/Music;->b(J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return v0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "aac"

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 3

    const/4 v0, 0x0

    const-class v1, Lcn/kuwo/base/db/old/MusicLibDataBase;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    sget-object v2, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcn/kuwo/base/db/old/MusicLibDataBase;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcn/kuwo/base/db/old/MusicLibDataBase;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x30

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x140

    :cond_0
    return v0
.end method
