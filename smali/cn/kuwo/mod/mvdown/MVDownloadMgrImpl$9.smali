.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$9;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$9;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$9;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVDownloadMgrObserver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IMVDownloadMgrObserver;->IDownloadObserver_OnListChanged(I)V

    return-void
.end method
