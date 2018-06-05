.class Lcn/kuwo/service/kwplayer/PlayManager$KwPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/PlayManager;


# direct methods
.method private constructor <init>(Lcn/kuwo/service/kwplayer/PlayManager;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager$KwPhoneStateListener;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/service/kwplayer/PlayManager;Lcn/kuwo/service/kwplayer/PlayManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/PlayManager$KwPhoneStateListener;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, v3}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendAudioFocusToClientBroadcast(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$KwPhoneStateListener;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0, v2}, Lcn/kuwo/service/kwplayer/PlayManager;->access$700(Lcn/kuwo/service/kwplayer/PlayManager;Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendAudioFocusToClientBroadcast(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$KwPhoneStateListener;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0, v2}, Lcn/kuwo/service/kwplayer/PlayManager;->access$300(Lcn/kuwo/service/kwplayer/PlayManager;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
