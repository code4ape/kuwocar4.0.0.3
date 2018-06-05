.class public Lcom/baidu/platform/comjni/map/search/JNISearch;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native AreaSearch(JLandroid/os/Bundle;)Z
.end method

.method public native BusLineDetailSearch(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native Create()J
.end method

.method public native ForceSearchByCityName(JLandroid/os/Bundle;)Z
.end method

.method public native GetSearchResult(JI)Ljava/lang/String;
.end method

.method public native IndoorSearch(JLandroid/os/Bundle;)Z
.end method

.method public native MapBoundSearch(JLandroid/os/Bundle;)Z
.end method

.method public native POIDetailSearchPlace(JLjava/lang/String;)Z
.end method

.method public native PoiDetailShareUrlSearch(JLjava/lang/String;)Z
.end method

.method public native PoiRGCShareUrlSearch(JIILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native Release(J)I
.end method

.method public native ReverseGeocodeSearch(JII)Z
.end method

.method public native RoutePlanByBus(JLandroid/os/Bundle;)Z
.end method

.method public native RoutePlanByCar(JLandroid/os/Bundle;)Z
.end method

.method public native RoutePlanByFoot(JLandroid/os/Bundle;)Z
.end method

.method public native SuggestionSearch(JLandroid/os/Bundle;)Z
.end method

.method public native districtSearch(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native geocode(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native routePlanByBike(JLandroid/os/Bundle;)Z
.end method

.method public native routeShareUrlSearch(JLandroid/os/Bundle;)Z
.end method
