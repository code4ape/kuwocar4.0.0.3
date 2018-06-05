.class Lcn/kuwo/mod/list/ListMgrImpl$11;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$11;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/list/ListMgrImpl$11;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/mod/list/ListMgrImpl$11;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$11;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IListObserver;

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl$11;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/kuwo/mod/list/ListMgrImpl$11;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
