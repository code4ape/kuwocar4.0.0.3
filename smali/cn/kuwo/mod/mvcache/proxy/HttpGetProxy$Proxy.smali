.class Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

.field private b:Ljava/net/Socket;

.field private c:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;Ljava/net/Socket;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->b:Ljava/net/Socket;

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    iput-object p2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->b:Ljava/net/Socket;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 14

    const/16 v0, 0x400

    new-array v4, v0, [B

    const/16 v0, 0x2000

    new-array v5, v0, [B

    const/4 v3, 0x0

    :try_start_0
    new-instance v6, Lcn/kuwo/mod/mvcache/proxy/HttpParser;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->b(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v1}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->c(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v2}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->d(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v7}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->e(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)I

    move-result v7

    invoke-direct {v6, v0, v1, v2, v7}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v7, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->b:Ljava/net/Socket;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v1}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->f(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;-><init>(Ljava/net/Socket;Ljava/net/SocketAddress;)V

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->b:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v6, v4, v8}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a([BI)[B

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v8}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a([B)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;

    move-result-object v2

    iget-boolean v8, v2, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->a:Z

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v8

    iput-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    iget-object v9, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-virtual {v6, v5, v8}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b([BI)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v8

    invoke-static {v9, v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v0

    iget-wide v0, v0, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->d:J

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v8

    iget-object v8, v8, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->a:[B

    invoke-virtual {v7, v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CacheWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =http socket==Exception======="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v4, v0, v8

    if-eqz v4, :cond_2

    :try_start_1
    iget-wide v8, v2, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->d:J

    cmp-long v4, v0, v8

    if-eqz v4, :cond_2

    invoke-virtual {v2, v0, v1}, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->a(J)V

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-virtual {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->b()Z

    move-result v0

    if-eqz v2, :cond_5

    iget-object v1, v2, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    move v1, v3

    :cond_3
    :goto_2
    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    if-eqz v1, :cond_6

    :try_start_2
    iget-object v4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-virtual {v4, v5, v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a([BI)V

    invoke-virtual {v7, v5, v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a([BI)V

    iget-object v4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v4}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v4

    iget-wide v8, v4, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->c:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v4}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v4

    iget-wide v8, v4, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->c:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v4, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->c:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :try_start_3
    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    iget-wide v8, v3, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->c:J

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    iget-wide v10, v3, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->d:J

    const-wide/32 v12, 0x80000

    sub-long/2addr v10, v12

    cmp-long v3, v8, v10

    if-lez v3, :cond_3

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    const-wide/16 v8, -0x1

    iput-wide v8, v3, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->c:J

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a()V

    goto/16 :goto_1

    :cond_6
    iget-object v4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-virtual {v6, v5, v3}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b([BI)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    iget-object v3, v3, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->a:[B

    invoke-virtual {v7, v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a([B)V

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-virtual {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->e()Ljava/io/File;

    move-result-object v3

    iget-wide v8, v2, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->c:J

    invoke-virtual {v7, v3, v8, v9}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a(Ljava/io/File;J)I

    move-result v3

    if-lez v3, :cond_9

    int-to-long v8, v3

    iget-wide v10, v2, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->c:J

    add-long/2addr v8, v10

    long-to-int v3, v8

    iget-object v4, v2, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    invoke-virtual {v6, v4, v3}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    :try_start_4
    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    :goto_3
    :try_start_5
    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string v8, "CacheWrite"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sent cachefile to mediaplayer,loadcachefile start append!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    iget-object v9, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v9}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v9

    iget-wide v10, v9, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->d:J

    invoke-virtual {v8, v3, v10, v11}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a(IJ)V

    :cond_8
    invoke-virtual {v7, v4}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    iget-object v4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->c:Ljava/net/Socket;

    invoke-virtual {v7, v4, v6}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a(Ljava/net/Socket;Lcn/kuwo/mod/mvcache/proxy/HttpParser;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    iget-object v3, v3, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    iget-object v4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v4}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v4

    iget-object v4, v4, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v8

    iget-object v8, v8, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    array-length v8, v8

    invoke-virtual {v3, v4, v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a([BI)V

    goto/16 :goto_2

    :cond_9
    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    iget-object v3, v3, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v3

    iget-object v3, v3, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    invoke-virtual {v7, v3}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxyUtils;->a([B)V

    const-string v3, "CacheWrite"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " first request server,server sent video data "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v8

    iget-object v8, v8, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "  so create cache File!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    iget-object v4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v4}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v4

    iget-object v4, v4, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v8

    iget-wide v8, v8, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->d:J

    invoke-virtual {v3, v4, v8, v9}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a([BJ)V

    goto/16 :goto_2

    :cond_a
    const-string v3, "CacheWrite"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " first request server,server no video data,so create empty cache File!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    const/4 v4, 0x0

    iget-object v8, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v8}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v8

    iget-wide v8, v8, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->d:J

    invoke-virtual {v3, v4, v8, v9}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a([BJ)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :cond_b
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v0

    iget-wide v0, v0, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v0

    iget-wide v0, v0, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->c:J

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v2}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v2

    iget-wide v2, v2, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-static {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    move-result-object v0

    iget-wide v0, v0, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-virtual {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->d()V

    :goto_4
    invoke-virtual {p0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a()V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-virtual {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->c()V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    invoke-virtual {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->c()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_2
    move-exception v8

    goto/16 :goto_3
.end method
