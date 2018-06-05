.class Lcn/kuwo/mod/list/ListMgrImpl$21;
.super Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$21;->a:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bfb\u53d6uid\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$21;->a:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;I)V

    :cond_0
    return-void
.end method

.method public IUserInfoMgrObserver_OnLogout(ZLjava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "ListMgrImpl"

    const-string v1, "LogOut"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$21;->a:Lcn/kuwo/mod/list/ListMgrImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;I)V

    :cond_0
    return-void
.end method
