.class public Lcn/kuwo/mod/notification/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v1

    const-string v2, "kuwo.musichd_car.desklrc.lock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    const-string v1, "desk_lrc_lock_status"

    invoke-static {v0, v1, v4, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "kuwo.musichd_car.desklrc.enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, ""

    const-string v2, "desk_lrc_enable"

    invoke-static {v0, v2, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    const-string v2, "desk_lrc_enable"

    invoke-static {v0, v2, v4, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    :goto_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/notification/INotificationMgr;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    const-string v2, "desk_lrc_enable"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_1

    :cond_3
    const-string v1, "kuwo.musichd_car.next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->i()Z

    goto :goto_0

    :cond_4
    const-string v1, "kuwo.musichd_car.playing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v2, v1, :cond_5

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->h()Z

    :cond_5
    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v2, v1, :cond_6

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->g()V

    :cond_6
    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v2, v1, :cond_7

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->h()Z

    :cond_7
    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v2, v1, :cond_0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->h()Z

    goto :goto_0

    :cond_8
    const-string v1, "kuwo.musichd_car.pre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->j()Z

    goto :goto_0

    :cond_9
    const-string v1, "kuwo.musichd_car.exitapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->exitApp()V

    goto/16 :goto_0
.end method
