.class Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/IjkPlayerCallback;


# instance fields
.field final synthetic a:Lcn/kuwo/service/IjkPlayerPlayCtrl;


# direct methods
.method private constructor <init>(Lcn/kuwo/service/IjkPlayerPlayCtrl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/IjkPlayerPlayCtrl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;-><init>(Lcn/kuwo/service/IjkPlayerPlayCtrl;)V

    return-void
.end method


# virtual methods
.method public onBuffering(F)V
    .locals 3

    invoke-static {}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cachePercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    float-to-int v1, p1

    invoke-static {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I

    return-void
.end method

.method public onEncounteredError(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ijkplayer play \u300a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->i(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/KwIjkPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/KwIjkPlayer;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u300berror : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayDelegate$ErrorCode;->j:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {v1, v2, v0}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->o:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    const-string v2, "ijkplayer io error!"

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->i:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    const-string v2, "ijkplayer error \"No such file or directory\"!!!"

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->q:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    const-string v2, "ijkplayer network error!"

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x6f -> :sswitch_2
    .end sparse-switch
.end method

.method public onEndBuffering()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/service/IjkPlayerPlayCtrl;J)J

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayStateNotify;->b()V

    goto :goto_0
.end method

.method public onPlayerPaused()V
    .locals 0

    return-void
.end method

.method public onPlayerStopped()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/PlayStateNotify;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    invoke-static {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/PlayProxy$Status;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    return-void
.end method

.method public onStartBuffering()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/service/IjkPlayerPlayCtrl;J)J

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/PlayStateNotify;->c(Lcn/kuwo/service/PlayProxy$Status;)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    invoke-static {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/PlayProxy$Status;)V

    goto :goto_0
.end method

.method public onStartPlaying()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayProxy$Status;J)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    invoke-static {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/PlayProxy$Status;)V

    return-void
.end method
