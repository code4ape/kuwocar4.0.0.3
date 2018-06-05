.class Lcn/kuwo/mod/download/DownloadMgrImpl$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/DownloadTask;

.field final synthetic b:Lcn/kuwo/mod/download/DownloadMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/download/DownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl$4;->b:Lcn/kuwo/mod/download/DownloadMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/download/DownloadMgrImpl$4;->a:Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl$4;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IDownloadMgrObserver;

    iget-object v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl$4;->a:Lcn/kuwo/base/bean/DownloadTask;

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IDownloadMgrObserver;->IDownloadObserver_OnProgressChanged(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method
