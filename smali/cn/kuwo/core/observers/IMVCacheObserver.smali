.class public interface abstract Lcn/kuwo/core/observers/IMVCacheObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/messagemgr/IObserverBase;


# virtual methods
.method public abstract onDownCacheFileFailed(I)V
.end method

.method public abstract onDownCacheFileProcess(I)V
.end method

.method public abstract onDownCacheFileStart()V
.end method

.method public abstract onDownCacheFileSuccess(Ljava/lang/String;)V
.end method

.method public abstract onGetMVPlayerCacheFile(Landroid/net/Uri;Z)V
.end method

.method public abstract onGetMVPlayerDownedFile(Landroid/net/Uri;)V
.end method

.method public abstract onGetMVPlayerUrl(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract onGetMVPlayerUrlFailed(I)V
.end method

.method public abstract onOldCacheLoaded(J)V
.end method

.method public abstract onWoProxyChanged(Z)V
.end method
