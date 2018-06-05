.class public Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private a:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->c()V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->n()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->q()Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;->c()V

    return-void
.end method
