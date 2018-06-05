.class Lcn/kuwo/base/db/DataBaseManager$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/base/db/DataBaseManager;


# direct methods
.method constructor <init>(Lcn/kuwo/base/db/DataBaseManager;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/db/DataBaseManager$2;->a:Lcn/kuwo/base/db/DataBaseManager;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/DataBaseManager$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IAppObserver;

    invoke-interface {v0}, Lcn/kuwo/core/observers/IAppObserver;->IAppObserver_OnUpdateDatabase()V

    return-void
.end method
