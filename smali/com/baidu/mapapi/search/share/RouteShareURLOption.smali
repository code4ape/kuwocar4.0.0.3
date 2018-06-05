.class public Lcom/baidu/mapapi/search/share/RouteShareURLOption;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/baidu/mapapi/search/route/PlanNode;

.field b:Lcom/baidu/mapapi/search/route/PlanNode;

.field c:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

.field d:I

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->e:I

    return-void
.end method


# virtual methods
.method public cityCode(I)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->e:I

    return-object p0
.end method

.method public from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method

.method public getmMode()Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->c:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    return-object v0
.end method

.method public pn(I)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->d:I

    return-object p0
.end method

.method public routMode(Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->c:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    return-object p0
.end method

.method public to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method
