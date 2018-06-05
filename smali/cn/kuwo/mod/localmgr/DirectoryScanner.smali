.class public final Lcn/kuwo/mod/localmgr/DirectoryScanner;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/natives/NativeScannerInterface;


# instance fields
.field private a:Lcn/kuwo/mod/localmgr/DirectoryScanFilter;

.field private b:Ljava/util/ArrayList;

.field private volatile c:Z

.field private volatile d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/Set;

.field private j:Ljava/util/concurrent/BlockingQueue;

.field private k:J

.field private l:J

.field private volatile m:Z

.field private volatile n:Z

.field private o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/kuwo/mod/localmgr/DirectoryScanFilter;

    invoke-direct {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanFilter;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a:Lcn/kuwo/mod/localmgr/DirectoryScanFilter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->c:Z

    iput-boolean v2, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h:Ljava/util/ArrayList;

    iput-object v3, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->i:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->j:Ljava/util/concurrent/BlockingQueue;

    iput-wide v4, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->k:J

    iput-wide v4, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->l:J

    iput-boolean v2, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->m:Z

    iput-boolean v2, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->n:Z

    iput-object v3, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcn/kuwo/base/bean/Music;
    .locals 2

    const-class v1, Lcn/kuwo/mod/localmgr/DirectoryScanner;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ScanMusicTag;->scanMusicTag(Ljava/lang/String;)Lcn/kuwo/base/bean/Music;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->l:J

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/localmgr/DirectoryScanner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->d:Z

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->j:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->n:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->l:J

    sub-long/2addr v0, v2

    const-string v2, "DirectoryScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[notifyFinish] total time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a:Lcn/kuwo/mod/localmgr/DirectoryScanFilter;

    invoke-virtual {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanFilter;->a()V

    iput-boolean v5, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->c:Z

    iput-boolean v5, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->d:Z

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->j:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;

    iget-boolean v1, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->d:Z

    iget v2, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->e:I

    iget v3, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->g:I

    iget-object v4, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;->a(ZIILjava/util/ArrayList;)V

    :cond_1
    iput-object v6, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;

    iput-object v6, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->i:Ljava/util/Set;

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    const-string v1, "DirectoryScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notiryProgress] file = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->m:Z

    if-nez v0, :cond_2

    const-string v0, "DirectoryScanner"

    const-string v1, "[notiryProgress] scan not finish"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    :goto_1
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;

    if-eqz v0, :cond_4

    const-string v0, "DirectoryScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notiryProgress] notify files "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mScanedCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;

    iget v4, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->e:I

    iget v5, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->f:I

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v5, v6, v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;->a(IIILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->m:Z

    return v0
.end method

.method static synthetic d(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->i:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcn/kuwo/mod/localmgr/DirectoryScanner;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->g:I

    return v0
.end method

.method static synthetic f(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Lcn/kuwo/mod/localmgr/DirectoryScanFilter;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a:Lcn/kuwo/mod/localmgr/DirectoryScanFilter;

    return-object v0
.end method

.method static synthetic g(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcn/kuwo/mod/localmgr/DirectoryScanner;)I
    .locals 2

    iget v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->f:I

    return v0
.end method

.method static synthetic i(Lcn/kuwo/mod/localmgr/DirectoryScanner;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b()V

    return-void
.end method


# virtual methods
.method public OnScanComplete()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->k:J

    sub-long/2addr v0, v2

    const-string v2, "DirectoryScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnScanComplete] total time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->m:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b(Ljava/lang/String;)V

    return-void
.end method

.method public OnScanProgress(FLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OnScanStart()V
    .locals 2

    const-string v0, "DirectoryScanner"

    const-string v1, "[OnScanStart] "

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->k:J

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;ZLcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;Ljava/util/List;)V
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->c:Z

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->j:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->n:Z

    iput-object p3, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->o:Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->i:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a(Ljava/lang/String;Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v0, v1

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a:Lcn/kuwo/mod/localmgr/DirectoryScanFilter;

    invoke-virtual {v1, p2, v0}, Lcn/kuwo/mod/localmgr/DirectoryScanFilter;->a(ZZ)V

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->i:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v3, "/storage"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/storage"

    invoke-direct {p0, v0, v2}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a(Ljava/lang/String;Ljava/util/Collection;)Z

    move v0, v1

    goto :goto_1

    :cond_3
    const-string v0, "/"

    invoke-direct {p0, v0, v2}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a(Ljava/lang/String;Ljava/util/Collection;)Z

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a()V

    invoke-static {}, Lcn/kuwo/base/natives/NativeScannerManager;->getInstance()Lcn/kuwo/base/natives/NativeScannerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/kuwo/base/natives/NativeScannerManager;->addObserver(Lcn/kuwo/base/natives/NativeScannerInterface;)V

    invoke-static {}, Lcn/kuwo/base/natives/NativeScannerManager;->getInstance()Lcn/kuwo/base/natives/NativeScannerManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a:Lcn/kuwo/mod/localmgr/DirectoryScanFilter;

    iget-object v1, v1, Lcn/kuwo/mod/localmgr/DirectoryScanFilter;->a:Lcn/kuwo/base/natives/NativeScannerFilter;

    invoke-virtual {v0, v2, v1}, Lcn/kuwo/base/natives/NativeScannerManager;->startScan(Ljava/util/List;Lcn/kuwo/base/natives/NativeScannerFilter;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "DirectoryScanner"

    const-string v1, "[DirectoryScanner] call NativeScannerManager::startScan failed!"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;-><init>(Lcn/kuwo/mod/localmgr/DirectoryScanner;Lcn/kuwo/mod/localmgr/DirectoryScanner$1;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public onScanFileFound(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DirectoryScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScanFileFound] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->j:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner;->e:I

    invoke-direct {p0, p1}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DirectoryScanner"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
