.class Lcn/kuwo/mod/userinfo/SignResultHandler$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/kuwo/mod/userinfo/SignResultHandler;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$3;->b:Lcn/kuwo/mod/userinfo/SignResultHandler;

    iput-object p2, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$3;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IUserInfoMgrObserver;

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$3;->a:Ljava/lang/String;

    const-string v3, "-1"

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IUserInfoMgrObserver;->IUserInfoMgrObserver_OnSendRegSms(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
