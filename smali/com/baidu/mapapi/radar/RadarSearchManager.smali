.class public Lcom/baidu/mapapi/radar/RadarSearchManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/platform/comapi/radar/c;


# static fields
.field private static a:Lcom/baidu/mapapi/radar/RadarSearchManager;

.field private static b:Ljava/lang/String;

.field private static l:I


# instance fields
.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/TimerTask;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Lcom/baidu/mapapi/radar/RadarUploadInfoCallback;

.field private i:Lcom/baidu/mapapi/radar/RadarUploadInfo;

.field private j:J

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    sput-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    const/16 v0, 0xa

    sput v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->l:I

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapapi/radar/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/common/BaiduMapSDKException;

    const-string v1, "the version of radar is not match with base"

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/common/BaiduMapSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/NativeLoader;->getInstance()Lcom/baidu/platform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapapi/radar/VersionInfo;->getKitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->d:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->f:Z

    iput v1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->k:I

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    invoke-static {}, Lcom/baidu/platform/comapi/radar/a;->a()Lcom/baidu/platform/comapi/radar/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/radar/a;->a(Lcom/baidu/platform/comapi/radar/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mapapi/radar/RadarNearbyResult;
    .locals 12

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/baidu/mapapi/radar/RadarNearbyResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/radar/RadarNearbyResult;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "total"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/mapapi/radar/RadarNearbyResult;->totalNum:I

    const-string v4, "count"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/baidu/mapapi/radar/RadarSearchManager;->l:I

    div-int v5, v2, v5

    sget v6, Lcom/baidu/mapapi/radar/RadarSearchManager;->l:I

    rem-int/2addr v2, v6

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v2, v5

    iput v2, v0, Lcom/baidu/mapapi/radar/RadarNearbyResult;->pageNum:I

    iget v2, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->k:I

    iput v2, v0, Lcom/baidu/mapapi/radar/RadarNearbyResult;->pageIndex:I

    if-lez v4, :cond_1

    const-string v2, "contents"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    new-instance v4, Lcom/baidu/mapapi/radar/RadarNearbyInfo;

    invoke-direct {v4}, Lcom/baidu/mapapi/radar/RadarNearbyInfo;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    const-string v6, "uid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/mapapi/radar/RadarNearbyInfo;->userID:Ljava/lang/String;

    new-instance v6, Lcom/baidu/mapapi/model/LatLng;

    const-string v7, "locy"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v7, "locx"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    iput-object v6, v4, Lcom/baidu/mapapi/radar/RadarNearbyInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    const-string v6, "distance"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/baidu/mapapi/radar/RadarNearbyInfo;->distance:I

    const-string v6, "mb"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/mapapi/radar/RadarNearbyInfo;->mobileName:Ljava/lang/String;

    const-string v6, "os"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/mapapi/radar/RadarNearbyInfo;->mobileOS:Ljava/lang/String;

    const-string v6, "comments"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/mapapi/radar/RadarNearbyInfo;->comments:Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    new-instance v5, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v5, v4, Lcom/baidu/mapapi/radar/RadarNearbyInfo;->timeStamp:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iput-object v3, v0, Lcom/baidu/mapapi/radar/RadarNearbyResult;->infoList:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(I)Lcom/baidu/mapapi/radar/RadarSearchError;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_NO_ERROR:Lcom/baidu/mapapi/radar/RadarSearchError;

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_NO_RESULT:Lcom/baidu/mapapi/radar/RadarSearchError;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_NO_ERROR:Lcom/baidu/mapapi/radar/RadarSearchError;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_AK_ERROR:Lcom/baidu/mapapi/radar/RadarSearchError;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_USERID_NOT_EXIST:Lcom/baidu/mapapi/radar/RadarSearchError;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_FORBID_BY_ADMIN:Lcom/baidu/mapapi/radar/RadarSearchError;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_FORBID_BY_USER:Lcom/baidu/mapapi/radar/RadarSearchError;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_AK_NOT_BIND:Lcom/baidu/mapapi/radar/RadarSearchError;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_NETWORK_ERROR:Lcom/baidu/mapapi/radar/RadarSearchError;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_NETWORK_TIMEOUT:Lcom/baidu/mapapi/radar/RadarSearchError;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_PERMISSION_UNFINISHED:Lcom/baidu/mapapi/radar/RadarSearchError;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_6
        0x8 -> :sswitch_7
        0x194 -> :sswitch_6
        0x1f4 -> :sswitch_1
        0x1f6 -> :sswitch_4
        0x1f7 -> :sswitch_3
        0x1f8 -> :sswitch_1
        0x1fa -> :sswitch_5
        0x1fb -> :sswitch_2
        0x1fc -> :sswitch_8
    .end sparse-switch
.end method

.method static synthetic a()Lcom/baidu/mapapi/radar/RadarSearchManager;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/radar/RadarSearchManager;Lcom/baidu/mapapi/radar/RadarUploadInfo;)Lcom/baidu/mapapi/radar/RadarUploadInfo;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->i:Lcom/baidu/mapapi/radar/RadarUploadInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/radar/RadarSearchManager;)Lcom/baidu/mapapi/radar/RadarUploadInfoCallback;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->h:Lcom/baidu/mapapi/radar/RadarUploadInfoCallback;

    return-object v0
.end method

.method private a(Lcom/baidu/mapapi/radar/RadarUploadInfo;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->j:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iput-object p1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->i:Lcom/baidu/mapapi/radar/RadarUploadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->j:J

    invoke-static {}, Lcom/baidu/platform/comapi/radar/a;->a()Lcom/baidu/platform/comapi/radar/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/mapapi/radar/RadarUploadInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    iget-object v3, p1, Lcom/baidu/mapapi/radar/RadarUploadInfo;->comments:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/radar/a;->a(Ljava/lang/String;Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/mapapi/radar/RadarSearchManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mapapi/radar/RadarSearchManager;Lcom/baidu/mapapi/radar/RadarUploadInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/radar/RadarSearchManager;->a(Lcom/baidu/mapapi/radar/RadarUploadInfo;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/baidu/mapapi/radar/RadarSearchManager;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/radar/RadarSearchManager;

    invoke-direct {v0}, Lcom/baidu/mapapi/radar/RadarSearchManager;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    return-object v0
.end method


# virtual methods
.method public addNearbyInfoListener(Lcom/baidu/mapapi/radar/RadarSearchListener;)V
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearUserInfo()V
    .locals 2

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/platform/comapi/radar/a;->a()Lcom/baidu/platform/comapi/radar/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/radar/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/radar/RadarSearchManager;->stopUploadAuto()V

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/radar/a;->a()Lcom/baidu/platform/comapi/radar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/radar/a;->b()V

    invoke-static {}, Lcom/baidu/platform/comapi/radar/a;->a()Lcom/baidu/platform/comapi/radar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/radar/a;->d()V

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    :cond_1
    return-void
.end method

.method public nearbyInfoRequest(Lcom/baidu/mapapi/radar/RadarNearbySearchOption;)Z
    .locals 12

    const-wide/16 v10, 0x3e8

    const/4 v7, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->e:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    sget-object v2, Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;->distance_from_far_to_near:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->e:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    sget-object v2, Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;->distance_from_near_to_far:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    if-ne v1, v2, :cond_6

    :cond_2
    iget-object v1, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->e:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    sget-object v2, Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;->distance_from_far_to_near:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    if-ne v1, v2, :cond_5

    move v6, v0

    :goto_1
    iget-object v1, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->c:Lcom/baidu/mapapi/model/LatLng;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->i:Lcom/baidu/mapapi/radar/RadarUploadInfo;

    if-eqz v1, :cond_0

    :cond_3
    sget-object v1, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->c:Lcom/baidu/mapapi/model/LatLng;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->i:Lcom/baidu/mapapi/radar/RadarUploadInfo;

    iget-object v1, v1, Lcom/baidu/mapapi/radar/RadarUploadInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->i:Lcom/baidu/mapapi/radar/RadarUploadInfo;

    iget-object v2, v1, Lcom/baidu/mapapi/radar/RadarUploadInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    :goto_2
    const-string v8, ""

    iget-object v1, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->f:Ljava/util/Date;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->g:Ljava/util/Date;

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v3, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->f:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v3, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->g:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v4, v8, v10

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_4
    iget v0, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->d:I

    sput v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->l:I

    iget v0, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->b:I

    iput v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->k:I

    invoke-static {}, Lcom/baidu/platform/comapi/radar/a;->a()Lcom/baidu/platform/comapi/radar/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    iget v3, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->a:I

    iget v4, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->b:I

    iget v5, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->d:I

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/platform/comapi/radar/a;->a(Ljava/lang/String;Lcom/baidu/mapapi/model/LatLng;IIIIILjava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    move v7, v0

    move v6, v0

    goto/16 :goto_1

    :cond_6
    iget-object v1, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->e:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    sget-object v2, Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;->time_from_past_to_recent:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    if-ne v1, v2, :cond_7

    move v6, v7

    goto/16 :goto_1

    :cond_7
    move v6, v7

    move v7, v0

    goto/16 :goto_1

    :cond_8
    iget-object v2, p1, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->c:Lcom/baidu/mapapi/model/LatLng;

    goto :goto_2
.end method

.method public onGetClearInfoResult(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/radar/RadarSearchManager;->a(I)Lcom/baidu/mapapi/radar/RadarSearchError;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/radar/RadarSearchListener;

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/radar/RadarSearchListener;->onGetClearInfoState(Lcom/baidu/mapapi/radar/RadarSearchError;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGetNearByResult(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/baidu/mapapi/radar/RadarSearchManager;->a(I)Lcom/baidu/mapapi/radar/RadarSearchError;

    move-result-object v1

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_NO_ERROR:Lcom/baidu/mapapi/radar/RadarSearchError;

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/radar/RadarSearchListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Lcom/baidu/mapapi/radar/RadarSearchListener;->onGetNearbyInfoList(Lcom/baidu/mapapi/radar/RadarNearbyResult;Lcom/baidu/mapapi/radar/RadarSearchError;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/radar/RadarSearchManager;->a(Ljava/lang/String;)Lcom/baidu/mapapi/radar/RadarNearbyResult;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/baidu/mapapi/radar/RadarNearbyResult;->infoList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/baidu/mapapi/radar/RadarNearbyResult;->infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/radar/RadarSearchListener;

    invoke-interface {v0, v2, v1}, Lcom/baidu/mapapi/radar/RadarSearchListener;->onGetNearbyInfoList(Lcom/baidu/mapapi/radar/RadarNearbyResult;Lcom/baidu/mapapi/radar/RadarSearchError;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/radar/RadarSearchListener;

    sget-object v3, Lcom/baidu/mapapi/radar/RadarSearchError;->RADAR_NO_RESULT:Lcom/baidu/mapapi/radar/RadarSearchError;

    invoke-interface {v0, v2, v3}, Lcom/baidu/mapapi/radar/RadarSearchListener;->onGetNearbyInfoList(Lcom/baidu/mapapi/radar/RadarNearbyResult;Lcom/baidu/mapapi/radar/RadarSearchError;)V

    goto :goto_2
.end method

.method public onGetUploadResult(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/radar/RadarSearchManager;->a(I)Lcom/baidu/mapapi/radar/RadarSearchError;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/radar/RadarSearchListener;

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/radar/RadarSearchListener;->onGetUploadState(Lcom/baidu/mapapi/radar/RadarSearchError;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeNearbyInfoListener(Lcom/baidu/mapapi/radar/RadarSearchListener;)V
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sput-object p1, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->i:Lcom/baidu/mapapi/radar/RadarUploadInfo;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public startUploadAuto(Lcom/baidu/mapapi/radar/RadarUploadInfoCallback;I)V
    .locals 6

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1388

    if-lt p2, v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->f:Z

    iput-object p1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->h:Lcom/baidu/mapapi/radar/RadarUploadInfoCallback;

    new-instance v0, Lcom/baidu/mapapi/radar/a;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/radar/a;-><init>(Lcom/baidu/mapapi/radar/RadarSearchManager;)V

    iput-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->g:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mapapi/radar/b;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/radar/b;-><init>(Lcom/baidu/mapapi/radar/RadarSearchManager;)V

    iput-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->e:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->d:Ljava/util/Timer;

    iget-object v1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->e:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public stopUploadAuto()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->f:Z

    iput-object v1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->h:Lcom/baidu/mapapi/radar/RadarUploadInfoCallback;

    iget-object v0, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->e:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/baidu/mapapi/radar/RadarSearchManager;->g:Landroid/os/Handler;

    goto :goto_0
.end method

.method public uploadInfoRequest(Lcom/baidu/mapapi/radar/RadarUploadInfo;)Z
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/radar/RadarSearchManager;->a:Lcom/baidu/mapapi/radar/RadarSearchManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/radar/RadarSearchManager;->a(Lcom/baidu/mapapi/radar/RadarUploadInfo;)Z

    move-result v0

    goto :goto_0
.end method
