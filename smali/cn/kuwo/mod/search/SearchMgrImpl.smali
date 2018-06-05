.class public Lcn/kuwo/mod/search/SearchMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/search/ISearchMgr;


# instance fields
.field private a:Lcn/kuwo/base/util/SearchHistoryUtils;

.field private volatile b:Lcn/kuwo/mod/search/SearchTipsRunner;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/search/SearchMgrImpl;->a:Lcn/kuwo/base/util/SearchHistoryUtils;

    iput-object v0, p0, Lcn/kuwo/mod/search/SearchMgrImpl;->b:Lcn/kuwo/mod/search/SearchTipsRunner;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/search/SearchMgrImpl;->a:Lcn/kuwo/base/util/SearchHistoryUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/util/SearchHistoryUtils;

    invoke-direct {v0}, Lcn/kuwo/base/util/SearchHistoryUtils;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/search/SearchMgrImpl;->a:Lcn/kuwo/base/util/SearchHistoryUtils;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/search/SearchMgrImpl;->a:Lcn/kuwo/base/util/SearchHistoryUtils;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/kuwo/base/util/SearchHistoryUtils;->add(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/search/SearchMgrImpl;->a:Lcn/kuwo/base/util/SearchHistoryUtils;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/SearchHistoryUtils;->getHistoryList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
