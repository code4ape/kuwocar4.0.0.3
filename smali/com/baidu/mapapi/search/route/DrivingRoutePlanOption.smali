.class public Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/baidu/mapapi/search/route/PlanNode;

.field b:Lcom/baidu/mapapi/search/route/PlanNode;

.field c:Ljava/lang/String;

.field d:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

.field e:Ljava/util/List;

.field f:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    iput-object v1, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    sget-object v0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;->ECAR_TIME_FIRST:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    iput-object v1, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->e:Ljava/util/List;

    sget-object v0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;->ROUTE_PATH:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->f:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    return-void
.end method


# virtual methods
.method public currentCity(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->c:Ljava/lang/String;

    return-object p0
.end method

.method public from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method

.method public passBy(Ljava/util/List;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->e:Ljava/util/List;

    return-object p0
.end method

.method public policy(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    return-object p0
.end method

.method public to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method

.method public trafficPolicy(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->f:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    return-object p0
.end method
