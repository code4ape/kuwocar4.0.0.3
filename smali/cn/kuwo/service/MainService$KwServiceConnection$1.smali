.class Lcn/kuwo/service/MainService$KwServiceConnection$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/service/MainService$KwServiceConnection;


# direct methods
.method constructor <init>(Lcn/kuwo/service/MainService$KwServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/MainService$KwServiceConnection$1;->a:Lcn/kuwo/service/MainService$KwServiceConnection;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/MainService$KwServiceConnection$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IAppObserver;

    invoke-interface {v0}, Lcn/kuwo/core/observers/IAppObserver;->IAppObserver_InitFinished()V

    const-string v0, "\u670d\u52a1"

    const-string v1, "onServiceConnected--"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
