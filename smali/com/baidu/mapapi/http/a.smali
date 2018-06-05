.class Lcom/baidu/mapapi/http/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mapapi/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/http/a;->c:Lcom/baidu/mapapi/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/baidu/mapapi/http/a;->a:Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;

    iput-object p3, p0, Lcom/baidu/mapapi/http/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/baidu/mapapi/http/HttpClient;

    iget-object v1, p0, Lcom/baidu/mapapi/http/a;->c:Lcom/baidu/mapapi/http/AsyncHttpClient;

    iget-object v1, v1, Lcom/baidu/mapapi/http/AsyncHttpClient;->a:Landroid/content/Context;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/baidu/mapapi/http/a;->a:Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mapapi/http/HttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V

    iget-object v1, p0, Lcom/baidu/mapapi/http/a;->c:Lcom/baidu/mapapi/http/AsyncHttpClient;

    invoke-static {v1}, Lcom/baidu/mapapi/http/AsyncHttpClient;->a(Lcom/baidu/mapapi/http/AsyncHttpClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/http/HttpClient;->setMaxTimeOut(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/http/a;->c:Lcom/baidu/mapapi/http/AsyncHttpClient;

    invoke-static {v1}, Lcom/baidu/mapapi/http/AsyncHttpClient;->b(Lcom/baidu/mapapi/http/AsyncHttpClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/http/HttpClient;->setReadTimeOut(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/http/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/http/HttpClient;->request(Ljava/lang/String;)V

    return-void
.end method
