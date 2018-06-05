.class public Lcn/kuwo/base/util/CopyrightInfo;
.super Ljava/lang/Object;


# static fields
.field public static CLIENT_AREA:Ljava/lang/String;

.field public static CLIENT_IP:Ljava/lang/String;

.field private static HAS_COPYRIGHT:Z

.field private static inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_IP:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_AREA:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/util/CopyrightInfo;->HAS_COPYRIGHT:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/base/util/CopyrightInfo;->inited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/util/CopyrightInfo;->HAS_COPYRIGHT:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcn/kuwo/base/util/CopyrightInfo;->HAS_COPYRIGHT:Z

    return p0
.end method

.method private static checkCopyight()V
    .locals 2

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/base/util/CopyrightInfo$1;

    invoke-direct {v1}, Lcn/kuwo/base/util/CopyrightInfo$1;-><init>()V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    return-void
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

.method public static init()V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Lcn/kuwo/base/util/CopyrightInfo;->inited:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v4, Lcn/kuwo/base/util/CopyrightInfo;->HAS_COPYRIGHT:Z

    const-string v0, ""

    sput-object v0, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_IP:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_AREA:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/kuwo/base/util/CopyrightInfo;->getLocalIP()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appconfig"

    const-string v2, "ipdomain_last_ip"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {}, Lcn/kuwo/base/util/CopyrightInfo;->checkCopyight()V

    const-string v1, "appconfig"

    const-string v2, "ipdomain_last_ip"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_2
    :goto_1
    sput-boolean v4, Lcn/kuwo/base/util/CopyrightInfo;->inited:Z

    goto :goto_0

    :cond_3
    const-string v0, "appconfig"

    const-string v1, "ipdomian_has_copyright"

    invoke-static {v0, v1, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/kuwo/base/util/CopyrightInfo;->HAS_COPYRIGHT:Z

    const-string v0, "appconfig"

    const-string v1, "ipdomian_client_ip"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_IP:Ljava/lang/String;

    const-string v0, "appconfig"

    const-string v1, "ipdomian_client_area"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_AREA:Ljava/lang/String;

    goto :goto_1
.end method

.method public static isOpenCopyRight()Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "appconfig"

    const-string v2, "KEY_COPYRIGHT_ON"

    invoke-static {v1, v2, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "\u7248\u6743"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpenCopyRight   copyRightOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    sget-boolean v0, Lcn/kuwo/base/util/CopyrightInfo;->HAS_COPYRIGHT:Z

    :cond_0
    return v0
.end method
