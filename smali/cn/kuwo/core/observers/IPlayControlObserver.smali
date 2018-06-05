.class public interface abstract Lcn/kuwo/core/observers/IPlayControlObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/messagemgr/IObserverBase;


# virtual methods
.method public abstract IPlayControlObserver_ChangeCurList()V
.end method

.method public abstract IPlayControlObserver_ChangePlayMode(I)V
.end method

.method public abstract IPlayControlObserver_Continue()V
.end method

.method public abstract IPlayControlObserver_FFTDataReceive([D[D)V
.end method

.method public abstract IPlayControlObserver_Pause()V
.end method

.method public abstract IPlayControlObserver_Play(Lcn/kuwo/base/bean/Music;)V
.end method

.method public abstract IPlayControlObserver_PlayFailed(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
.end method

.method public abstract IPlayControlObserver_PlayStop(Z)V
.end method

.method public abstract IPlayControlObserver_PreSart(Lcn/kuwo/base/bean/Music;Z)V
.end method

.method public abstract IPlayControlObserver_ReadyPlay(Lcn/kuwo/base/bean/Music;)V
.end method

.method public abstract IPlayControlObserver_RealPlay(Lcn/kuwo/base/bean/Music;)V
.end method

.method public abstract IPlayControlObserver_SetMute(Z)V
.end method

.method public abstract IPlayControlObserver_SetVolumn(I)V
.end method

.method public abstract IPlayControlObserver_WaitForBuffering()V
.end method

.method public abstract IPlayControlObserver_WaitForBufferingFinish()V
.end method
