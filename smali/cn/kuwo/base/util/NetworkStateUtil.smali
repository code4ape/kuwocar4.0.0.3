.class public Lcn/kuwo/base/util/NetworkStateUtil;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final NETWORK_TYPES:[[I

.field public static final OPERATOR_CMCC:I = 0x1

.field public static final OPERATOR_CT:I = 0x3

.field public static final OPERATOR_CUCC:I = 0x2

.field public static final OPERATOR_UNKNOWN:I = 0x0

.field public static final TYPE_2G:I = 0x1

.field public static final TYPE_3G:I = 0x2

.field private static final TYPE_NAME:[Ljava/lang/String;

.field public static final TYPE_UNKNOWN:I

.field private static volatile accessPointName:Ljava/lang/String;

.field private static attached:Z

.field private static instance:Lcn/kuwo/base/util/NetworkStateUtil;

.field private static volatile isNetworkAvaliable:Z

.field private static volatile isWifiAvaliable:Z

.field private static volatile networkOperatorID:I

.field private static volatile networkTypeID:I

.field private static volatile networkTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v2

    const-string v1, "2G"

    aput-object v1, v0, v4

    const-string v1, "3G"

    aput-object v1, v0, v3

    const-string v1, "3G"

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->TYPE_NAME:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->NETWORK_TYPES:[[I

    new-instance v0, Lcn/kuwo/base/util/NetworkStateUtil;

    invoke-direct {v0}, Lcn/kuwo/base/util/NetworkStateUtil;-><init>()V

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->instance:Lcn/kuwo/base/util/NetworkStateUtil;

    const-string v0, "UNKNOWN"

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeName:Ljava/lang/String;

    const-string v0, "None"

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->accessPointName:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/util/NetworkStateUtil;->isNetworkAvaliable:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/util/NetworkStateUtil;->isWifiAvaliable:Z

    return v0
.end method

.method public static getAccessPoint()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->accessPointName:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalIP()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNetWorkType()I
    .locals 1

    sget v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeID:I

    return v0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcn/kuwo/base/util/NetworkStateUtil;->isNetworkAvaliable:Z

    sput-boolean v1, Lcn/kuwo/base/util/NetworkStateUtil;->isWifiAvaliable:Z

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    sput-boolean v5, Lcn/kuwo/base/util/NetworkStateUtil;->isNetworkAvaliable:Z

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/kuwo/base/util/NetworkStateUtil;->accessPointName:Ljava/lang/String;

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_2

    sput-boolean v5, Lcn/kuwo/base/util/NetworkStateUtil;->isWifiAvaliable:Z

    const-string v0, "WIFI"

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    sget-object v4, Lcn/kuwo/base/util/NetworkStateUtil;->NETWORK_TYPES:[[I

    array-length v4, v4

    if-ge v3, v4, :cond_3

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->accessPointName:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->NETWORK_TYPES:[[I

    aget-object v0, v0, v3

    aget v0, v0, v1

    sput v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeID:I

    sget-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->NETWORK_TYPES:[[I

    aget-object v0, v0, v3

    aget v0, v0, v5

    sput v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkOperatorID:I

    sget-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->TYPE_NAME:[Ljava/lang/String;

    sget v1, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeID:I

    aget-object v0, v0, v1

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    sput v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeID:I

    const-string v0, "3G"

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "UNKNOWN"

    sput-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getNetworkTypeName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public static getOperatorType()I
    .locals 1

    sget v0, Lcn/kuwo/base/util/NetworkStateUtil;->networkOperatorID:I

    return v0
.end method

.method public static init()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/util/NetworkStateUtil;->instance:Lcn/kuwo/base/util/NetworkStateUtil;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/util/NetworkStateUtil;->attached:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkInfo(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static is3G()Z
    .locals 2

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetWorkType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvaliable()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/util/NetworkStateUtil;->isNetworkAvaliable:Z

    return v0
.end method

.method public static isMobile()Z
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isWifi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnlyWifiConnect()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcn/kuwo/base/util/NetworkStateUtil;->isNetworkAvaliable:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcn/kuwo/base/util/NetworkStateUtil;->isWifiAvaliable:Z

    if-nez v1, :cond_0

    const-string v1, ""

    const-string v2, "audition_use_only_wifi_enable"

    invoke-static {v1, v2, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isWifi()Z
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/kuwo/base/util/NetworkStateUtil;->isWifiAvaliable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiOr3G()Z
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isWifi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->is3G()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static release()V
    .locals 2

    sget-boolean v0, Lcn/kuwo/base/util/NetworkStateUtil;->attached:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/NetworkStateUtil;->instance:Lcn/kuwo/base/util/NetworkStateUtil;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/base/util/NetworkStateUtil;->attached:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/base/util/NetworkStateUtil$1;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/base/util/NetworkStateUtil$1;-><init>(Lcn/kuwo/base/util/NetworkStateUtil;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    return-void
.end method
