.class Lcn/kuwo/mod/list/CloudMgrImpl$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/MusicListInner;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcn/kuwo/mod/list/CloudMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/mod/list/MusicListInner;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$2;->d:Lcn/kuwo/mod/list/CloudMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/list/CloudMgrImpl$2;->a:Lcn/kuwo/mod/list/MusicListInner;

    iput-object p3, p0, Lcn/kuwo/mod/list/CloudMgrImpl$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcn/kuwo/mod/list/CloudMgrImpl$2;->c:Ljava/util/List;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IListObserver;

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$2;->a:Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl$2;->b:Ljava/util/List;

    iget-object v3, p0, Lcn/kuwo/mod/list/CloudMgrImpl$2;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/IListObserver;->IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
