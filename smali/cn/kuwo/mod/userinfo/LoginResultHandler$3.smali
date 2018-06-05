.class Lcn/kuwo/mod/userinfo/LoginResultHandler$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcn/kuwo/mod/userinfo/LoginResultHandler;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler$3;->b:Lcn/kuwo/mod/userinfo/LoginResultHandler;

    iput-object p2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler$3;->a:Ljava/util/Map;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler$3;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IUserInfoMgrObserver;

    const/4 v2, 0x1

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler$3;->a:Ljava/util/Map;

    const-string v3, "result"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "-1"

    invoke-interface {v0, v2, v1, v3}, Lcn/kuwo/core/observers/IUserInfoMgrObserver;->IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
