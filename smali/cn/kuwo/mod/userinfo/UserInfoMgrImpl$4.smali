.class Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;I)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$4;->b:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;

    iput p2, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$4;->a:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$4;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IUserInfoMgrObserver;

    const/4 v1, 0x1

    const-string v2, "\u767b\u51fa\u6210\u529f"

    iget v3, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$4;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IUserInfoMgrObserver;->IUserInfoMgrObserver_OnLogout(ZLjava/lang/String;I)V

    return-void
.end method
