.class public Lcn/kuwo/mod/push/PushUDPClient;
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

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v5, Ljava/net/DatagramPacket;

    array-length v0, p0

    invoke-direct {v5, p0, v0, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    const/4 v0, 0x5

    move-object v1, v2

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_1

    :try_start_0
    invoke-static {p0, v4, v5}, Lcn/kuwo/mod/push/PushUDPClient;->a([BLjava/net/InetSocketAddress;Ljava/net/DatagramPacket;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/push/PushResponseData;->a([B)Lcn/kuwo/mod/push/PushResponseData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_1
    sget-wide v6, Lcn/kuwo/mod/push/PushHandler;->a:J

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public static a([BLjava/net/InetSocketAddress;Ljava/net/DatagramPacket;)[B
    .locals 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    const/16 v0, 0x7530

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {v2, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v3, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/push/PushHeaderData;->a([B)Lcn/kuwo/mod/push/PushHeaderData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushHeaderData;->b()S

    move-result v0

    const/16 v4, 0x4399

    if-eq v0, v4, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v3, "udu\u8fde\u63a5\uff0c\u6536\u5230\u975e\u6cd5\u6570\u636e"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
