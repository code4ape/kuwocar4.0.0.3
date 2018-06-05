.class public Lcn/kuwo/mod/mvcache/proxy/HttpParser;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2800

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->c:I

    iput-object p1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->d:Ljava/lang/String;

    iput p2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->c:I

    iput-object p3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->f:Ljava/lang/String;

    iput p4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->e:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/util/List;
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b:I

    add-int/2addr v0, p4

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a:[B

    iget v1, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b:I

    invoke-static {p3, v5, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b:I

    add-int/2addr v0, p4

    iput v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a:[B

    array-length v4, v1

    invoke-static {v3, v2, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b:I

    array-length v3, v1

    if-le v2, v3, :cond_1

    iget v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b:I

    array-length v3, v1

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a:[B

    array-length v1, v1

    array-length v4, v2

    invoke-static {v3, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a([B)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;
    .locals 5

    new-instance v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;

    invoke-direct {v1}, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->a()V

    iget-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->f:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    iget v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    :goto_0
    iget-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    const-string v2, "Range: bytes="

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    const-string v2, "\r\n\r\n"

    const-string v3, "\r\nRange: bytes=0-\r\n\r\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    const-string v2, "Range: bytes="

    const-string v3, "-"

    invoke-static {v0, v2, v3}, Lcn/kuwo/mod/mvcache/proxy/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->c:J

    :cond_1
    iget-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    const-string v2, "Range: bytes=0-"

    const-string v3, "\r\n"

    invoke-static {v0, v2, v3}, Lcn/kuwo/mod/mvcache/proxy/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    iget-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyRequest;->b:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, "Range: bytes="

    const-string v1, "-"

    invoke-static {p1, v0, v1}, Lcn/kuwo/mod/mvcache/proxy/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    const/16 v0, 0x2800

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->b:I

    return-void
.end method

.method public a([BI)[B
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GET "

    const-string v1, "\r\n\r\n"

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HEAD "

    const-string v1, "\r\n\r\n"

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([BI)Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "HTTP/"

    const-string v1, "\r\n\r\n"

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/kuwo/mod/mvcache/proxy/HttpParser;->a(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;

    invoke-direct {v1}, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->a:[B

    new-instance v5, Ljava/lang/String;

    iget-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->a:[B

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    :cond_1
    :try_start_0
    const-string v0, "Content-Range: bytes "

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Content-Range: bytes "

    const-string v4, "-"

    invoke-static {v5, v0, v4}, Lcn/kuwo/mod/mvcache/proxy/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    iput-wide v6, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->c:J

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Range: bytes "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-static {v5, v0, v4}, Lcn/kuwo/mod/mvcache/proxy/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    iput-wide v6, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->d:J

    :cond_3
    :goto_1
    const-string v4, "CacheWrite"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "getServerResponse:-->other is null:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->b:[B

    if-nez v0, :cond_5

    move v0, v2

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \n "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->c:J

    const-string v0, "Content-Length: "

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Content-Length: "

    const-string v4, "\r\n"

    invoke-static {v5, v0, v4}, Lcn/kuwo/mod/mvcache/proxy/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcn/kuwo/mod/mvcache/proxy/Config$ProxyResponse;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "CacheWrite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getServerResponse exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2
.end method
