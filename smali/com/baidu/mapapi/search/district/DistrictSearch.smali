.class public Lcom/baidu/mapapi/search/district/DistrictSearch;
.super Lcom/baidu/mapapi/search/core/g;


# instance fields
.field private a:Lcom/baidu/platform/comapi/search/d;

.field private b:Z

.field private c:Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/comapi/search/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->b:Z

    new-instance v0, Lcom/baidu/platform/comapi/search/d;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/search/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/comapi/search/d;

    new-instance v1, Lcom/baidu/mapapi/search/district/DistrictSearch$a;

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapapi/search/district/DistrictSearch$a;-><init>(Lcom/baidu/mapapi/search/district/DistrictSearch;Lcom/baidu/mapapi/search/district/DistrictSearch$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/district/DistrictSearch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/district/DistrictSearch;)Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->c:Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;

    return-object v0
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/district/DistrictSearch;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/mapapi/search/district/DistrictSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/district/DistrictSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->b:Z

    iput-object v1, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->c:Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;

    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/search/d;->a()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    goto :goto_0
.end method

.method public searchDistrict(Lcom/baidu/mapapi/search/district/DistrictSearchOption;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "searcher has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "option or city name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/search/d;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOnDistrictSearchListener(Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->c:Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;

    return-void
.end method
