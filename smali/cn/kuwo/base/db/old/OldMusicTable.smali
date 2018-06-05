.class public Lcn/kuwo/base/db/old/OldMusicTable;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcn/kuwo/base/db/old/OldMusicTable;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/db/old/OldMusicTable;

    invoke-direct {v0}, Lcn/kuwo/base/db/old/OldMusicTable;-><init>()V

    sput-object v0, Lcn/kuwo/base/db/old/OldMusicTable;->c:Lcn/kuwo/base/db/old/OldMusicTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MusicTable"

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusicTable;->a:Ljava/lang/String;

    const-string v0, "musictable"

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusicTable;->b:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "CREATE TABLE IF NOT EXISTS musictable (MusicID INTEGER PRIMARY KEY AUTOINCREMENT,ServerID INTEGER, Title VARCHAR,Artist VARCHAR,ArtistID INTEGER,Album VARCHAR,Duration INTEGER, ParentID INTEGER,DownStatus INTEGER,CurSize INTEGER,TotalSize INTEGER,LocalPath VARCHAR,TempPath VARCHAR);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcn/kuwo/base/db/old/OldMusic;
    .locals 4

    new-instance v1, Lcn/kuwo/base/db/old/OldMusic;

    invoke-direct {v1}, Lcn/kuwo/base/db/old/OldMusic;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcn/kuwo/base/db/old/OldMusic;->a:I

    const/4 v0, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/kuwo/base/db/old/OldMusic;->b:I

    const/4 v2, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/base/db/old/OldMusic;->c:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/kuwo/base/db/old/OldMusic;->d:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcn/kuwo/base/db/old/OldMusic;->f:I

    const/4 v0, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/kuwo/base/db/old/OldMusic;->e:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcn/kuwo/base/db/old/OldMusic;->g:I

    const/16 v0, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/kuwo/base/db/old/OldMusic;->r:I

    const/16 v2, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget v3, Lcn/kuwo/base/db/old/OldMusic;->n:I

    if-eq v0, v3, :cond_0

    sget v3, Lcn/kuwo/base/db/old/OldMusic;->o:I

    if-ne v0, v3, :cond_1

    :cond_0
    sget v0, Lcn/kuwo/base/db/old/OldMusic;->l:I

    :cond_1
    iput v0, v1, Lcn/kuwo/base/db/old/OldMusic;->q:I

    new-instance v0, Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-direct {v0}, Lcn/kuwo/base/db/old/AudioResourceNode;-><init>()V

    iput-object v0, v1, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    iget-object v0, v1, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    const/16 v3, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/kuwo/base/db/old/AudioResourceNode;->setSize(I)V

    iget-object v0, v1, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    const/16 v2, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/kuwo/base/db/old/AudioResourceNode;->a(I)V

    iget-object v0, v1, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    const/16 v3, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/base/db/old/AudioResourceNode;->setPath(Ljava/lang/String;)V

    iget-object v0, v1, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/base/db/old/AudioResourceNode;->a(Ljava/lang/String;)V

    const-string v0, "\u6570\u636e\u5e93"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old music cursize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-virtual {v3}, Lcn/kuwo/base/db/old/AudioResourceNode;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalsize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-virtual {v3}, Lcn/kuwo/base/db/old/AudioResourceNode;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    invoke-virtual {v3}, Lcn/kuwo/base/db/old/AudioResourceNode;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized a()Lcn/kuwo/base/db/old/OldMusicTable;
    .locals 2

    const-class v0, Lcn/kuwo/base/db/old/OldMusicTable;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/kuwo/base/db/old/OldMusicTable;->c:Lcn/kuwo/base/db/old/OldMusicTable;
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
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcn/kuwo/base/db/old/MusicLibDataBase;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    const-string v7, "MusicID"

    :try_start_0
    const-string v1, "musictable"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    :try_start_1
    invoke-direct {p0, v2}, Lcn/kuwo/base/db/old/OldMusicTable;->a(Landroid/database/Cursor;)Lcn/kuwo/base/db/old/OldMusic;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_2
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

    invoke-direct {p0, v0}, Lcn/kuwo/base/db/old/OldMusicTable;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
