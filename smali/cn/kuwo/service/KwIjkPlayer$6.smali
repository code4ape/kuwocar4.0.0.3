.class Lcn/kuwo/service/KwIjkPlayer$6;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ijkplayer/IMediaPlayer$OnInfoListener;


# instance fields
.field final synthetic a:Lcn/kuwo/service/KwIjkPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/KwIjkPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lorg/ijkplayer/IMediaPlayer;II)Z
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x3

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo: (%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", %d)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_VIDEO_TRACK_LAGGING)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_VIDEO_RENDERING_START)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, v3}, Lcn/kuwo/service/KwIjkPlayer;->e(Lcn/kuwo/service/KwIjkPlayer;I)I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_BUFFERING_START)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->e(Lcn/kuwo/service/KwIjkPlayer;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->f(Lcn/kuwo/service/KwIjkPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, v4}, Lcn/kuwo/service/KwIjkPlayer;->e(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->c(Lcn/kuwo/service/KwIjkPlayer;)Lcn/kuwo/service/IjkPlayerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/IjkPlayerCallback;->onStartBuffering()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_BUFFERING_END)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->e(Lcn/kuwo/service/KwIjkPlayer;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->f(Lcn/kuwo/service/KwIjkPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->c(Lcn/kuwo/service/KwIjkPlayer;)Lcn/kuwo/service/IjkPlayerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/IjkPlayerCallback;->onEndBuffering()V

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, v3}, Lcn/kuwo/service/KwIjkPlayer;->e(Lcn/kuwo/service/KwIjkPlayer;I)I

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo: (MEDIA_INFO_NETWORK_BANDWIDTH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_BAD_INTERLEAVING)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_NOT_SEEKABLE)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_METADATA_UPDATE)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_UNSUPPORTED_SUBTITLE)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_SUBTITLE_TIMED_OUT)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, p3}, Lcn/kuwo/service/KwIjkPlayer;->h(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo: (MEDIA_INFO_VIDEO_ROTATION_CHANGED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_AUDIO_RENDERING_START):"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, v3}, Lcn/kuwo/service/KwIjkPlayer;->e(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->c(Lcn/kuwo/service/KwIjkPlayer;)Lcn/kuwo/service/IjkPlayerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/IjkPlayerCallback;->onStartPlaying()V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: (MEDIA_INFO_AUTOSTOPPED):"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$6;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/KwIjkPlayer;->i()Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_2
        0x2be -> :sswitch_3
        0x2bf -> :sswitch_4
        0x2c0 -> :sswitch_c
        0x320 -> :sswitch_5
        0x321 -> :sswitch_6
        0x322 -> :sswitch_7
        0x385 -> :sswitch_8
        0x386 -> :sswitch_9
        0x2711 -> :sswitch_a
        0x2712 -> :sswitch_b
    .end sparse-switch
.end method
