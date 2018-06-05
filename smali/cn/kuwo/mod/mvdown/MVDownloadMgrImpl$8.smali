.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$8;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/DownloadTask;

.field final synthetic b:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$8;->b:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$8;->a:Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$8;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVDownloadMgrObserver;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$8;->a:Lcn/kuwo/base/bean/DownloadTask;

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IMVDownloadMgrObserver;->IDownloadObserver_OnProgressChanged(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method
