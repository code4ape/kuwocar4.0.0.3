.class public Lcom/baidu/mapapi/http/AsyncHttpClient;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0xfa0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/mapapi/http/AsyncHttpClient;->b:I

    iput v0, p0, Lcom/baidu/mapapi/http/AsyncHttpClient;->c:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/http/AsyncHttpClient;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/http/AsyncHttpClient;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/http/AsyncHttpClient;->b:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/mapapi/http/AsyncHttpClient;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/http/AsyncHttpClient;->c:I

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mapapi/http/a;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/mapapi/http/a;-><init>(Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
