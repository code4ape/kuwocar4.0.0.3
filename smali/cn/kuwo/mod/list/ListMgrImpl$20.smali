.class Lcn/kuwo/mod/list/ListMgrImpl$20;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$20;->a:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IAppObserver_OnBackground()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$20;->a:Lcn/kuwo/mod/list/ListMgrImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z

    return-void
.end method

.method public IAppObserver_PrepareExitApp()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$20;->a:Lcn/kuwo/mod/list/ListMgrImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z

    return-void
.end method
