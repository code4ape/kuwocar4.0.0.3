.class Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$7;
.super Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$7;->a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$7;->a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->i()Lcn/kuwo/base/bean/VipInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    const-string v2, "local_vip_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/VipInfo;->b()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/VipInfo;->c()I

    move-result v1

    const/16 v2, 0x3a98

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/VipInfo;->c()I

    :cond_0
    return-void
.end method
