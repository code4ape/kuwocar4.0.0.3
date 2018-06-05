.class public Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/net/ServerSocket;

.field private f:Ljava/net/SocketAddress;

.field private g:Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

.field private l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

.field private m:Lcn/kuwo/base/bean/Music;


# direct methods
.method static synthetic a(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g:Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    return-object p1
.end method

.method static synthetic a(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->f()V

    return-void
.end method

.method static synthetic b(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a:I

    return v0
.end method

.method static synthetic d(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->c:I

    return v0
.end method

.method static synthetic f(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->f:Ljava/net/SocketAddress;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->e:Ljava/net/ServerSocket;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    invoke-virtual {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a()V

    iput-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    invoke-virtual {v1}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a()V

    :cond_2
    new-instance v1, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    invoke-direct {v1, p0, v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;-><init>(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;Ljava/net/Socket;)V

    iput-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    invoke-virtual {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    invoke-virtual {v0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;->a()V

    iput-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->k:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy$Proxy;

    goto :goto_1
.end method

.method static synthetic g(Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->g:Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->h:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->i:Ljava/lang/String;

    const-string v0, ""

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    if-eq v1, v3, :cond_3

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->f:Ljava/net/SocketAddress;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a:I

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->b:Ljava/lang/String;

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->f:Ljava/net/SocketAddress;

    iput v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a:I

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->i:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(IJ)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->m:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1, p1, p2, p3}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;->a(Lcn/kuwo/base/bean/Music;IJ)V

    :cond_0
    return-void
.end method

.method public a([BI)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->m:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1, p1, p2}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;->a(Lcn/kuwo/base/bean/Music;[BI)V

    :cond_0
    return-void
.end method

.method public a([BJ)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->m:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1, p1, p2, p3}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;->a(Lcn/kuwo/base/bean/Music;[BJ)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->j:Z

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->m:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->m:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;->b(Lcn/kuwo/base/bean/Music;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->m:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;->c(Lcn/kuwo/base/bean/Music;)V

    :cond_0
    return-void
.end method

.method public e()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->l:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->m:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;->d(Lcn/kuwo/base/bean/Music;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
