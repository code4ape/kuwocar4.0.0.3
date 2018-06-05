.class public Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/net/SocketAddress;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/net/SocketAddress;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a:Ljava/net/Socket;

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->c:Ljava/lang/String;

    iput-object p1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a:Ljava/net/Socket;

    iput-object p2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->b:Ljava/net/SocketAddress;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->b:Ljava/net/SocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->b:Ljava/net/SocketAddress;

    check-cast v0, Ljava/net/InetSocketAddress;

    const-string v1, "GET http://%s:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;J)I
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x400

    :try_start_0
    new-array v3, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, p2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x19000

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-lez v2, :cond_2

    :try_start_2
    invoke-virtual {v1, p2, p3}, Ljava/io/FileInputStream;->skip(J)J

    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget-object v4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public a(Ljava/net/Socket;Lcn/kuwo/mod/mvcache/proxy/HttpParser;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x400

    new-array v1, v1, [B

    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p2, v1, v2}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b([BI)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    invoke-virtual {p0, v1}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a([B)V

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/net/Socket;
    .locals 6

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    sget-boolean v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->p:Z

    if-eqz v1, :cond_0

    const-string v1, "MVCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->sentToServer use woProxy ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->q:Ljava/lang/String;

    sget v3, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->r:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    const-string v1, "GET "

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "MVCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sentToServer connect real server send:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-object v0

    :cond_0
    const-string v1, "MVCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->sentToServer direct connect ip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->b:Ljava/net/SocketAddress;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->b:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 1

    array-length v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public a([BI)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
