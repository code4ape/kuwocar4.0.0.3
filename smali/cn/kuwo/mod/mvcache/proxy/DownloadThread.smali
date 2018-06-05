.class public Lcn/kuwo/mod/mvcache/proxy/DownloadThread;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method private b()V
    .locals 13

    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->e:Z

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    iget-wide v4, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->c:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    iget-boolean v3, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_7

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    iput-boolean v8, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->f:Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_4
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    :goto_4
    const/4 v2, 0x1

    :try_start_6
    iput-boolean v2, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->g:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_6
    :goto_6
    iput-boolean v8, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->f:Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :cond_7
    :goto_7
    :try_start_9
    iget-boolean v3, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->e:Z

    if-nez v3, :cond_8

    iget-wide v4, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->c:J

    iget v3, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->d:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_8

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    iget-wide v4, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->c:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->c:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_a
    :goto_9
    iput-boolean v8, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->f:Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_a
    if-eqz v1, :cond_b

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_b
    :goto_b
    if-eqz v2, :cond_c

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_c
    :goto_c
    iput-boolean v8, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->f:Z

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-nez v2, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_d
    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    goto/16 :goto_6

    :catch_8
    move-exception v1

    goto :goto_b

    :catch_9
    move-exception v1

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_a

    :catchall_3
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v0, v1

    goto/16 :goto_4
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-wide v0, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->c:J

    iget v2, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->d:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->f:Z

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/proxy/DownloadThread;->b()V

    return-void
.end method
