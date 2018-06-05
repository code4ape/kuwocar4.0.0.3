.class Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/kuwo/mod/localmgr/LocalMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/localmgr/LocalMgrImpl;IIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->e:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iput p2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->a:I

    iput p3, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->b:I

    iput p4, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->c:I

    iput-object p5, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ILocalMgrObserver;

    iget v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->a:I

    iget v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->b:I

    iget v3, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->c:I

    iget-object v4, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/kuwo/core/observers/ILocalMgrObserver;->ILocalMgrObserver_OnProgress(IIILjava/lang/String;)V

    return-void
.end method
