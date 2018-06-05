.class public Lcn/kuwo/mod/push/PushTCPClient;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/lang/String;I)Lcn/kuwo/mod/push/PushResponseData;
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x5

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v2

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_2

    :try_start_0
    invoke-static {p0, v4}, Lcn/kuwo/mod/push/PushTCPClient;->a([BLjava/net/InetSocketAddress;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/push/PushResponseData;->a([B)Lcn/kuwo/mod/push/PushResponseData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    throw v1

    :catch_0
    move-exception v0

    if-lez v3, :cond_0

    :try_start_1
    sget-wide v6, Lcn/kuwo/mod/push/PushHandler;->a:J

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    move-object v1, v0

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private static a([BLjava/net/InetSocketAddress;)[B
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x7530

    :try_start_1
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    const/16 v2, 0x7530

    invoke-virtual {v4, p1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v3

    const/4 v2, 0x0

    :try_start_2
    array-length v6, p0

    invoke-virtual {v3, p0, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v2

    const/16 v1, 0x800

    :try_start_3
    new-array v6, v1, [B

    move v1, v0

    :cond_0
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v2, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    const/16 v8, 0x8

    if-lt v7, v8, :cond_0

    if-nez v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/push/PushHeaderData;->a([B)Lcn/kuwo/mod/push/PushHeaderData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushHeaderData;->b()S

    move-result v7

    const/16 v8, 0x4399

    if-eq v7, v8, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "tcp\u8fde\u63a5\uff0c\u6709\u975e\u6cd5\u6570\u636e"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    :cond_3
    throw v0

    :cond_4
    :try_start_5
    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushHeaderData;->a()S

    move-result v0

    invoke-static {}, Lcn/kuwo/mod/push/PushHeaderData;->c()S

    move-result v7

    add-int/2addr v0, v7

    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v7

    if-ne v7, v0, :cond_0

    :cond_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    :cond_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_a
    if-eqz v7, :cond_0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "tcp\u8fde\u63a5\uff0c\u5b9e\u9645\u6536\u5230\u7684\u957f\u5ea6\u548c\u670d\u52a1\u5668\u7ed9\u7684\u957f\u5ea6\u4e0d\u4e00\u81f4"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "tcp\u8fde\u63a5\uff0c\u6ca1\u6709\u6536\u5230\u4efb\u4f55\u6570\u636e"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_0
.end method
