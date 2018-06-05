.class Lcn/kuwo/mod/userinfo/SignResultHandler$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/mod/userinfo/SignResultHandler;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$2;->c:Lcn/kuwo/mod/userinfo/SignResultHandler;

    iput-object p2, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IUserInfoMgrObserver;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IUserInfoMgrObserver;->IUserInfoMgrObserver_OnReg(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
