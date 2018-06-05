.class public Lcn/kuwo/base/util/HttpUtils;
.super Ljava/lang/Object;


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final CONNECT_TIMEOUT:I = 0x1f40

.field public static final CONNECT_TRY:I = 0x3

.field public static final CRLF:[B

.field public static final MAX_ROUTE_CONNECTIONS:I = 0x190

.field public static final MAX_TOTAL_CONNECTIONS:I = 0x190

.field public static NEED_HOST_RESOVLING:Z = false

.field public static final READ_TIMEOUT:I = 0x1f40

.field public static SOCKET_CONNECT_TIMEOUT:I = 0x0

.field public static SOCKET_READ_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HttpUtil"

.field public static final WAIT_TIMEOUT:I = 0x1770

.field private static customerHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcn/kuwo/base/util/HttpUtils;->CRLF:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/base/util/HttpUtils;->NEED_HOST_RESOVLING:Z

    const/16 v0, 0x1f40

    sput v0, Lcn/kuwo/base/util/HttpUtils;->SOCKET_CONNECT_TIMEOUT:I

    const/16 v0, 0x7530

    sput v0, Lcn/kuwo/base/util/HttpUtils;->SOCKET_READ_TIMEOUT:I

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeHttpClient()V
    .locals 1

    sget-object v0, Lcn/kuwo/base/util/HttpUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/util/HttpUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/util/HttpUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    :cond_0
    return-void
.end method

.method private static declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 7

    const-class v1, Lcn/kuwo/base/util/HttpUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/kuwo/base/util/HttpUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const-string v2, "Mozilla/5.0(Linux;U;Android 2.2.1;en-us;Nexus One Build.FRG83) AppleWebKit/553.1(KHTML,like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/16 v2, 0x190

    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    const-wide/16 v2, 0x1770

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    const/16 v2, 0x1f40

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x1f40

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcn/kuwo/base/util/HttpUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    sget-object v0, Lcn/kuwo/base/util/HttpUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.connection.timeout"

    const/16 v3, 0x1f40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    sget-object v0, Lcn/kuwo/base/util/HttpUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.socket.timeout"

    const/16 v3, 0x1f40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    sget-object v0, Lcn/kuwo/base/util/HttpUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/kuwo/base/util/HttpUtils;->openConnection(Ljava/lang/String;JLjava/net/InetSocketAddress;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static openConnection(Ljava/lang/String;JLjava/net/InetSocketAddress;)Ljava/net/HttpURLConnection;
    .locals 7

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameter url is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcn/kuwo/base/util/HttpUtils;->NEED_HOST_RESOVLING:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcn/kuwo/base/util/HostNameResolver;->resovleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "HttpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolved url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_3

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    const-string v3, "RANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget v3, Lcn/kuwo/base/util/HttpUtils;->SOCKET_CONNECT_TIMEOUT:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v3, Lcn/kuwo/base/util/HttpUtils;->SOCKET_READ_TIMEOUT:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "HttpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v3, v4, p3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "HttpUtil"

    invoke-static {v3, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static openConnection(Ljava/lang/String;Ljava/net/InetSocketAddress;)Ljava/net/HttpURLConnection;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcn/kuwo/base/util/HttpUtils;->openConnection(Ljava/lang/String;JLjava/net/InetSocketAddress;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static syncGetBytes(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcn/kuwo/base/util/HttpUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/IOUtils;->convertStreamToBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static syncGetString(Lcn/kuwo/base/util/HttpUtils$RequestParams;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/util/HttpUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcn/kuwo/base/util/HttpUtils$RequestParams;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/base/util/HttpUtils$RequestParams;->inStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcn/kuwo/base/util/HttpUtils$RequestParams;->charset:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/kuwo/base/util/IOUtils;->convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/kuwo/base/util/HttpUtils$RequestParams;->inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static syncGetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcn/kuwo/base/util/HttpUtils$RequestParams;

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/HttpUtils$RequestParams;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/base/util/HttpUtils;->syncGetString(Lcn/kuwo/base/util/HttpUtils$RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static syncGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcn/kuwo/base/util/HttpUtils$RequestParams;

    invoke-direct {v0, p0, p1}, Lcn/kuwo/base/util/HttpUtils$RequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/base/util/HttpUtils;->syncGetString(Lcn/kuwo/base/util/HttpUtils$RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
