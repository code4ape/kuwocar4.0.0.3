.class Lcn/kuwo/ui/fragment/NowPlayingFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/NowPlayingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment$1;->this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0xb

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment$1;->this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment$1;->this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/kuwo/base/util/MusicListUtils;->downloadMusic(Landroid/content/Context;Lcn/kuwo/base/bean/Music;)V

    goto :goto_0

    :sswitch_2
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/kuwo/base/util/MusicListUtils;->favoriteSong(Lcn/kuwo/base/bean/Music;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    const-string v0, "from_now_playing"

    invoke-static {v2, v0}, Lcn/kuwo/ui/JumpUtils;->jump(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jumpToSimilarSong(Lcn/kuwo/base/bean/Music;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment$1;->this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->access$000(Lcn/kuwo/ui/fragment/NowPlayingFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    invoke-static {v2}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0014 -> :sswitch_3
        0x7f0b003b -> :sswitch_5
        0x7f0b005a -> :sswitch_2
        0x7f0b0072 -> :sswitch_1
        0x7f0b0074 -> :sswitch_0
        0x7f0b0075 -> :sswitch_4
    .end sparse-switch
.end method
