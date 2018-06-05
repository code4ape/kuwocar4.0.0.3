.class public Lcn/kuwo/kwmusiccar/PlayMusicReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "cn.kuwo.kwmusicauto.action.PLAY_ALL_MUSIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->playMusicList(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->startActivityPlayMuisics(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
