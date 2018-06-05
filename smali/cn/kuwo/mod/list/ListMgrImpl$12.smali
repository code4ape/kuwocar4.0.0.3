.class Lcn/kuwo/mod/list/ListMgrImpl$12;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$12;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IListObserver;

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl$12;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_insertOverflow(Ljava/lang/String;)V

    return-void
.end method
