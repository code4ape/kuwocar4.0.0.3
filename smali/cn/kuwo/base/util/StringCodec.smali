.class public Lcn/kuwo/base/util/StringCodec;
.super Ljava/lang/Object;


# static fields
.field private static final UTF16BESignature:[B

.field private static final UTF16LESignature:[B

.field private static final UTF8Signature:[B

.field protected static encMap:Ljava/util/Map;


# instance fields
.field private addSignature:Z

.field private detectedEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x2

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcn/kuwo/base/util/StringCodec;->UTF8Signature:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcn/kuwo/base/util/StringCodec;->UTF16BESignature:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcn/kuwo/base/util/StringCodec;->UTF16LESignature:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/kuwo/base/util/StringCodec;->encMap:Ljava/util/Map;

    sget-object v0, Lcn/kuwo/base/util/StringCodec;->encMap:Ljava/util/Map;

    const-string v1, "UTF-8"

    sget-object v2, Lcn/kuwo/base/util/StringCodec;->UTF8Signature:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/kuwo/base/util/StringCodec;->encMap:Ljava/util/Map;

    const-string v1, "UTF8"

    sget-object v2, Lcn/kuwo/base/util/StringCodec;->UTF8Signature:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/kuwo/base/util/StringCodec;->encMap:Ljava/util/Map;

    const-string v1, "UTF-16BE"

    sget-object v2, Lcn/kuwo/base/util/StringCodec;->UTF16BESignature:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/kuwo/base/util/StringCodec;->encMap:Ljava/util/Map;

    const-string v1, "UTF-16LE"

    sget-object v2, Lcn/kuwo/base/util/StringCodec;->UTF16LESignature:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    :array_1
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        -0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/util/StringCodec;->addSignature:Z

    return-void
.end method

.method public static isEncodable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcn/kuwo/base/util/StringCodec;

    invoke-direct {v0}, Lcn/kuwo/base/util/StringCodec;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/kuwo/base/util/StringCodec;->encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/kuwo/base/util/StringCodec;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUTF8([B)Z
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/kuwo/base/util/StringCodec;->isUTF8([BII)Z

    move-result v0

    return v0
.end method

.method public static isUTF8([BII)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcn/kuwo/base/util/StringCodec;->UTF8Signature:[B

    invoke-static {p0, p1, v0}, Lcn/kuwo/base/util/StringCodec;->startsWith([BI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v4, p1

    move v0, v2

    :goto_1
    add-int v3, p1, p2

    if-ge v4, v3, :cond_7

    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xc0

    const/16 v5, 0xc0

    if-ne v3, v5, :cond_6

    const/4 v0, 0x2

    move v3, v0

    :goto_2
    const/16 v0, 0x8

    if-ge v3, v0, :cond_1

    rsub-int/lit8 v0, v3, 0x7

    shl-int v0, v1, v0

    aget-byte v5, p0, v4

    and-int/2addr v0, v5

    if-nez v0, :cond_3

    :cond_1
    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_5

    add-int v5, v4, v0

    if-ge v5, p2, :cond_2

    add-int v5, v4, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xc0

    const/16 v6, 0x80

    if-eq v5, v6, :cond_4

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    :cond_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_7
    move v1, v0

    goto :goto_0
.end method

.method private static startsWith([BI[B)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    add-int v2, v0, p1

    array-length v3, p0

    if-eq v2, v3, :cond_0

    add-int v2, v0, p1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decode([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcn/kuwo/base/util/StringCodec;->decode([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decode([BII)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/kuwo/base/util/StringCodec;->decode([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decode([BIILjava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p4, :cond_0

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/util/StringCodec;->detectedEncoding:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/util/StringCodec;->encMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {p1, p2, v1}, Lcn/kuwo/base/util/StringCodec;->startsWith([BI[B)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/base/util/StringCodec;->detectedEncoding:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    array-length v2, v1

    add-int/2addr v2, p2

    array-length v1, v1

    sub-int v1, p3, v1

    iget-object v3, p0, Lcn/kuwo/base/util/StringCodec;->detectedEncoding:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1, p2, p3}, Lcn/kuwo/base/util/StringCodec;->isUTF8([BII)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcn/kuwo/base/util/StringCodec;->detectedEncoding:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/base/util/StringCodec;->detectedEncoding:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0
.end method

.method public decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcn/kuwo/base/util/StringCodec;->decode([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/base/util/StringCodec;->encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object p2, p0, Lcn/kuwo/base/util/StringCodec;->detectedEncoding:Ljava/lang/String;

    iget-boolean v0, p0, Lcn/kuwo/base/util/StringCodec;->addSignature:Z

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcn/kuwo/base/util/StringCodec;->encMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-array v1, v1, [B

    :try_start_0
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v1, v3, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public getDetectedEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/StringCodec;->detectedEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public isAddSignature()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/util/StringCodec;->addSignature:Z

    return v0
.end method

.method public setAddSignature(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/util/StringCodec;->addSignature:Z

    return-void
.end method
