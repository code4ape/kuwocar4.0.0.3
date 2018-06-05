.class final Lcn/kuwo/mod/userinfo/UserInfoHelper$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoHelper$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IUserInfoMgrObserver;

    const-string v1, "\u9000\u51fa\u6210\u529f"

    invoke-interface {v0, v2, v1, v2}, Lcn/kuwo/core/observers/IUserInfoMgrObserver;->IUserInfoMgrObserver_OnLogout(ZLjava/lang/String;I)V

    return-void
.end method
