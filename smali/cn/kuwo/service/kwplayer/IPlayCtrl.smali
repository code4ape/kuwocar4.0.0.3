.class public interface abstract Lcn/kuwo/service/kwplayer/IPlayCtrl;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBufferPos()I
.end method

.method public abstract getCurrentPos()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getPlayLogInfo(Lcn/kuwo/service/PlayProxy$PlayLogInfo;)Z
.end method

.method public abstract getPreparingPercent()I
.end method

.method public abstract getStatus()Lcn/kuwo/service/PlayProxy$Status;
.end method

.method public abstract pause()V
.end method

.method public abstract play(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayDelegate$ErrorCode;
.end method

.method public abstract resume()V
.end method

.method public abstract seek(I)V
.end method

.method public abstract setDelegate(Lcn/kuwo/service/PlayDelegate;)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract stop(Z)V
.end method
