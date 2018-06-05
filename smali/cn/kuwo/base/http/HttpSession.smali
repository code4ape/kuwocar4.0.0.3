.class public Lcn/kuwo/base/http/HttpSession;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# static fields
.field static a:Ljava/lang/String;

.field static b:J

.field static final c:Ljava/util/concurrent/atomic/AtomicLong;

.field static d:Ljava/net/Proxy;

.field public static e:I


# instance fields
.field private A:Z

.field f:Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;

.field g:Ljava/lang/String;

.field h:Ljava/util/Map;

.field i:Z

.field j:[B

.field k:Ljava/lang/String;

.field l:I

.field m:J

.field n:Z

.field o:Ljava/net/Proxy;

.field volatile p:Z

.field volatile q:Z

.field r:I

.field s:J

.field t:Ljava/net/HttpURLConnection;

.field u:Ljava/io/InputStream;

.field v:Ljava/io/OutputStream;

.field w:Ljava/io/ByteArrayOutputStream;

.field x:Lcn/kuwo/base/http/IHttpNotify;

.field y:Landroid/os/Handler;

.field z:Lcn/kuwo/base/http/HttpResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HttpSession"

    sput-object v0, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcn/kuwo/base/http/HttpSession;->b:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcn/kuwo/base/http/HttpSession;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    sput-object v0, Lcn/kuwo/base/http/HttpSession;->d:Ljava/net/Proxy;

    const/16 v0, 0x2000

    sput v0, Lcn/kuwo/base/http/HttpSession;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    new-instance v0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;

    invoke-direct {v0, p0}, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;-><init>(Lcn/kuwo/base/http/HttpSession;)V

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->f:Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->A:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->h:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->n:Z

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->y:Landroid/os/Handler;

    new-instance v0, Lcn/kuwo/base/http/HttpResult;

    invoke-direct {v0}, Lcn/kuwo/base/http/HttpResult;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/base/http/HttpSession;->s:J

    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/http/HttpSession;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/http/HttpSession;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v0}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, p0, v1}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcn/kuwo/base/http/HttpResult;)Z
    .locals 2

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcn/kuwo/base/http/HttpResult;->b:I

    if-ltz v0, :cond_2

    sget-object v0, Lcn/kuwo/base/http/HttpSession;->d:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/http/HttpSession;->d:Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->o:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->o:Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)Lcn/kuwo/base/http/HttpResult;
    .locals 6

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/kuwo/base/http/HttpSession;->i:Z

    iput-object p2, p0, Lcn/kuwo/base/http/HttpSession;->j:[B

    iput-object p1, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->e()Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/base/http/HttpSession;->a(Lcn/kuwo/base/http/HttpResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/kuwo/base/http/KWTCPProxy;->a()Lcn/kuwo/base/http/KWTCPProxy;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcn/kuwo/base/http/KWTCPProxy;->a(Ljava/lang/String;[B)Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;->a:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;->b:[B

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    const/16 v1, 0xc8

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iput-boolean v3, v0, Lcn/kuwo/base/http/HttpResult;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/base/http/HttpResult;->f:J

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcn/kuwo/base/http/HttpResult;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(II[BI)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->x:Lcn/kuwo/base/http/IHttpNotify;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->y:Landroid/os/Handler;

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->f:Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->a(II[BI)Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/http/HttpSession;->m:J

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->y:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcn/kuwo/base/http/HttpSession;->y:Landroid/os/Handler;

    goto :goto_0
.end method

.method a(Lcn/kuwo/base/http/HttpSession$notifyType;I)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->x:Lcn/kuwo/base/http/IHttpNotify;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->y:Landroid/os/Handler;

    new-instance v2, Lcn/kuwo/base/http/HttpSession$1;

    invoke-direct {v2, p0, p1, p2}, Lcn/kuwo/base/http/HttpSession$1;-><init>(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpSession$notifyType;I)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/http/HttpSession;->n:Z

    return-void
.end method

.method public declared-synchronized a()Z
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->x:Lcn/kuwo/base/http/IHttpNotify;

    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-object p3, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    iput p2, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    invoke-virtual {p0, p1, p4}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z
    .locals 2

    iput-object p1, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/base/http/HttpSession;->x:Lcn/kuwo/base/http/IHttpNotify;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x1

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-static {v0, p0}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;[B)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    sget-object v1, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    const-string v2, "asyncPost(error):null"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iput-boolean v1, p0, Lcn/kuwo/base/http/HttpSession;->i:Z

    iput-object p3, p0, Lcn/kuwo/base/http/HttpSession;->j:[B

    iput-object p1, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/base/http/HttpSession;->x:Lcn/kuwo/base/http/IHttpNotify;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->b()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v2, -0x1

    iput v2, v1, Lcn/kuwo/base/http/HttpResult;->b:I

    sget-object v1, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    const-string v2, "asyncPost(error):requestCheck error"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-static {v0, p0}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0
.end method

.method a([BII)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    const-string v4, "rw"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, p3

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method b()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcn/kuwo/base/http/HttpSession;->e:I

    if-gt v2, v3, :cond_0

    iget-boolean v2, p0, Lcn/kuwo/base/http/HttpSession;->i:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->j:[B

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/kuwo/base/http/HttpSession;->s:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcn/kuwo/base/http/HttpSession;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/kuwo/base/http/HttpSession;->r:I

    iget v2, p0, Lcn/kuwo/base/http/HttpSession;->r:I

    if-ne v0, v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    sget-object v1, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    const-string v2, "download(error):url filePath null"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v3, Lcn/kuwo/base/http/HttpResult;->c:[B

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v3, Lcn/kuwo/base/http/HttpResult;->c:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_1
    :try_start_3
    sget-object v2, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download(error): FileNotFoundException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_2
    sget-object v1, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download(error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_3
    :try_start_5
    sget-object v3, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download(error): IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0, p1}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method c()Z
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HTTP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v2

    move-object v5, v1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->o:Ljava/net/Proxy;

    if-nez v0, :cond_2

    sget-object v0, Lcn/kuwo/base/http/HttpSession;->d:Ljava/net/Proxy;

    :goto_1
    invoke-virtual {v5, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->h:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    :cond_1
    move v0, v2

    :goto_3
    return v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "url error"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x7

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    move v0, v2

    goto :goto_3

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->o:Ljava/net/Proxy;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "connect error"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    move v0, v2

    goto :goto_3

    :cond_3
    iget-wide v0, p0, Lcn/kuwo/base/http/HttpSession;->m:J

    long-to-int v0, v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcn/kuwo/base/http/HttpSession;->m:J

    long-to-int v0, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    iget-wide v6, p0, Lcn/kuwo/base/http/HttpSession;->m:J

    long-to-int v1, v6

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :try_start_5
    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->i:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->j:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->v:Ljava/io/OutputStream;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->v:Ljava/io/OutputStream;

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->j:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->v:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :goto_4
    move v0, v3

    goto :goto_3

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "connect timeout"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v0, v2

    goto :goto_3

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v8, v1, Lcn/kuwo/base/http/HttpResult;->e:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcn/kuwo/base/http/HttpResult;->m:J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catch_3
    move-exception v0

    if-nez v4, :cond_a

    :try_start_8
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v1, "DNSLookup"

    const-string v6, "connectAndSendData"

    invoke-static {v1, v6}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/http/DNSLookup;->a()Lcn/kuwo/base/http/DNSLookup;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcn/kuwo/base/http/DNSLookup;->a(Ljava/lang/String;)Lcn/kuwo/base/http/DNSLookup$IPInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v6, v1, Lcn/kuwo/base/http/DNSLookup$IPInfo;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v1, v1, Lcn/kuwo/base/http/DNSLookup$IPInfo;->a:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_8

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "?"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_9
    :try_start_9
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/kuwo/base/http/HttpSession;->h:Ljava/util/Map;

    const-string v6, "Host"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move v4, v3

    move-object v5, v1

    goto/16 :goto_0

    :catch_4
    move-exception v1

    :try_start_a
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_a
    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move v0, v2

    goto/16 :goto_3
.end method

.method public call()V
    .locals 12

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/4 v10, -0x1

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuwo/base/http/HttpResult;->e:J

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/base/http/HttpResult;->k:Ljava/lang/String;

    iget-boolean v1, p0, Lcn/kuwo/base/http/HttpSession;->n:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcn/kuwo/base/http/HttpSession;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sget-wide v4, Lcn/kuwo/base/http/HttpSession;->b:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "flow limit"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x4

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "file error"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x6

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x3

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->c()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->g()I

    move-result v1

    const/4 v2, -0x2

    if-ne v2, v1, :cond_4

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto :goto_0

    :cond_4
    if-ne v1, v10, :cond_5

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_5
    sget-object v2, Lcn/kuwo/base/http/HttpSession$notifyType;->a:Lcn/kuwo/base/http/HttpSession$notifyType;

    iget v3, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/base/http/HttpSession;->a(Lcn/kuwo/base/http/HttpSession$notifyType;I)V

    iput-boolean v11, p0, Lcn/kuwo/base/http/HttpSession;->A:Z

    :cond_6
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcn/kuwo/base/http/HttpSession;->u:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcn/kuwo/base/http/HttpSession;->w:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    :try_start_1
    new-array v2, v2, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession;->w:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "read data failed"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->h()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :cond_8
    if-nez v3, :cond_d

    :cond_9
    :goto_1
    iget-boolean v3, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-nez v3, :cond_13

    :try_start_2
    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession;->u:Ljava/io/InputStream;

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    if-gez v3, :cond_c

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    if-eqz v2, :cond_13

    if-eq v0, v1, :cond_b

    if-eq v1, v10, :cond_b

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "ContentLength error"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v0, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    const-string v1, "call(): read error"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "read error"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    :cond_a
    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :cond_b
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    add-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "io error (file lenght error) "

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->h()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :cond_d
    iget-boolean v4, p0, Lcn/kuwo/base/http/HttpSession;->n:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcn/kuwo/base/http/HttpSession;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v5, Lcn/kuwo/base/http/HttpSession;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_e
    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    if-nez v4, :cond_f

    :try_start_3
    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->w:Ljava/io/ByteArrayOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    :cond_f
    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    if-eqz v4, :cond_10

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    add-int/2addr v5, v0

    int-to-long v6, v5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_10

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "io error (check file length error)"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "out of memory error"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :cond_10
    iget v4, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4}, Lcn/kuwo/base/http/HttpSession;->a([BII)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "write file error"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :cond_11
    add-int/2addr v0, v3

    if-ne v1, v10, :cond_12

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    if-nez v4, :cond_9

    :cond_12
    iget v4, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    add-int/2addr v4, v1

    iget v5, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v4, v5, v2, v3}, Lcn/kuwo/base/http/HttpSession;->a(II[BI)V

    goto/16 :goto_1

    :cond_13
    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v4, Lcn/kuwo/base/http/HttpResult;->e:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v4, Lcn/kuwo/base/http/HttpResult;->m:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/base/http/HttpResult;->n:J

    :try_start_4
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/base/http/HttpResult;->c:[B
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_5

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iput-boolean v11, v0, Lcn/kuwo/base/http/HttpResult;->a:Z

    if-ne v1, v10, :cond_15

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    if-eqz v0, :cond_15

    sget-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->a:Lcn/kuwo/base/http/HttpSession$notifyType;

    iget v2, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/http/HttpSession;->a(Lcn/kuwo/base/http/HttpSession$notifyType;I)V

    iput-boolean v11, p0, Lcn/kuwo/base/http/HttpSession;->A:Z

    :cond_15
    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->i()V

    goto/16 :goto_0
.end method

.method declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->w:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->v:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->v:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->u:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->u:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_0
.end method

.method e()Lcn/kuwo/base/http/HttpResult;
    .locals 9

    const/4 v4, -0x3

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x1

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->k:Ljava/lang/String;

    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iput v4, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->n:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcn/kuwo/base/http/HttpSession;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sget-wide v2, Lcn/kuwo/base/http/HttpSession;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "flow limit"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x4

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iput v4, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget v0, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget v0, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget v0, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_a

    :cond_5
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->u:Ljava/io/InputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession;->w:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    iget-wide v2, p0, Lcn/kuwo/base/http/HttpSession;->m:J

    long-to-int v2, v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    iget-wide v4, p0, Lcn/kuwo/base/http/HttpSession;->m:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_6
    :goto_1
    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->u:Ljava/io/InputStream;

    const/16 v3, 0x1000

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_8

    iget-boolean v3, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcn/kuwo/base/http/HttpSession;->n:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcn/kuwo/base/http/HttpSession;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v4, Lcn/kuwo/base/http/HttpSession;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x5

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "write data failed"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v4, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/base/http/HttpResult;->f:J

    iput-boolean v8, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x5

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v4, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/base/http/HttpResult;->f:J

    iput-boolean v8, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    goto/16 :goto_0

    :cond_8
    :try_start_6
    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x3

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v4, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/base/http/HttpResult;->f:J

    iput-boolean v8, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    goto/16 :goto_0

    :cond_9
    :try_start_7
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v1, Lcn/kuwo/base/http/HttpResult;->e:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v1, Lcn/kuwo/base/http/HttpResult;->m:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/base/http/HttpResult;->n:J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->c:[B
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/base/http/HttpResult;->a:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v1, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/base/http/HttpResult;->f:J

    iput-boolean v8, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    :goto_2
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_a
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/4 v1, -0x5

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v4, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/base/http/HttpResult;->f:J

    iput-boolean v8, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    goto/16 :goto_0

    :cond_a
    :try_start_b
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "resqonse code error "

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v4, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/base/http/HttpResult;->f:J

    iput-boolean v8, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_c
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/16 v1, 0x258

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "read data failed"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v1, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/base/http/HttpResult;->f:J

    iput-boolean v8, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_d
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/16 v1, 0x259

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v1, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/base/http/HttpResult;->f:J

    iput-boolean v8, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v4, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/base/http/HttpResult;->f:J

    iput-boolean v8, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    throw v0
.end method

.method f()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v6, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    const-string v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v3, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    iget v1, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    if-lez v1, :cond_3

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/base/http/HttpSession;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/base/http/HttpSession;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFileProcess: createNewFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_4
    sget-object v3, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadFileProcess: RandomAccessFile setLength "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_4
    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_6
    throw v0

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v2, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_a

    sget-object v2, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    const-string v4, "downloadFileProcess:f.length() < startPosition"

    invoke-static {v2, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession;->k:Ljava/lang/String;

    const-string v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-wide/16 v4, 0x0

    :try_start_8
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_7
    :goto_7
    iput v1, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :goto_8
    :try_start_a
    sget-object v2, Lcn/kuwo/base/http/HttpSession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadFileProcess: RandomAccessFile setLength "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_8
    :goto_9
    move v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v3, :cond_9

    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_9
    :goto_b
    throw v0

    :cond_a
    iget v1, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    if-lez v1, :cond_3

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuwo/base/http/HttpSession;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/base/http/HttpSession;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v1

    goto/16 :goto_6

    :catch_6
    move-exception v2

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v1

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v3, v2

    goto :goto_8

    :catchall_3
    move-exception v0

    goto/16 :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_3
.end method

.method g()I
    .locals 5

    const/4 v1, -0x2

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v2, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/base/http/HttpResult;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget v0, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget v0, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget v0, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget v3, v3, Lcn/kuwo/base/http/HttpResult;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->h:Ljava/util/Map;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const-string v2, "identity"

    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession;->h:Ljava/util/Map;

    const-string v4, "Accept-Encoding"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v2, "get response code exception"

    iput-object v2, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v2, "unknown"

    iput-object v2, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;
    .locals 6

    iput-object p1, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    const-string v0, "HttpSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->e()Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/base/http/HttpSession;->a(Lcn/kuwo/base/http/HttpResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/kuwo/base/http/KWTCPProxy;->a()Lcn/kuwo/base/http/KWTCPProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcn/kuwo/base/http/KWTCPProxy;->a(Ljava/lang/String;[B)Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;->a:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;->b:[B

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    const/16 v1, 0xc8

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/base/http/HttpResult;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/base/http/HttpResult;->f:J

    :cond_0
    return-object v0
.end method

.method h()Z
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lcn/kuwo/base/http/HttpSession;->m:J

    long-to-int v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->t:Ljava/net/HttpURLConnection;

    iget-wide v2, p0, Lcn/kuwo/base/http/HttpSession;->m:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpSession;->d()V

    iput-boolean v7, p0, Lcn/kuwo/base/http/HttpSession;->q:Z

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v1, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/base/http/HttpResult;->f:J

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->c:Lcn/kuwo/base/http/HttpSession$notifyType;

    invoke-virtual {p0, v0, v6}, Lcn/kuwo/base/http/HttpSession;->a(Lcn/kuwo/base/http/HttpSession$notifyType;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-direct {p0, v0}, Lcn/kuwo/base/http/HttpSession;->a(Lcn/kuwo/base/http/HttpResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->A:Z

    if-nez v0, :cond_2

    sget-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->a:Lcn/kuwo/base/http/HttpSession$notifyType;

    invoke-virtual {p0, v0, v6}, Lcn/kuwo/base/http/HttpSession;->a(Lcn/kuwo/base/http/HttpSession$notifyType;I)V

    :cond_2
    invoke-static {}, Lcn/kuwo/base/http/KWTCPProxy;->a()Lcn/kuwo/base/http/KWTCPProxy;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->g:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession;->j:[B

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/http/KWTCPProxy;->a(Ljava/lang/String;[B)Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-object v0, v0, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;->b:[B

    iput-object v0, v1, Lcn/kuwo/base/http/HttpResult;->c:[B

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const/16 v1, 0xc8

    iput v1, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    const-string v1, ""

    iput-object v1, v0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iput-boolean v7, v0, Lcn/kuwo/base/http/HttpResult;->a:Z

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    iget-wide v4, v1, Lcn/kuwo/base/http/HttpResult;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/base/http/HttpResult;->f:J

    :cond_3
    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->c:Lcn/kuwo/base/http/HttpSession$notifyType;

    invoke-virtual {p0, v0, v6}, Lcn/kuwo/base/http/HttpSession;->a(Lcn/kuwo/base/http/HttpSession$notifyType;I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->b:Lcn/kuwo/base/http/HttpSession$notifyType;

    invoke-virtual {p0, v0, v6}, Lcn/kuwo/base/http/HttpSession;->a(Lcn/kuwo/base/http/HttpSession$notifyType;I)V

    goto :goto_0
.end method
