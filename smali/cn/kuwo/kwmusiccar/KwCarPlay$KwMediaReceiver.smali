.class Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/kwmusiccar/KwCarPlay$1;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;-><init>()V

    return-void
.end method

.method private onMediaButtonClick(Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Hardware_MediaButton"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "kuwo_key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/kwmusiccar/App;->hasRightKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "EXTRA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "MEDIA_CIRCLE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(I)V

    goto :goto_0

    :cond_2
    const-string v4, "MEDIA_ONE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(I)V

    goto :goto_0

    :cond_3
    const-string v4, "MEDIA_ORDER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(I)V

    goto :goto_0

    :cond_4
    const-string v4, "MEDIA_RANDOM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x3

    invoke-interface {v3, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(I)V

    goto :goto_0

    :cond_5
    const-string v4, "MEDIA_PRE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$502(Z)Z

    sget-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Pre:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    invoke-direct {p0, v0}, Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;->onMediaButtonClick(Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->j()Z

    goto :goto_0

    :cond_6
    const-string v4, "MEDIA_NEXT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$502(Z)Z

    sget-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Next:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    invoke-direct {p0, v0}, Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;->onMediaButtonClick(Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->i()Z

    goto :goto_0

    :cond_7
    const-string v4, "MEDIA_PLAY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$502(Z)Z

    sget-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Play:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    invoke-direct {p0, v0}, Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;->onMediaButtonClick(Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->h()Z

    goto/16 :goto_0

    :cond_8
    const-string v4, "MEDIA_PAUSE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v1, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Pause:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    invoke-direct {p0, v1}, Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;->onMediaButtonClick(Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->g()V

    :cond_9
    invoke-static {v0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$502(Z)Z

    goto/16 :goto_0

    :cond_a
    const-string v4, "MEDIA_MUTE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->m()Z

    move-result v2

    if-nez v2, :cond_b

    :goto_1
    invoke-interface {v3, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Z)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_1

    :cond_c
    const-string v4, "MEDIA_PLAY_PAUSE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->PlayPause:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    invoke-direct {p0, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;->onMediaButtonClick(Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v2

    sget-object v4, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v4, v2, :cond_d

    sget-object v4, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v4, v2, :cond_e

    :cond_d
    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->h()Z

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$502(Z)Z

    goto/16 :goto_0

    :cond_e
    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->g()V

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$502(Z)Z

    goto/16 :goto_0
.end method
