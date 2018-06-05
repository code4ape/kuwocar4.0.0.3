.class public Lcn/kuwo/base/util/KwLocationClient;
.super Ljava/lang/Object;


# instance fields
.field private location:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

.field private locationClient:Lcom/baidu/location/LocationClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    iput-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->location:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    new-instance v0, Lcom/baidu/location/LocationClient;

    invoke-direct {v0, p1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    const v1, 0x2bf20

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationDescribe(Z)V

    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setNeedDeviceDirect(Z)V

    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setLocationNotify(Z)V

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setIgnoreKillProcess(Z)V

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationDescribe(Z)V

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationPoiList(Z)V

    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->SetIgnoreCacheException(Z)V

    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setIsNeedAltitude(Z)V

    iget-object v1, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    new-instance v1, Lcn/kuwo/base/util/KwLocationClient$1;

    invoke-direct {v1, p0}, Lcn/kuwo/base/util/KwLocationClient$1;-><init>(Lcn/kuwo/base/util/KwLocationClient;)V

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/base/util/KwLocationClient;)Lcn/kuwo/base/util/KwLocationClient$KwLocation;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->location:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    return-object v0
.end method

.method static synthetic access$002(Lcn/kuwo/base/util/KwLocationClient;Lcn/kuwo/base/util/KwLocationClient$KwLocation;)Lcn/kuwo/base/util/KwLocationClient$KwLocation;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/KwLocationClient;->location:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    return-object p1
.end method


# virtual methods
.method public getLocation()Lcn/kuwo/base/util/KwLocationClient$KwLocation;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->location:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    return-object v0
.end method

.method public requestLocation()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    :cond_0
    return-void
.end method
