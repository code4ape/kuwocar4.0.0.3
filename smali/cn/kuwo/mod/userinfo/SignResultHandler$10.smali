.class Lcn/kuwo/mod/userinfo/SignResultHandler$10;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/userinfo/SignResultHandler;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/SignResultHandler;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$10;->a:Lcn/kuwo/mod/userinfo/SignResultHandler;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler$10;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IUserInfoMgrObserver;

    const/4 v1, 0x0

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u9519\u8bef"

    const-string v3, "0"

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IUserInfoMgrObserver;->IUserInfoMgrObserver_OnReg(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
