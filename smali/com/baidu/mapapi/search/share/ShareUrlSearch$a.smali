.class Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/platform/comapi/search/b;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;


# direct methods
.method private constructor <init>(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/search/share/ShareUrlSearch;Lcom/baidu/mapapi/search/share/ShareUrlSearch$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;-><init>(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v1}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v1}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v1

    new-instance v2, Lcom/baidu/mapapi/search/share/ShareUrlResult;

    invoke-direct {v2, v0}, Lcom/baidu/mapapi/search/share/ShareUrlResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetPoiDetailShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    :sswitch_2
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->KEY_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    :sswitch_3
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_TIME_OUT:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    :sswitch_4
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    :sswitch_5
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v1}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v1

    new-instance v2, Lcom/baidu/mapapi/search/share/ShareUrlResult;

    invoke-direct {v2, v0}, Lcom/baidu/mapapi/search/share/ShareUrlResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetLocationShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v1}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v1

    new-instance v2, Lcom/baidu/mapapi/search/share/ShareUrlResult;

    invoke-direct {v2, v0}, Lcom/baidu/mapapi/search/share/ShareUrlResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetRouteShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x8 -> :sswitch_3
        0xb -> :sswitch_0
        0x6b -> :sswitch_5
        0x1f4 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/search/share/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/share/ShareUrlResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetPoiDetailShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/search/share/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/share/ShareUrlResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetLocationShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/search/share/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/share/ShareUrlResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetRouteShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
