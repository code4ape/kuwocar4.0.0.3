.class public Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;


# instance fields
.field a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

.field b:Lcn/kuwo/base/bean/Music;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/io/File;

.field g:Ljava/io/FileOutputStream;

.field h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

.field i:Z

.field private j:Z

.field private k:Z


# direct methods
.method private a(JJ)I
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    long-to-float v0, p1

    mul-float/2addr v0, v2

    long-to-float v1, p3

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x15

    invoke-static {v3}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwFileUtils;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcn/kuwo/base/bean/Music;IJ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    const-string v0, "CacheWrite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCacheFileToAppend-->old file size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    if-nez v0, :cond_2

    new-instance v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-direct {v0}, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    iput-wide v2, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->a:J

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->d:J

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iput-wide p3, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->e:J

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->c:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;->a(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;J)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcn/kuwo/base/bean/Music;[BI)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->i:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->j:Z

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->d:J

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-wide v4, v4, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->e:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a(JJ)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;->a(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    iput-wide v2, v1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->a:J

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->c:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-interface {v1, v2, v0}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;->a(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;Ljava/lang/Exception;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->i:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcn/kuwo/base/bean/Music;[BJ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b(Lcn/kuwo/base/bean/Music;)V

    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->j:Z

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    const-string v0, "CacheWrite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCacheFile--->firstdata--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    if-nez v0, :cond_4

    new-instance v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-direct {v0}, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    iput-wide v2, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->a:J

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    if-eqz p2, :cond_8

    array-length v0, p2

    int-to-long v0, v0

    :goto_1
    iput-wide v0, v2, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->d:J

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iput-wide p3, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->e:J

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->c:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;->a(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->i:Z

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    if-nez v1, :cond_5

    new-instance v1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-direct {v1}, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;-><init>()V

    iput-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    :cond_5
    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    iput-wide v2, v1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->a:J

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->c:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-interface {v1, v2, v0}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;->a(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;Ljava/lang/Exception;)V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_2
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    const-wide/16 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized a(Lcn/kuwo/base/bean/Music;)Z
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcn/kuwo/base/bean/Music;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->j:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->j:Z

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "CacheWrite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUnfinishCacheFile-->save file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->d:J

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;->b(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcn/kuwo/base/bean/Music;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->j:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->g:Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->j:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->f:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v1, "CacheWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFinishCacheFile-->rename file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->d:J

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->e:J

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->a:Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->h:Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;->b(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized d(Lcn/kuwo/base/bean/Music;)Ljava/io/File;
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->b:Lcn/kuwo/base/bean/Music;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/cache/HttpCacheFilterImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
