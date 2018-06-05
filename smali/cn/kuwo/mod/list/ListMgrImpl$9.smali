.class Lcn/kuwo/mod/list/ListMgrImpl$9;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$9;->d:Lcn/kuwo/mod/list/ListMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/list/ListMgrImpl$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/mod/list/ListMgrImpl$9;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcn/kuwo/mod/list/ListMgrImpl$9;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$9;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IListObserver;

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl$9;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/kuwo/mod/list/ListMgrImpl$9;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
