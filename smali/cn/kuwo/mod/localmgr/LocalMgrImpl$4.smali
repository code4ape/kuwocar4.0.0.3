.class Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcn/kuwo/mod/localmgr/LocalMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/localmgr/LocalMgrImpl;ZIILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->e:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iput-boolean p2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->a:Z

    iput p3, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->b:I

    iput p4, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->c:I

    iput-object p5, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ILocalMgrObserver;

    iget-boolean v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->b:I

    iget v3, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->c:I

    iget-object v4, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/kuwo/core/observers/ILocalMgrObserver;->ILocalMgrObserver_OnFinished(IIILjava/util/Collection;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
