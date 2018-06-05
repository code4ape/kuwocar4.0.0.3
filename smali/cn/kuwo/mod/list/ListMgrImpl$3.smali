.class Lcn/kuwo/mod/list/ListMgrImpl$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/MusicListInner;

.field final synthetic b:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;Lcn/kuwo/mod/list/MusicListInner;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$3;->b:Lcn/kuwo/mod/list/ListMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/list/ListMgrImpl$3;->a:Lcn/kuwo/mod/list/MusicListInner;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$3;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IListObserver;

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl$3;->a:Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_insertList(Ljava/lang/String;)V

    return-void
.end method
