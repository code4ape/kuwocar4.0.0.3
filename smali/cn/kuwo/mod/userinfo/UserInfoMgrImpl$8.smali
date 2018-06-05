.class Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$8;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$8;->a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final IAppObserver_NetworkStateChanged(ZZ)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$8;->a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->e()I

    move-result v0

    sget v1, Lcn/kuwo/base/bean/UserInfo;->e:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$8;->a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->l()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$8;->a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->m()V

    goto :goto_0
.end method
