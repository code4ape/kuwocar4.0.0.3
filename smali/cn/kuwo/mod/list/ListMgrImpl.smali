.class public Lcn/kuwo/mod/list/ListMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/list/IListMgr;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/ArrayList;

.field private static final c:Lcn/kuwo/mod/list/ListMgrImpl;


# instance fields
.field private final d:Lcn/kuwo/mod/list/ListSet;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Lcn/kuwo/base/util/KwTimer;

.field private j:Lcn/kuwo/core/observers/ext/AppObserver;

.field private k:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u6211\u7684\u4e0b\u8f7d"

    aput-object v1, v0, v3

    sput-object v0, Lcn/kuwo/mod/list/ListMgrImpl;->a:[Ljava/lang/String;

    new-instance v0, Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/list/ListMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/mod/list/ListMgrImpl;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v3

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcn/kuwo/mod/list/ListMgrImpl;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/kuwo/mod/list/ListSet;

    invoke-direct {v0}, Lcn/kuwo/mod/list/ListSet;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->f:J

    new-instance v0, Lcn/kuwo/mod/list/ListMgrImpl$20;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/list/ListMgrImpl$20;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->j:Lcn/kuwo/core/observers/ext/AppObserver;

    new-instance v0, Lcn/kuwo/mod/list/ListMgrImpl$21;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/list/ListMgrImpl$21;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->k:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/list/ListMgrImpl;J)J
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcn/kuwo/mod/list/ListMgrImpl;)Lcn/kuwo/mod/list/ListSet;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->e:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a(I)V
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMv(start):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->h:Z

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/list/ListSet;->b(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/list/ListMgrImpl$18;

    invoke-direct {v3, p0}, Lcn/kuwo/mod/list/ListMgrImpl$18;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    new-instance v1, Lcn/kuwo/mod/list/ListMgrImpl$19;

    invoke-direct {v1, p0, p1, v0}, Lcn/kuwo/mod/list/ListMgrImpl$19;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;IZ)V

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcn/kuwo/mod/list/ListMgrImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(I)V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Z)Z

    move-result v0

    return v0
.end method

.method private a(Z)Z
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/ListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    iget-wide v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->f:J

    iget-object v4, p0, Lcn/kuwo/mod/list/ListMgrImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcn/kuwo/mod/list/MusicListInner;->b(JLjava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcn/kuwo/mod/list/ListMgrImpl;)J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->f:J

    return-wide v0
.end method

.method private b(Lcn/kuwo/mod/list/MusicListInner;)V
    .locals 3

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->l()Lcn/kuwo/mod/list/ICloudMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/list/ICloudMgr;->d()Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->a:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_fordelete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->l()Lcn/kuwo/mod/list/ICloudMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/list/ICloudMgr;->d()Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->b:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_fordelete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->h:Z

    return p1
.end method

.method static synthetic c(Lcn/kuwo/mod/list/ListMgrImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    return v0
.end method

.method static synthetic c(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    return p1
.end method

.method private c(Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    const-string v3, "ListMgrImpl.deleteListFromDatabase"

    invoke-virtual {v1, v3}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM kwhd_music WHERE listid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM kwhd_list WHERE id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteListFromDatabase finally "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteListFromDatabase error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    const-string v3, "ListMgrImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteListFromDatabase(error):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    :try_start_6
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteListFromDatabase finally "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_3
    :try_start_8
    const-string v2, "ListMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteListFromDatabase finally "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3
.end method

.method public static f()Lcn/kuwo/mod/list/ListMgrImpl;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/list/ListMgrImpl;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v0, "\\/\"*<>:?&|;,\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_1

    aget-char v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/16 v5, 0x61

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I
    .locals 4

    if-nez p2, :cond_0

    const-string v0, "ListMgrImpl"

    const-string v1, "insertMusic: null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertMusic(start):one music,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;I)I
    .locals 4

    if-eqz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const-string v0, "ListMgrImpl"

    const-string v1, "insertMusic: null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertMusic(start):one music,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0, p3}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;Ljava/util/List;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)I
    .locals 8

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ListMgrImpl"

    const-string v1, "insertMusic(error):empty"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertMusic(start):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v0, "ListMgrImpl"

    const-string v1, "insertMusic(error):list nonexistend"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/ListType;->c()I

    move-result v1

    if-le v0, v1, :cond_5

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/ListMgrImpl$8;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl$8;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertMusic: insertOverflow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, p2}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/base/bean/Music;I)I

    move-result v1

    if-eq v1, v2, :cond_6

    invoke-virtual {v3, v1}, Lcn/kuwo/mod/list/MusicListInner;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Lcn/kuwo/mod/list/MusicListInner;->d(I)Lcn/kuwo/base/bean/Music;

    goto :goto_1

    :cond_7
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Lcn/kuwo/mod/list/MusicListInner;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-object v7, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v0, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_c

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->a()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v3, v0}, Lcn/kuwo/mod/list/MusicListInner;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v7

    if-eq v7, v2, :cond_b

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a
    :goto_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_b
    iget-object v7, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v0, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v3}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v0

    invoke-virtual {v3, v4}, Lcn/kuwo/mod/list/MusicListInner;->a(Ljava/util/List;)Z

    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertMusic(ok):insert num"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",delete num"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v6, Lcn/kuwo/mod/list/ListMgrImpl$9;

    invoke-direct {v6, p0, p1, v5, v4}, Lcn/kuwo/mod/list/ListMgrImpl$9;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v6}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/mod/list/CloudMgrImpl;->c()Lcn/kuwo/mod/list/CloudMgrImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;)V

    const-string v1, "local.all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u53d1\u9001\u5a92\u4f53\u5e93\u5e7f\u64ad"

    const-string v2, "insertMusic no position"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendMediaUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;I)I
    .locals 5

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-gez p3, :cond_2

    :cond_0
    move p3, v1

    :cond_1
    :goto_0
    return p3

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v0

    if-le p3, v0, :cond_4

    :cond_3
    move p3, v1

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move p3, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/bean/ListType;->c()I

    move-result v2

    if-le v0, v2, :cond_6

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/ListMgrImpl$10;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl$10;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertMusic: insertOverflow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, -0x2

    goto :goto_0

    :cond_6
    const-string v0, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertMusic(start):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_8

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v3, v0}, Lcn/kuwo/mod/list/MusicListInner;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-eq v1, v0, :cond_7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_8
    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertMusic(ok):insert num "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p3, v4}, Lcn/kuwo/mod/list/MusicListInner;->a(ILjava/util/Collection;)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/ListMgrImpl$11;

    invoke-direct {v2, p0, p1, v4}, Lcn/kuwo/mod/list/ListMgrImpl$11;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/mod/list/CloudMgrImpl;->c()Lcn/kuwo/mod/list/CloudMgrImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;)V

    const-string v0, "local.all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u53d1\u9001\u5a92\u4f53\u5e93\u5e7f\u64ad"

    const-string v1, "insertMusic with position"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendMediaUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->b(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->a:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    invoke-virtual {p0, p2}, Lcn/kuwo/mod/list/ListMgrImpl;->e(Ljava/lang/String;)Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->a:Lcn/kuwo/base/bean/ListType;

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertList(start):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/base/bean/ListType;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v1, p1}, Lcn/kuwo/mod/list/ListSet;->b(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_2
    new-instance v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-direct {v0, p1, p2}, Lcn/kuwo/mod/list/MusicListInner;-><init>(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/list/ListSet;->add(Lcn/kuwo/mod/list/MusicListInner;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ListMgrImpl"

    const-string v2, "insertList(error):name conflict"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/list/ListMgrImpl$2;

    invoke-direct {v3, p0, p2}, Lcn/kuwo/mod/list/ListMgrImpl$2;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    iget-wide v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->f:J

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcn/kuwo/mod/list/MusicListInner;->a(JLjava/lang/String;)Z

    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertList(ok):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "ListMgrImpl"

    const-string v2, "insertList(error):already exist"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->f()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/base/bean/Music;->a(J)V

    new-instance v3, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v3}, Lcn/kuwo/base/util/KwDate;-><init>()V

    iput-object v3, v0, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->j:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->k:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    const-string v0, "ListMgrImpl"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->a(I)V

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    new-instance v1, Lcn/kuwo/mod/list/ListMgrImpl$1;

    invoke-direct {v1, p0}, Lcn/kuwo/mod/list/ListMgrImpl$1;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;)V

    invoke-direct {v0, v1}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->i:Lcn/kuwo/base/util/KwTimer;

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->i:Lcn/kuwo/base/util/KwTimer;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->l()Lcn/kuwo/mod/list/ICloudMgr;

    return-void
.end method

.method public a(Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 3

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->a:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->e(Ljava/lang/String;)Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->add(Lcn/kuwo/mod/list/MusicListInner;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ListMgrImpl"

    const-string v1, "insertList(error):name conflict"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/ListMgrImpl$3;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl$3;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Lcn/kuwo/mod/list/MusicListInner;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    iget-wide v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->f:J

    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcn/kuwo/mod/list/MusicListInner;->a(JLjava/lang/String;)Z

    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertListinner(ok):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteList(start):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v1, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->b(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Lcn/kuwo/mod/list/MusicListInner;)Z

    invoke-direct {p0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->b(Lcn/kuwo/mod/list/MusicListInner;)V

    const-string v0, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteList(ok):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/list/ListMgrImpl$5;

    invoke-direct {v3, p0, v1}, Lcn/kuwo/mod/list/ListMgrImpl$5;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Lcn/kuwo/mod/list/MusicListInner;)V

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteList(error):list nonexistent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 3

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMusic(start):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v1, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-eqz v1, :cond_4

    add-int v2, p2, p3

    invoke-virtual {v1, p2, v2}, Lcn/kuwo/mod/list/MusicListInner;->a(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p2, p3}, Lcn/kuwo/mod/list/MusicListInner;->b(II)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "ListMgrImpl"

    const-string v3, "deleteMusic(ok)"

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/list/ListMgrImpl$14;

    invoke-direct {v4, p0, p1, v2}, Lcn/kuwo/mod/list/ListMgrImpl$14;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/mod/list/CloudMgrImpl;->c()Lcn/kuwo/mod/list/CloudMgrImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;)V

    const-string v0, "local.all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u53d1\u9001\u5a92\u4f53\u5e93\u5e7f\u64ad"

    const-string v1, "deleteMusic start count"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendMediaUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "ListMgrImpl"

    const-string v2, "deleteMusic(error):remove error"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "ListMgrImpl"

    const-string v2, "deleteMusic(error):list nonexistend"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "ListMgrImpl"

    const-string v2, "changeListName: check error "

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v1, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-eq v2, v3, :cond_4

    :cond_3
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeListName: check error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "ListMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeListName(start):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcn/kuwo/mod/list/ListMgrImpl;->e(Ljava/lang/String;)Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->a:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    if-eq v2, v3, :cond_5

    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeListName(error):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v2, p2}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v2

    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {v1, p2}, Lcn/kuwo/mod/list/MusicListInner;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcn/kuwo/mod/list/MusicListInner;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/mod/list/ListSet;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeListName(ok):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/list/ListMgrImpl$6;

    invoke-direct {v3, p0, p2, p1}, Lcn/kuwo/mod/list/ListMgrImpl$6;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/mod/list/CloudMgrImpl;->c()Lcn/kuwo/mod/list/CloudMgrImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;)V

    iget-wide v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->f:J

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/mod/list/MusicListInner;->a(JLjava/lang/String;)Z

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_1

    const-string v1, "ListMgrImpl"

    const-string v2, "changeListName(error):name exist"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v1, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMusic(start):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",position num"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/list/MusicListInner;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p2}, Lcn/kuwo/mod/list/MusicListInner;->b(Ljava/util/Collection;)Z

    const-string v0, "ListMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMusic(ok):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",delete num"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/list/ListMgrImpl$15;

    invoke-direct {v4, p0, p1, v2}, Lcn/kuwo/mod/list/ListMgrImpl$15;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/mod/list/CloudMgrImpl;->c()Lcn/kuwo/mod/list/CloudMgrImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;)V

    const-string v0, "local.all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u53d1\u9001\u5a92\u4f53\u5e93\u5e7f\u64ad"

    const-string v1, "deleteMusic with position"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendMediaUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Comparator;)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sortMusic(start):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sortMusic(error):nonexistent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/list/MusicListInner;->a(Ljava/util/Comparator;)V

    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortMusic(ok):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/ListMgrImpl$17;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl$17;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertListAutoRename(start):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p2}, Lcn/kuwo/mod/list/ListMgrImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x64

    if-ge v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/list/ListMgrImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "ListMgrImpl"

    const-string v1, "insertListAutoRename(error):"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public b(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->e(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const-string v0, "ListMgrImpl"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->j:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->k:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "\\/\"*<>:?&|;,\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    const-string v2, "\\/\"*<>:?&|;,\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)Z
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShowName(start):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v1, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, p2}, Lcn/kuwo/mod/list/MusicListInner;->c(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/ListMgrImpl$7;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl$7;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "ListMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMusic(start):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",music num"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v2, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/list/MusicListInner;->g(Lcn/kuwo/base/bean/Music;)Z

    :goto_1
    const-string v0, "ListMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMusic(ok):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/list/ListMgrImpl$16;

    invoke-direct {v4, p0, p1, p2}, Lcn/kuwo/mod/list/ListMgrImpl$16;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    sget-object v3, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {v3}, Lcn/kuwo/service/PlayProxy$Status;->ordinal()I

    move-result v3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v4

    invoke-interface {v4}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendPlayerStatusBroadcast(Landroid/content/Context;ILcn/kuwo/base/bean/Music;)V

    invoke-static {}, Lcn/kuwo/mod/list/CloudMgrImpl;->c()Lcn/kuwo/mod/list/CloudMgrImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;)V

    const-string v0, "local.all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u53d1\u9001\u5a92\u4f53\u5e93\u5e7f\u64ad"

    const-string v2, "deleteMusic with musics"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendMediaUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2, p2}, Lcn/kuwo/mod/list/MusicListInner;->a(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public c(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/util/List;)I
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    move v1, v2

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/base/bean/Music;I)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v3, v1}, Lcn/kuwo/mod/list/MusicListInner;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v4}, Lcn/kuwo/mod/list/ListMgrImpl;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    return v0
.end method

.method public c(Lcn/kuwo/base/bean/ListType;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const-string v0, "ListMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteList(start):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->c(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->a(Lcn/kuwo/base/bean/ListType;)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Lcn/kuwo/mod/list/MusicListInner;)Z

    invoke-direct {p0, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->b(Lcn/kuwo/mod/list/MusicListInner;)V

    goto :goto_1

    :cond_2
    const-string v0, "ListMgrImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteList(ok):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v4, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v5, Lcn/kuwo/mod/list/ListMgrImpl$4;

    invoke-direct {v5, p0, v3}, Lcn/kuwo/mod/list/ListMgrImpl$4;-><init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/util/Collection;)V

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public d(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListSet;->d(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->h:Z

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMusic(start):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v1, p1}, Lcn/kuwo/mod/list/ListSet;->c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "ListMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMusic(error):nonexistent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lcn/kuwo/mod/list/IListMgr$NameErrorType;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->b:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "_fordelete"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->c:Lcn/kuwo/mod/list/IListMgr$NameErrorType;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->d:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->d:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->e:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/ListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->e:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    goto :goto_0

    :cond_5
    sget-object v1, Lcn/kuwo/mod/list/ListMgrImpl;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_7

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->e:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->a:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    goto :goto_0
.end method

.method public e()Ljava/util/List;
    .locals 6

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcn/kuwo/mod/list/ListMgrImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/ListType;

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v1}, Lcn/kuwo/mod/list/ListSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v5

    if-ne v5, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcn/kuwo/base/bean/ListType;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v3, 0x2710

    const-wide v4, 0x40c3880000000000L    # 10000.0

    const/4 v0, 0x1

    move v1, v0

    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v1, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/list/ListMgrImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v3, :cond_1

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1
.end method

.method public g()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl;->d:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/ListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
