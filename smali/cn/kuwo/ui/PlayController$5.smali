.class Lcn/kuwo/ui/PlayController$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CLICK_TIME_INTERVAL:J = 0x1f4L


# instance fields
.field private lastClickTime:J

.field final synthetic this$0:Lcn/kuwo/ui/PlayController;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/PlayController;)V
    .locals 2

    iput-object p1, p0, Lcn/kuwo/ui/PlayController$5;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/ui/PlayController$5;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/16 v7, 0xb

    const/4 v6, 0x6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/ui/PlayController$5;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide v0, p0, Lcn/kuwo/ui/PlayController$5;->lastClickTime:J

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/kwmusiccar/MainActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    :pswitch_2
    instance-of v0, v1, Lcn/kuwo/ui/fragment/NowPlayingFragment;

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    const-string v0, "from_sound_effect"

    invoke-static {v6, v0}, Lcn/kuwo/ui/JumpUtils;->jump(ILjava/lang/String;)V

    :cond_3
    invoke-static {v6}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "\u6682\u65e0\u64ad\u653e\u6b4c\u66f2"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->g()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->h()Z

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "\u6682\u65e0\u64ad\u653e\u6b4c\u66f2"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->i()Z

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "\u6682\u65e0\u64ad\u653e\u6b4c\u66f2"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->j()Z

    goto/16 :goto_0

    :pswitch_6
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(I)V

    invoke-static {}, Lcn/kuwo/ui/PlayController;->access$200()[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    if-nez v0, :cond_8

    const-string v0, "\u6ca1\u6709\u64ad\u653e\u7684\u5217\u8868"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-ne v1, v2, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u64ad\u653e\u7535\u53f0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcn/kuwo/ui/PlayController$5;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-virtual {v0}, Lcn/kuwo/ui/PlayController;->isPlaylistShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$5;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-virtual {v0}, Lcn/kuwo/ui/PlayController;->showPlaylist()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcn/kuwo/ui/PlayController$5;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-virtual {v0}, Lcn/kuwo/ui/PlayController;->hidePlaylist()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcn/kuwo/ui/PlayController$5;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-static {v1}, Lcn/kuwo/ui/PlayController;->access$300(Lcn/kuwo/ui/PlayController;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/kuwo/ui/PlayController$5$1;

    invoke-direct {v2, p0}, Lcn/kuwo/ui/PlayController$5$1;-><init>(Lcn/kuwo/ui/PlayController$5;)V

    invoke-static {v1, v0, v2}, Lcn/kuwo/base/util/MusicListUtils;->clearList(Landroid/content/Context;Lcn/kuwo/base/bean/MusicList;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V

    goto/16 :goto_0

    :pswitch_a
    instance-of v0, v1, Lcn/kuwo/ui/fragment/NowPlayingFragment;

    if-eqz v0, :cond_a

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    const-string v0, "from_now_playing"

    invoke-static {v7, v0}, Lcn/kuwo/ui/JumpUtils;->jump(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v7}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0009
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
