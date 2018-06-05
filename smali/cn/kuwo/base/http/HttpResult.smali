.class public Lcn/kuwo/base/http/HttpResult;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:I

.field public c:[B

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:J

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/http/HttpResult;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/base/http/HttpResult;->d:J

    iget-wide v0, p0, Lcn/kuwo/base/http/HttpResult;->d:J

    iput-wide v0, p0, Lcn/kuwo/base/http/HttpResult;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/base/http/HttpResult;->f:J

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/http/HttpResult;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/http/HttpResult;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/http/HttpResult;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/http/HttpResult;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/http/HttpResult;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpResult;->c:[B

    if-eqz v0, :cond_0

    new-instance v0, Lcn/kuwo/base/util/StringCodec;

    invoke-direct {v0}, Lcn/kuwo/base/util/StringCodec;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcn/kuwo/base/http/HttpResult;->c:[B

    invoke-virtual {v0, v1, p1}, Lcn/kuwo/base/util/StringCodec;->decode([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/http/HttpResult;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcn/kuwo/base/http/HttpResult;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
