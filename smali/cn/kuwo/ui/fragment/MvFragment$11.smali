.class Lcn/kuwo/ui/fragment/MvFragment$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$11;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendAudioFocusToClientBroadcast(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$11;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-virtual {v0, v2}, Lcn/kuwo/ui/fragment/MvFragment;->onLostAudioFocus(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendAudioFocusToClientBroadcast(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$11;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0, v2}, Lcn/kuwo/ui/fragment/MvFragment;->access$2900(Lcn/kuwo/ui/fragment/MvFragment;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
