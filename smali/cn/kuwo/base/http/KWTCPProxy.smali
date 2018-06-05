.class public final Lcn/kuwo/base/http/KWTCPProxy;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/kuwo/base/http/KWTCPProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/http/KWTCPProxy;

    invoke-direct {v0}, Lcn/kuwo/base/http/KWTCPProxy;-><init>()V

    sput-object v0, Lcn/kuwo/base/http/KWTCPProxy;->a:Lcn/kuwo/base/http/KWTCPProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/kuwo/base/http/KWTCPProxy;
    .locals 1

    sget-object v0, Lcn/kuwo/base/http/KWTCPProxy;->a:Lcn/kuwo/base/http/KWTCPProxy;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;
    .locals 11

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1a

    move-result-object v2

    const-string v3, "KWTCPProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncHTTP host:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/http/DNSLookup;->a()Lcn/kuwo/base/http/DNSLookup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/kuwo/base/http/DNSLookup;->a(Ljava/lang/String;)Lcn/kuwo/base/http/DNSLookup$IPInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcn/kuwo/base/http/DNSLookup$IPInfo;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcn/kuwo/base/http/DNSLookup$IPInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v3, "KWTCPProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncHTTP url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/net/Socket;

    iget-object v2, v2, Lcn/kuwo/base/http/DNSLookup$IPInfo;->c:Ljava/lang/String;

    const/16 v4, 0x50

    invoke-direct {v3, v2, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2710

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    :try_start_3
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_19

    move-result-object v4

    :try_start_4
    const-string v5, "\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "pro"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_4

    const-string v6, "P"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    sget-object v6, Lcn/kuwo/base/util/DeviceUtils;->INSTALL_SOURCE:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    sget-object v6, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_2

    array-length v6, p2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x1

    :try_start_5
    new-array v5, v5, [B

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v9, :cond_5

    const/4 v7, 0x0

    aget-byte v7, v5, v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_5

    const/4 v7, 0x0

    aget-byte v7, v5, v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_7
    const-string v5, "KWTCPProxy"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KWTCPProxy"

    invoke-static {v5, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_17

    :goto_3
    :try_start_9
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v2, "KWTCPProxy"

    invoke-static {v2, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_4
    const-string v4, "KWTCPProxy"

    invoke-static {v4, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :cond_4
    :try_start_b
    const-string v6, "G"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catch_5
    move-exception v1

    :try_start_c
    const-string v5, "KWTCPProxy"

    invoke-static {v5, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_18

    :goto_5
    :try_start_e
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_0

    :cond_5
    :try_start_f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KWTCPProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "firstLine"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ok"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v1, "KWTCPProxy"

    const-string v5, "firstLine no \'ok\'"

    invoke-static {v1, v5}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_16

    :goto_6
    :try_start_11
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :cond_6
    :try_start_12
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v10, :cond_7

    const-string v0, "KWTCPProxy"

    const-string v1, "success no body"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;-><init>(Z[B)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15

    :goto_7
    :try_start_14
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v1

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x2

    :try_start_15
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result v5

    if-nez v5, :cond_8

    :try_start_16
    const-string v0, "KWTCPProxy"

    const-string v1, "success no body"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;-><init>(Z[B)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_13

    :goto_8
    :try_start_18
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v1

    goto/16 :goto_0

    :catch_a
    move-exception v1

    :try_start_19
    const-string v5, "KWTCPProxy"

    invoke-static {v5, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_14

    :goto_9
    :try_start_1b
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v1

    goto/16 :goto_0

    :cond_8
    :try_start_1c
    new-array v6, v5, [B
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :goto_a
    if-ge v1, v5, :cond_9

    sub-int v7, v5, v1

    :try_start_1d
    invoke-virtual {v2, v6, v1, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-result v7

    add-int/2addr v1, v7

    goto :goto_a

    :catch_c
    move-exception v1

    :try_start_1e
    const-string v5, "KWTCPProxy"

    invoke-static {v5, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_12

    :goto_b
    :try_start_20
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v1

    goto/16 :goto_0

    :cond_9
    :try_start_21
    const-string v0, "KWTCPProxy"

    const-string v1, "success with body"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v6}, Lcn/kuwo/base/http/KWTCPProxy$KWTCPProxyResult;-><init>(Z[B)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :try_start_22
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_11

    :goto_c
    :try_start_23
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e

    goto/16 :goto_0

    :catch_e
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_24
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_10

    :goto_d
    :try_start_25
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_f

    :goto_e
    throw v0

    :catch_f
    move-exception v1

    goto :goto_e

    :catch_10
    move-exception v1

    goto :goto_d

    :catch_11
    move-exception v1

    goto :goto_c

    :catch_12
    move-exception v1

    goto :goto_b

    :catch_13
    move-exception v1

    goto :goto_8

    :catch_14
    move-exception v1

    goto :goto_9

    :catch_15
    move-exception v1

    goto/16 :goto_7

    :catch_16
    move-exception v1

    goto/16 :goto_6

    :catch_17
    move-exception v1

    goto/16 :goto_3

    :catch_18
    move-exception v1

    goto/16 :goto_5

    :catch_19
    move-exception v1

    goto/16 :goto_4

    :catch_1a
    move-exception v1

    goto/16 :goto_0
.end method
