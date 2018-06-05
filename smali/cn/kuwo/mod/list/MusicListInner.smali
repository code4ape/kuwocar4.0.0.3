.class public Lcn/kuwo/mod/list/MusicListInner;
.super Lcn/kuwo/base/bean/MusicList;


# static fields
.field private static k:Ljava/lang/String;

.field private static q:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public h:I

.field public i:Ljava/lang/String;

.field public j:Lcn/kuwo/base/util/KwDate;

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/util/Collection;

.field private v:Ljava/util/Collection;

.field private w:Ljava/util/Collection;

.field private x:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "MusicListInner"

    sput-object v0, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcn/kuwo/mod/list/MusicListInner;->q:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcn/kuwo/base/bean/ListType;)V
    .locals 2

    invoke-direct {p0, p1}, Lcn/kuwo/base/bean/MusicList;-><init>(Lcn/kuwo/base/bean/ListType;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    const-string v0, "new"

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->i:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v0}, Lcn/kuwo/base/util/KwDate;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->j:Lcn/kuwo/base/util/KwDate;

    sget-object v0, Lcn/kuwo/mod/list/MusicListInner;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/mod/list/MusicListInner;->p:J

    return-void
.end method

.method public constructor <init>(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/bean/MusicList;-><init>(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    const-string v0, "new"

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->i:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v0}, Lcn/kuwo/base/util/KwDate;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->j:Lcn/kuwo/base/util/KwDate;

    sget-object v0, Lcn/kuwo/mod/list/MusicListInner;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/mod/list/MusicListInner;->p:J

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v8

    :cond_0
    const-string v1, "id = ?"

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "kwhd_music"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcn/kuwo/base/bean/Music;->b(J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v4, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyMusic(error):"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    sget-object v3, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifyMusic(error):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_2
    :try_start_3
    sget-object v0, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    const-string v3, "modifyMusic(error):no id"

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcn/kuwo/mod/list/MusicListInner;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/mod/list/MusicListInner;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/kuwo/mod/list/MusicListInner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/list/MusicListInner;->o:Z

    return p1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :try_start_1
    const-string v2, "kwhd_music"

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/base/bean/Music;->b(J)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    sget-object v4, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveMusic(error): insert "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/kuwo/mod/list/MusicListInner;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/Music;->a(J)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    sget-object v2, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveMusic(error):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method static synthetic b(Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    return v0
.end method

.method static synthetic b(Lcn/kuwo/mod/list/MusicListInner;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/mod/list/MusicListInner;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcn/kuwo/mod/list/MusicListInner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z

    return p1
.end method

.method private c(JLjava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "cloudid"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "name"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "showname"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    const-string v1, "type"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/bean/ListType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "picture"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "listpath"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "syncflag"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "radioid"

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "listsource"

    iget-object v2, p0, Lcn/kuwo/mod/list/MusicListInner;->i:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "createtime"

    iget-object v2, p0, Lcn/kuwo/mod/list/MusicListInner;->j:Lcn/kuwo/base/util/KwDate;

    invoke-virtual {v2}, Lcn/kuwo/base/util/KwDate;->toDateTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "username"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    return-object v0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "kwhd_music"

    const-string v3, "id = ?"

    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1

    sget-object v2, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMusic(error):ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    sget-object v2, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMusic(error):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method static synthetic c(Lcn/kuwo/mod/list/MusicListInner;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/mod/list/MusicListInner;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcn/kuwo/mod/list/MusicListInner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    return p1
.end method

.method static synthetic d(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-object v2, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    iget-object v2, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/Music;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/base/bean/Music;I)I
    .locals 2

    if-nez p1, :cond_0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcn/kuwo/base/bean/MusicList;->a(Lcn/kuwo/base/bean/Music;I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcn/kuwo/mod/list/MusicListInner;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcn/kuwo/mod/list/MusicListInner;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcn/kuwo/base/bean/Music;)V
    .locals 4

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    const-string v1, "MusicInfoBeModify: no music"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->e:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcn/kuwo/mod/list/MusicListInner;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/util/Comparator;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcn/kuwo/mod/list/MusicListInner;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-boolean p1, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(ILjava/util/Collection;)Z
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/base/bean/Music;->a(J)V

    :cond_2
    iget-object v2, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0}, Lcn/kuwo/mod/list/MusicListInner;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(JLjava/lang/String;)Z
    .locals 13

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_5

    :cond_1
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    const-string v1, "save(error):db no open"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v9

    :goto_0
    return v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    const-string v2, "MusicInnerList.saveListInfo"

    invoke-virtual {v1, v2}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-nez v1, :cond_3

    sget-object v1, Lcn/kuwo/base/bean/ListType;->y:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcn/kuwo/base/bean/ListType;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v3, "type = ?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/bean/ListType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "kwhd_list"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/mod/list/MusicListInner;->b(J)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z

    if-eqz v1, :cond_7

    const-string v1, "id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "kwhd_list"

    invoke-direct/range {p0 .. p3}, Lcn/kuwo/mod/list/MusicListInner;->c(JLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    sget-object v1, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveListInfo(update error):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v8

    goto/16 :goto_0

    :cond_6
    :try_start_5
    const-string v3, "uid = ? and type = ?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/bean/ListType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "kwhd_list"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-nez v1, :cond_4

    const-string v3, "uid = ? and name = ?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/kuwo/mod/list/MusicListInner;->a:Ljava/lang/String;

    aput-object v2, v4, v1

    const-string v1, "kwhd_list"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_9
    sget-object v1, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveListInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v9

    goto/16 :goto_0

    :cond_8
    :try_start_a
    const-string v1, "kwhd_list"

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p3}, Lcn/kuwo/mod/list/MusicListInner;->c(JLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/mod/list/MusicListInner;->b(J)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v1

    :try_start_b
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    sget-object v2, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveListInfo(error):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_5
    :try_start_d
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v9

    goto/16 :goto_0

    :cond_9
    :try_start_e
    sget-object v1, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveListInfo(insert error):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    :try_start_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_6
    :try_start_10
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_3
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_6
.end method

.method public a(Ljava/util/Collection;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    move v3, v1

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    iget-object v4, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_2
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_8

    if-ge v1, v3, :cond_5

    iget-object v4, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v4, v1, v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->a(II)V

    :cond_7
    invoke-direct {p0}, Lcn/kuwo/mod/list/MusicListInner;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_8
    move v0, v1

    goto :goto_3
.end method

.method public a(Ljava/util/List;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    invoke-virtual {v0, v6, v7}, Lcn/kuwo/base/bean/Music;->a(J)V

    :cond_2
    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public add(Lcn/kuwo/base/bean/Music;)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {p1, v4, v5}, Lcn/kuwo/base/bean/Music;->a(J)V

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v1, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-gez p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcn/kuwo/mod/list/MusicListInner;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iput p1, p0, Lcn/kuwo/mod/list/MusicListInner;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(J)V
    .locals 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcn/kuwo/mod/list/MusicListInner;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iput-wide p1, p0, Lcn/kuwo/mod/list/MusicListInner;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->g:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcn/kuwo/mod/list/MusicListInner;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(II)Z
    .locals 8

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    add-int v0, p1, p2

    iget-object v2, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    move v2, p1

    :goto_1
    add-int v0, p1, p2

    if-ge v2, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    add-int v2, p1, p2

    invoke-virtual {v0, p1, v2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->a(II)V

    invoke-direct {p0}, Lcn/kuwo/mod/list/MusicListInner;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, v2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(JLjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcn/kuwo/mod/list/MusicListInner;->o:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    if-eqz v1, :cond_0

    :cond_2
    sget-object v1, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save(start):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", username "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listSaveFlag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", musicSaveFlag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modify num "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delete num "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/kuwo/mod/list/MusicListInner$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/kuwo/mod/list/MusicListInner$1;-><init>(Lcn/kuwo/mod/list/MusicListInner;JLjava/lang/String;)V

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->o:Z

    sget-object v2, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-static {v2, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Lcn/kuwo/base/bean/Music;)Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/Collection;)Z
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-object v4, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    move v2, v1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, v2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_7

    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v3, v1, v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    iget-object v2, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->a(II)V

    invoke-direct {p0}, Lcn/kuwo/mod/list/MusicListInner;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-gez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcn/kuwo/mod/list/MusicListInner;->t:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcn/kuwo/mod/list/MusicListInner;->t:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_1
    :try_start_2
    iput p1, p0, Lcn/kuwo/mod/list/MusicListInner;->t:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcn/kuwo/mod/list/MusicListInner;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->n()Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcn/kuwo/base/bean/Music;)I
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcn/kuwo/base/bean/MusicList;->a(Lcn/kuwo/base/bean/Music;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d(I)Lcn/kuwo/base/bean/Music;
    .locals 6

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v1, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcn/kuwo/mod/list/MusicListInner;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public synthetic f()Lcn/kuwo/base/bean/MusicList;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->n()Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcn/kuwo/base/bean/Music;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public g(Lcn/kuwo/base/bean/Music;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v1, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->v:Ljava/util/Collection;

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/mod/list/MusicListInner;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/mod/list/MusicListInner;->p:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/mod/list/MusicListInner;->l:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/list/MusicListInner;->r:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/list/MusicListInner;->s:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/list/MusicListInner;->t:I

    return v0
.end method

.method public m()J
    .locals 10

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcn/kuwo/mod/list/MusicListInner;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-wide v8, v0, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v1, v8, v4

    if-lez v1, :cond_1

    iget-wide v0, v0, Lcn/kuwo/base/bean/Music;->a:J

    xor-long/2addr v0, v2

    const/4 v2, 0x1

    shr-long v2, v0, v2

    const-wide/32 v8, 0x7fffffff

    and-long/2addr v2, v8

    const-wide/16 v8, 0x1

    and-long/2addr v0, v8

    const/16 v7, 0x1f

    shl-long/2addr v0, v7

    or-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public n()Lcn/kuwo/mod/list/MusicListInner;
    .locals 1

    invoke-super {p0}, Lcn/kuwo/base/bean/MusicList;->f()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    return-object v0
.end method

.method public set(ILcn/kuwo/base/bean/Music;)Lcn/kuwo/base/bean/Music;
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    if-eq v0, p2, :cond_1

    sget-boolean v1, Lcn/kuwo/kwmusiccar/App;->IS_DEBUG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v1, p2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    const-string v2, "set: set exists object"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p2}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    sget-object v1, Lcn/kuwo/mod/list/MusicListInner;->k:Ljava/lang/String;

    const-string v2, "Set: storageid != 0"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcn/kuwo/base/bean/Music;->a(J)V

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/kuwo/mod/list/MusicListInner;->n:Z

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->h()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcn/kuwo/base/bean/Music;->a(J)V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->w:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->u:Ljava/util/Collection;

    invoke-virtual {p2}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcn/kuwo/mod/list/MusicListInner;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setVersion(I)V
    .locals 2

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/kuwo/mod/list/MusicListInner;->s:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput p1, p0, Lcn/kuwo/mod/list/MusicListInner;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/MusicListInner;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner;->x:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
