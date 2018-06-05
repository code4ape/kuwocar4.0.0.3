.class final Lcn/kuwo/base/db/DataBaseManager$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/DataBaseManager$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IAppObserver;

    invoke-interface {v0}, Lcn/kuwo/core/observers/IAppObserver;->IAppObserver_OnUpdateDatabase()V

    return-void
.end method
