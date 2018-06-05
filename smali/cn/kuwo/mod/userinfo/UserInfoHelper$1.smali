.class final Lcn/kuwo/mod/userinfo/UserInfoHelper$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoHelper$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IUserInfoMgrObserver;

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "-1"

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IUserInfoMgrObserver;->IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
