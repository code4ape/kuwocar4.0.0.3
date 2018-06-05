.class Lcn/kuwo/mod/list/ListMgrImpl$19$1$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/ListMgrImpl$19$1;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl$19$1;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1$2;->a:Lcn/kuwo/mod/list/ListMgrImpl$19$1;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IListObserver;

    invoke-interface {v0}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_loadComplete()V

    return-void
.end method
