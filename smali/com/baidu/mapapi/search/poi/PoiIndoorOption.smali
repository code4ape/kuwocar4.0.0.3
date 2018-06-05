.class public Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->d:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->e:I

    return-void
.end method


# virtual methods
.method public poiCurrentPage(I)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->d:I

    return-object p0
.end method

.method public poiFloor(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->c:Ljava/lang/String;

    return-object p0
.end method

.method public poiIndoorBid(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->a:Ljava/lang/String;

    return-object p0
.end method

.method public poiIndoorWd(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->b:Ljava/lang/String;

    return-object p0
.end method

.method public poiPageSize(I)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->e:I

    return-object p0
.end method
