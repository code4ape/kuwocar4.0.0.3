.class Lcn/kuwo/service/PlayProxy$8;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/audioeffect/EqualizerItem;


# virtual methods
.method public call()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/PlayProxy$8;->a:Lcn/kuwo/mod/audioeffect/EqualizerItem;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/kwplayer/PlayManager;->setEqulizer(Lcn/kuwo/mod/audioeffect/EqualizerItem;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
