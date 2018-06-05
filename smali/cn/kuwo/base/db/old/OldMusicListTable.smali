.class public Lcn/kuwo/base/db/old/OldMusicListTable;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcn/kuwo/base/db/old/OldMusicListTable;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/db/old/OldMusicListTable;

    invoke-direct {v0}, Lcn/kuwo/base/db/old/OldMusicListTable;-><init>()V

    sput-object v0, Lcn/kuwo/base/db/old/OldMusicListTable;->c:Lcn/kuwo/base/db/old/OldMusicListTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MusicListTable"

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusicListTable;->a:Ljava/lang/String;

    const-string v0, "playlisttable"

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusicListTable;->b:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "CREATE TABLE IF NOT EXISTS playlisttable (ListID INTEGER PRIMARY KEY AUTOINCREMENT, ListName VARCHAR,ParentID INTEGER, Radio INTEGER,ServerID INTEGER,Picture VARCHAR);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcn/kuwo/base/db/old/OldMusicListTable;
    .locals 2

    const-class v0, Lcn/kuwo/base/db/old/OldMusicListTable;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/kuwo/base/db/old/OldMusicListTable;->c:Lcn/kuwo/base/db/old/OldMusicListTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/String;)Ljava/util/Collection;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v7, "ListID"

    const-string v1, "playlisttable"

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v8

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    :try_start_0
    new-instance v4, Lcn/kuwo/base/db/old/OldMusicList;

    invoke-direct {v4}, Lcn/kuwo/base/db/old/OldMusicList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/db/old/OldMusicList;->a(I)V

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/db/old/OldMusicList;->setName(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/db/old/OldMusicList;->b(I)V

    const/4 v1, 0x3

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v9

    :goto_2
    invoke-virtual {v4, v1}, Lcn/kuwo/base/db/old/OldMusicList;->a(Z)V

    const/4 v1, 0x4

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/db/old/OldMusicList;->setServerId(I)V

    const/4 v1, 0x5

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/db/old/OldMusicList;->a(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v8

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public a(I)Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParentID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/base/db/old/OldMusicListTable;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
