.class public Lcn/kuwo/base/crypt/SecurityCoder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "GBK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v6, v4

    array-length v7, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_1

    if-lez v7, :cond_1

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    if-ge v2, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v8, v4, v2

    aget-byte v9, v5, v0

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcn/kuwo/base/crypt/Base64Coder;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    invoke-static {p0}, Lcn/kuwo/base/crypt/Base64Coder;->a(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    if-gtz v5, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    if-lez v7, :cond_2

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_1

    if-ge v2, v5, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-byte v8, v4, v2

    aget-byte v9, v6, v0

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "GBK"

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method
