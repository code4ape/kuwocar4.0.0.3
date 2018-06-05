.class public Lcom/baidu/mapapi/search/share/ShareUrlSearch;
.super Lcom/baidu/mapapi/search/core/g;


# instance fields
.field private a:Lcom/baidu/platform/comapi/search/d;

.field private b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iput-object v2, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c:Z

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->d:I

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    new-instance v0, Lcom/baidu/platform/comapi/search/d;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/search/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    new-instance v1, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;-><init>(Lcom/baidu/mapapi/search/share/ShareUrlSearch;Lcom/baidu/mapapi/search/share/ShareUrlSearch$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    return v0
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/share/ShareUrlSearch;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c:Z

    iput-object v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/search/d;->a()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    goto :goto_0
.end method

.method public requestLocationShareUrl(Lcom/baidu/mapapi/search/share/LocationShareURLOption;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "searcher has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "option or name or snippet  can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/mapapi/model/inner/Point;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestPoiDetailShareUrl(Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "searcher has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "option or uid can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p1, Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/search/d;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestRouteShareUrl(Lcom/baidu/mapapi/search/share/RouteShareURLOption;)Z
    .locals 10

    const/4 v5, -0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "searcher has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "option is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->getmMode()Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->ordinal()I

    move-result v0

    if-gez v0, :cond_2

    :goto_0
    return v8

    :cond_2
    iget-object v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start or end point can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->d:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->c:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    sget-object v1, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->BUS_ROUTE_SHARE_MODE:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    iget v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->e:I

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "city code can not be null if don\'t set start or end point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->c:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->ordinal()I

    move-result v7

    iget v8, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->e:I

    iget v9, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->d:I

    move v6, v5

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/mapapi/model/inner/Point;Lcom/baidu/mapapi/model/inner/Point;Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    :goto_1
    move v8, v0

    goto :goto_0

    :cond_7
    iget-object v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start cityCode must be set if not set start location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end cityCode must be set if not set end location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p1, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->c:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->ordinal()I

    move-result v7

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/mapapi/model/inner/Point;Lcom/baidu/mapapi/model/inner/Point;Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    goto :goto_1
.end method

.method public setOnGetShareUrlResultListener(Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    return-void
.end method
