.class public Lcom/baidu/platform/comjni/map/search/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Lcom/baidu/platform/comjni/map/search/JNISearch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comjni/map/search/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    new-instance v0, Lcom/baidu/platform/comjni/map/search/JNISearch;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/search/JNISearch;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/search/JNISearch;->Create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    return-wide v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->GetSearchResult(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/search/JNISearch;->ReverseGeocodeSearch(JII)Z

    move-result v0

    return v0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/platform/comjni/map/search/JNISearch;->PoiRGCShareUrlSearch(JIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->ForceSearchByCityName(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->POIDetailSearchPlace(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/search/JNISearch;->BusLineDetailSearch(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/search/JNISearch;->Release(J)I

    move-result v0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->AreaSearch(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->PoiDetailShareUrlSearch(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/search/JNISearch;->geocode(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->IndoorSearch(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/search/JNISearch;->districtSearch(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->RoutePlanByBus(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->RoutePlanByCar(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public f(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->RoutePlanByFoot(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public g(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->routePlanByBike(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->SuggestionSearch(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public i(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->routeShareUrlSearch(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public j(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->c:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/search/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->MapBoundSearch(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
