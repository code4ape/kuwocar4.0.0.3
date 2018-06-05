.class Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$1;->a:Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IUserInfoMgrObserver;

    const/4 v1, 0x0

    const-string v2, "\u5f53\u524d\u5df2\u7ecf\u662f\u767b\u5f55\u72b6\u6001\uff0c\u7981\u6b62\u91cd\u590d\u767b\u5f55"

    const-string v3, "0"

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IUserInfoMgrObserver;->IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
