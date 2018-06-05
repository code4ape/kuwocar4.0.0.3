.class public Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)V
    .locals 4

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_start_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    return-void
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1, v0, v1}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;JJ)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;JJ)V
    .locals 7

    const-wide/16 v4, 0x0

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;

    invoke-direct {v0}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;-><init>()V

    invoke-virtual {v0, p0}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->setType(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;)V

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    if-ne p0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->c(J)V

    :cond_0
    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V

    cmp-long v1, p1, v4

    if-lez v1, :cond_1

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->d(J)V

    :cond_1
    cmp-long v1, p3, v4

    if-lez v1, :cond_2

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$2;->a:[I

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_0
    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a(Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;)Z

    return-void

    :pswitch_0
    invoke-virtual {v0, p3, p4}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->a(J)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, p3, p4}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->b(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;)V
    .locals 1

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog;

    invoke-direct {v0}, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog;-><init>()V

    invoke-virtual {v0, p0}, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog;->setType(Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a(Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;)Z

    return-void
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/LoginLog;

    invoke-direct {v0}, Lcn/kuwo/base/log/sevicelevel/bean/LoginLog;-><init>()V

    invoke-virtual {v0, p0}, Lcn/kuwo/base/log/sevicelevel/bean/LoginLog;->setType(Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;)V

    invoke-virtual {v0, p1}, Lcn/kuwo/base/log/sevicelevel/bean/LoginLog;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a(Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;)Z

    return-void
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/MusicList;I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p2, p3}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;Ljava/util/List;Lcn/kuwo/base/bean/MusicList;I)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;Ljava/util/List;Lcn/kuwo/base/bean/MusicList;I)V
    .locals 1

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;

    invoke-direct {v0}, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;-><init>()V

    invoke-virtual {v0, p1}, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->a(Ljava/util/List;)V

    invoke-virtual {v0, p0}, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;)V

    invoke-virtual {v0, p2}, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->a(Lcn/kuwo/base/bean/MusicList;)V

    invoke-virtual {v0, p3}, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->a(I)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a(Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;)Z

    return-void
.end method

.method private static a(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->d(J)V

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->setVersion(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->source:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->c(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->INSTALL_SOURCE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->q(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_IP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->m(Ljava/lang/String;)V

    const-string v0, "2017-06-02"

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->s(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/util/DeviceUtils;->getCpuName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->p(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->k(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->f(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->o(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->MAC_ADDR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->l(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcn/kuwo/base/util/DeviceUtils;->WIDTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/kuwo/base/util/DeviceUtils;->HEIGHT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->j(Ljava/lang/String;)V

    const-string v0, "Car"

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->e(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getKwLocationClient()Lcn/kuwo/base/util/KwLocationClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwLocationClient;->getLocation()Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->getDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->b(D)V

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->a(D)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/kuwo/base/util/DeviceUtils;->getTotalMemory()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->n(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$1;

    invoke-direct {v1, p0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$1;-><init>(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto/16 :goto_0
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    invoke-static/range {v0 .. v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;Ljava/lang/String;JJ)V
    .locals 4

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;

    invoke-direct {v0}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;-><init>()V

    invoke-virtual {v0, p0}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->setType(Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;)V

    invoke-virtual {v0, p1}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->setPath(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V

    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2, p3}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->d(J)V

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_1

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$2;->b:[I

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a(Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;)Z

    return-void

    :pswitch_0
    invoke-virtual {v0, p4, p5}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->a(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;Lcn/kuwo/base/bean/Music;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;

    invoke-direct {v0}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;-><init>()V

    invoke-virtual {v0, p0}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->setType(Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;)V

    invoke-virtual {v0, p3}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->a(I)V

    invoke-virtual {v0, p4}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->a(Lcn/kuwo/base/bean/Music;)V

    invoke-virtual {v0, p1}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->a(Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a(Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;)Z

    return-void
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/SearchLog$LogType;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/SearchLog;

    invoke-direct {v0}, Lcn/kuwo/base/log/sevicelevel/bean/SearchLog;-><init>()V

    invoke-virtual {v0, p0}, Lcn/kuwo/base/log/sevicelevel/bean/SearchLog;->setType(Lcn/kuwo/base/log/sevicelevel/bean/SearchLog$LogType;)V

    invoke-virtual {v0, p1}, Lcn/kuwo/base/log/sevicelevel/bean/SearchLog;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a(Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "appconfig"

    const-string v1, "key_current_page"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static a(Z)V
    .locals 3

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_show_time_send"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method public static a()Z
    .locals 3

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_show_time_send"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()J
    .locals 4

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_start_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)V
    .locals 4

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_show_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    return-void
.end method

.method public static b(Z)V
    .locals 3

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_normal_exit"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method public static c()J
    .locals 4

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_show_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .locals 4

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_page_show_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()J
    .locals 4

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_running_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    const-string v0, "appconfig"

    const-string v1, "key_current_page"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Z
    .locals 3

    const-string v0, "appconfig"

    const-string v1, "key_kuwo_normal_exit"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
