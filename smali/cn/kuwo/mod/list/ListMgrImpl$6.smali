.class Lcn/kuwo/mod/list/ListMgrImpl$6;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$6;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/list/ListMgrImpl$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/mod/list/ListMgrImpl$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$6;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IListObserver;

    iget-object v1, p0, Lcn/kuwo/mod/list/ListMgrImpl$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl$6;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_changeName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
