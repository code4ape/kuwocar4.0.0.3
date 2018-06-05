.class Lcn/kuwo/mod/list/ListMgrImpl$13;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$13;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IListObserver;

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl$13;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/kuwo/mod/list/ListMgrImpl$13;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
