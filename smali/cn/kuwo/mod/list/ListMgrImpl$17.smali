.class Lcn/kuwo/mod/list/ListMgrImpl$17;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$17;->b:Lcn/kuwo/mod/list/ListMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/list/ListMgrImpl$17;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$17;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IListObserver;

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl$17;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
