.class Lcn/kuwo/kwmusiccar/App$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/App;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/App;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/App$1;->this$0:Lcn/kuwo/kwmusiccar/App;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/kwmusiccar/App$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IAppObserver;

    invoke-interface {v0}, Lcn/kuwo/core/observers/IAppObserver;->IAppObserver_PrepareExitApp()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
