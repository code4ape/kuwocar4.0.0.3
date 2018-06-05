.class public Lcn/kuwo/mod/radio/RadioBytesParser;
.super Ljava/lang/Object;


# instance fields
.field a:Lcn/kuwo/base/bean/BytesResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/radio/RadioBytesParser;->a:Lcn/kuwo/base/bean/BytesResult;

    return-void
.end method

.method private b([B)[B
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0xa

    aput-byte v2, v1, v4

    invoke-static {p1, v4, v1}, Lcn/kuwo/base/util/IOUtils;->indexOf([BI[B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    array-length v1, v1

    add-int/2addr v1, v2

    :try_start_0
    new-instance v2, Ljava/lang/String;

    array-length v3, p1

    sub-int/2addr v3, v1

    const-string v4, "gbk"

    invoke-direct {v2, p1, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcn/kuwo/base/bean/BytesResult;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioBytesParser;->a:Lcn/kuwo/base/bean/BytesResult;

    return-object v0
.end method

.method public a([B)V
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/BytesResult;

    invoke-direct {v0}, Lcn/kuwo/base/bean/BytesResult;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/radio/RadioBytesParser;->a:Lcn/kuwo/base/bean/BytesResult;

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioBytesParser;->a:Lcn/kuwo/base/bean/BytesResult;

    invoke-direct {p0, p1}, Lcn/kuwo/mod/radio/RadioBytesParser;->b([B)[B

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/BytesResult;->b:[B

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioBytesParser;->a:Lcn/kuwo/base/bean/BytesResult;

    iget-object v0, v0, Lcn/kuwo/base/bean/BytesResult;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioBytesParser;->a:Lcn/kuwo/base/bean/BytesResult;

    iget-object v0, v0, Lcn/kuwo/base/bean/BytesResult;->b:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioBytesParser;->a:Lcn/kuwo/base/bean/BytesResult;

    sget-object v1, Lcn/kuwo/base/bean/BytesResult$ResultType;->a:Lcn/kuwo/base/bean/BytesResult$ResultType;

    iput-object v1, v0, Lcn/kuwo/base/bean/BytesResult;->a:Lcn/kuwo/base/bean/BytesResult$ResultType;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioBytesParser;->a:Lcn/kuwo/base/bean/BytesResult;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/kuwo/base/bean/BytesResult;->b:[B

    goto :goto_0
.end method
