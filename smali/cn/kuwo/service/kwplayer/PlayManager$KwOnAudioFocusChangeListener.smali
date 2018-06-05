.class Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/PlayManager;


# direct methods
.method private constructor <init>(Lcn/kuwo/service/kwplayer/PlayManager;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/service/kwplayer/PlayManager;Lcn/kuwo/service/kwplayer/PlayManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendAudioFocusToClientBroadcast(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0, v2}, Lcn/kuwo/service/kwplayer/PlayManager;->access$300(Lcn/kuwo/service/kwplayer/PlayManager;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->access$400(Lcn/kuwo/service/kwplayer/PlayManager;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->access$500(Lcn/kuwo/service/kwplayer/PlayManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->access$600(Lcn/kuwo/service/kwplayer/PlayManager;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendAudioFocusToClientBroadcast(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0, v2}, Lcn/kuwo/service/kwplayer/PlayManager;->access$700(Lcn/kuwo/service/kwplayer/PlayManager;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
