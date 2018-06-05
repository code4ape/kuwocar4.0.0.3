.class public interface abstract Lcn/kuwo/core/observers/IDownloadMgrObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/messagemgr/IObserverBase;


# virtual methods
.method public abstract IDownloadObserver_OnListChanged(I)V
.end method

.method public abstract IDownloadObserver_OnProgressChanged(Lcn/kuwo/base/bean/DownloadTask;)V
.end method

.method public abstract IDownloadObserver_OnStateChanged(Lcn/kuwo/base/bean/DownloadTask;)V
.end method
