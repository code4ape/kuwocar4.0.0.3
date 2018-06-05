.class public final Lcn/kuwo/base/http/DNSLookup;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/kuwo/base/http/DNSLookup;


# instance fields
.field private b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/http/DNSLookup;

    invoke-direct {v0}, Lcn/kuwo/base/http/DNSLookup;-><init>()V

    sput-object v0, Lcn/kuwo/base/http/DNSLookup;->a:Lcn/kuwo/base/http/DNSLookup;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/http/DNSLookup;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcn/kuwo/base/http/DNSLookup;
    .locals 1

    sget-object v0, Lcn/kuwo/base/http/DNSLookup;->a:Lcn/kuwo/base/http/DNSLookup;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcn/kuwo/base/http/DNSLookup$IPInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/http/DNSLookup;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Lcn/kuwo/base/http/DNSLookup$IPInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/http/DNSLookup;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/http/DNSLookup$IPInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/kuwo/base/http/DNSLookup$IPInfo;
    .locals 10

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "DNSLookup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domain:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/kuwo/base/http/DNSLookup;->b(Ljava/lang/String;)Lcn/kuwo/base/http/DNSLookup$IPInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "appconfig"

    const-string v3, "kwudpdnsserver"

    const-string v4, "60.28.201.13"

    invoke-static {v0, v3, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V

    const/16 v0, 0x2710

    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "dnslookup\n"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcn/kuwo/base/util/DeviceUtils;->INSTALL_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x1bb

    :goto_1
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v6, v7, v5, v3, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v0, 0x20

    new-array v0, v0, [B

    new-instance v3, Ljava/net/DatagramPacket;

    array-length v5, v0

    invoke-direct {v3, v0, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->disconnect()V

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x50

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->disconnect()V

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    move-object v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->disconnect()V

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    throw v0

    :cond_2
    const-string v0, ""

    const-string v1, ""

    const-string v3, "ignore"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_3

    aget-object v0, v3, v2

    :cond_3
    array-length v4, v3

    if-le v4, v8, :cond_4

    const/4 v1, 0x1

    aget-object v1, v3, v1

    const-string v2, "proxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    aget-object v1, v3, v8

    move-object v9, v1

    move v1, v2

    move-object v2, v0

    move-object v0, v9

    :goto_2
    const-string v3, "DNSLookup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  proxyIP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/kuwo/base/http/DNSLookup$IPInfo;

    invoke-direct {v3, v2, v1, v0}, Lcn/kuwo/base/http/DNSLookup$IPInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcn/kuwo/base/http/DNSLookup;->a(Ljava/lang/String;Lcn/kuwo/base/http/DNSLookup$IPInfo;)V

    move-object v0, v3

    goto/16 :goto_0

    :cond_4
    move-object v9, v1

    move v1, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_2
.end method
