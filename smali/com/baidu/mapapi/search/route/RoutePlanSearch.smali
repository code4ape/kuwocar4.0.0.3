.class public final Lcom/baidu/mapapi/search/route/RoutePlanSearch;
.super Lcom/baidu/mapapi/search/core/g;


# instance fields
.field private a:Lcom/baidu/platform/comapi/search/d;

.field private b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iput-object v2, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c:Z

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->d:I

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    new-instance v0, Lcom/baidu/platform/comapi/search/d;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/search/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    new-instance v1, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;-><init>(Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/RoutePlanSearch$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/b;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    :cond_2
    new-instance v3, Lcom/baidu/platform/comapi/search/f;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/search/f;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/platform/comapi/search/f;->b:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/platform/comapi/search/f;->a:Lcom/baidu/mapapi/model/inner/Point;

    :cond_4
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v0, ""

    iput-object v0, v3, Lcom/baidu/platform/comapi/search/f;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/platform/comapi/search/f;->c:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    return v0
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/route/RoutePlanSearch;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bikingSearch(Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "searcher has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route plan option , origin or destination can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    :cond_3
    iget-object v1, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/platform/comapi/search/a;->c:Lcom/baidu/mapapi/model/LatLng;

    iput v3, v0, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_4
    new-instance v1, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v2, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    :cond_5
    iget-object v2, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/platform/comapi/search/a;->c:Lcom/baidu/mapapi/model/LatLng;

    iput v3, v1, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_6
    iget v2, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iput v2, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->d:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iget-object v2, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v3, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/a;Lcom/baidu/platform/comapi/search/a;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c:Z

    iput-object v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/search/d;->a()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    goto :goto_0
.end method

.method public drivingSearch(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "searcher has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route plan option , origin or destination can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    if-nez v0, :cond_3

    sget-object v0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;->ECAR_TIME_FIRST:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    iput-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    :cond_3
    new-instance v1, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    :cond_4
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v3, v1, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_5
    new-instance v2, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    :cond_6
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v3, v2, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_7
    iget v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    sget-object v0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;->ROUTE_PATH:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;->getInt()I

    move-result v9

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->f:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->f:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;->getInt()I

    move-result v9

    :cond_8
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v3, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xc

    iget-object v8, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;->getInt()I

    move-result v8

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Ljava/util/ArrayList;

    move-result-object v10

    move-object v11, v6

    invoke-virtual/range {v0 .. v11}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/a;Lcom/baidu/platform/comapi/search/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mapapi/model/inner/MapBound;IIILjava/util/ArrayList;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public setOnGetRoutePlanResultListener(Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    return-void
.end method

.method public transitSearch(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "searcher has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route plan option,origin or destination or city can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    if-nez v0, :cond_3

    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_TIME_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    iput-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    :cond_3
    new-instance v1, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    :cond_4
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v3, v1, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_5
    new-instance v2, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    :cond_6
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v3, v2, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_7
    iget v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v3, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->c:Ljava/lang/String;

    const/16 v5, 0xc

    iget-object v6, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->getInt()I

    move-result v6

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/a;Lcom/baidu/platform/comapi/search/a;Ljava/lang/String;Lcom/baidu/mapapi/model/inner/MapBound;IILjava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public walkingSearch(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "searcher has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "option , origin or destination can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    :cond_3
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v4, v1, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_4
    new-instance v2, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    :cond_5
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v4, v2, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_6
    iget v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->d:I

    iput v4, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v4, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xc

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/a;Lcom/baidu/platform/comapi/search/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mapapi/model/inner/MapBound;ILjava/util/Map;)Z

    move-result v0

    return v0
.end method
