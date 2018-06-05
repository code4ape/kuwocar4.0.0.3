.class public Lcn/kuwo/mod/quku/OnlineTask;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/base/http/HttpResult;)[B
    .locals 1

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineTask;->b(Lcn/kuwo/base/http/HttpResult;)[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcn/kuwo/base/http/HttpResult;)[B
    .locals 11

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/kuwo/base/http/HttpResult;->c:[B

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v4, 0x6

    if-gt v2, v4, :cond_2

    :cond_0
    const-string v0, "xiaoniu"

    const-string v2, "rawBytes is null or length <= 6"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sig="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "xiaoniu"

    const-string v2, "firstLine not starsWith sig"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    const/4 v4, 0x4

    new-array v4, v4, [B

    add-int/lit8 v5, v2, 0x0

    aget-byte v5, v0, v5

    aput-byte v5, v4, v3

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v0, v5

    aput-byte v5, v4, v7

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v0, v5

    aput-byte v5, v4, v10

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v0, v5

    aput-byte v5, v4, v8

    invoke-static {v4, v3}, Lcn/kuwo/base/util/IOUtils;->parseInteger([BZ)I

    move-result v5

    array-length v6, v0

    sub-int/2addr v6, v2

    if-gt v5, v6, :cond_1

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v0, v6

    aput-byte v6, v4, v3

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v0, v6

    aput-byte v6, v4, v7

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v0, v6

    aput-byte v6, v4, v10

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v0, v6

    aput-byte v6, v4, v8

    invoke-static {v4, v3}, Lcn/kuwo/base/util/IOUtils;->parseInteger([BZ)I

    move-result v4

    new-instance v6, Ljava/util/zip/Inflater;

    invoke-direct {v6}, Ljava/util/zip/Inflater;-><init>()V

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v6, v0, v2, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    :try_start_0
    new-array v0, v4, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->end()V

    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    const-string v7, "xiaoniu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ys:|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v0, "xiaoniu"

    const-string v2, "ys:handleQukuResult|oom"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "xiaoniu"

    const-string v2, "ys:handleQukuResult|\u6570\u636e\u89e3\u538b\u5931\u8d25"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->end()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->end()V

    throw v0

    :cond_4
    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    :goto_3
    new-array v2, v10, [B

    fill-array-data v2, :array_0

    invoke-static {v0, v3, v2}, Lcn/kuwo/base/util/IOUtils;->indexOf([BI[B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    const-string v0, "xiaoniu"

    const-string v2, "ys:handleQukuResult|\u6570\u636e\u683c\u5f0f\u9519\u8bef"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v0, "xiaoniu"

    const-string v2, "ys:handleQukuResult|replace oom"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    if-nez v2, :cond_6

    :goto_4
    move-object v1, v0

    goto/16 :goto_0

    :cond_6
    array-length v4, v0

    sub-int/2addr v4, v2

    :try_start_6
    new-array v1, v4, [B
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception v5

    const-string v5, "xiaoniu"

    const-string v6, "ys:handleQukuResult|oom"

    invoke-static {v5, v6}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_3

    :array_0
    .array-data 1
        0x3ct
        0x3ft
    .end array-data
.end method

.method public static get(Ljava/lang/String;Lcn/kuwo/mod/quku/OnlineExtra;Lcn/kuwo/mod/quku/OnRequestListener;)V
    .locals 2

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->IMMEDIATELY:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;

    invoke-direct {v1, p0, p1, p2}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;-><init>(Ljava/lang/String;Lcn/kuwo/mod/quku/OnlineExtra;Lcn/kuwo/mod/quku/OnRequestListener;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    return-void
.end method
