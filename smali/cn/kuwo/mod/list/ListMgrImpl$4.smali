.class Lcn/kuwo/mod/list/ListMgrImpl$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$4;->b:Lcn/kuwo/mod/list/ListMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/list/ListMgrImpl$4;->a:Ljava/util/Collection;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$4;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl$4;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v1, Lcn/kuwo/core/observers/IListObserver;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_deleteList(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
