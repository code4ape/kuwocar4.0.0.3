.class public Lcom/baidu/mapapi/radar/RadarNearbySearchOption;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:I

.field e:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

.field f:Ljava/util/Date;

.field g:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->d:I

    sget-object v0, Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;->distance_from_near_to_far:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    iput-object v0, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->e:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    return-void
.end method


# virtual methods
.method public centerPt(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/radar/RadarNearbySearchOption;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->c:Lcom/baidu/mapapi/model/LatLng;

    :cond_0
    return-object p0
.end method

.method public pageCapacity(I)Lcom/baidu/mapapi/radar/RadarNearbySearchOption;
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->d:I

    return-object p0
.end method

.method public pageNum(I)Lcom/baidu/mapapi/radar/RadarNearbySearchOption;
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->b:I

    return-object p0
.end method

.method public radius(I)Lcom/baidu/mapapi/radar/RadarNearbySearchOption;
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->a:I

    return-object p0
.end method

.method public sortType(Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;)Lcom/baidu/mapapi/radar/RadarNearbySearchOption;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->e:Lcom/baidu/mapapi/radar/RadarNearbySearchSortType;

    :cond_0
    return-object p0
.end method

.method public timeRange(Ljava/util/Date;Ljava/util/Date;)Lcom/baidu/mapapi/radar/RadarNearbySearchOption;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->f:Ljava/util/Date;

    iput-object p2, p0, Lcom/baidu/mapapi/radar/RadarNearbySearchOption;->g:Ljava/util/Date;

    :cond_0
    return-object p0
.end method
