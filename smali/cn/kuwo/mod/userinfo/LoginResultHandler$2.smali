.class Lcn/kuwo/mod/userinfo/LoginResultHandler$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/userinfo/LoginResultHandler;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler$2;->a:Lcn/kuwo/mod/userinfo/LoginResultHandler;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IUserInfoMgrObserver;

    const/4 v1, 0x1

    const-string v2, "online"

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/IUserInfoMgrObserver;->IUserInfoMgrObserver_OnUserStatusChange(ZLjava/lang/String;)V

    return-void
.end method
