.class public Lcn/kuwo/kwmusiccar/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final EXTRA:Ljava/lang/String; = "EXTRA"

.field public static final Hardware_MediaButton:Ljava/lang/String; = "Hardware_MediaButton"

.field public static final KUWO_CARMUSIC_MEDIABUTTON_ACTION:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

.field public static final MEDIA_CIRCLE:Ljava/lang/String; = "MEDIA_CIRCLE"

.field public static final MEDIA_MUTE:Ljava/lang/String; = "MEDIA_MUTE"

.field public static final MEDIA_NEXT:Ljava/lang/String; = "MEDIA_NEXT"

.field public static final MEDIA_ONE:Ljava/lang/String; = "MEDIA_ONE"

.field public static final MEDIA_ORDER:Ljava/lang/String; = "MEDIA_ORDER"

.field public static final MEDIA_PAUSE:Ljava/lang/String; = "MEDIA_PAUSE"

.field public static final MEDIA_PLAY:Ljava/lang/String; = "MEDIA_PLAY"

.field public static final MEDIA_PLAY_PAUSE:Ljava/lang/String; = "MEDIA_PLAY_PAUSE"

.field public static final MEDIA_PRE:Ljava/lang/String; = "MEDIA_PRE"

.field public static final MEDIA_RANDOM:Ljava/lang/String; = "MEDIA_RANDOM"

.field public static final MEDIA_SINGLE:Ljava/lang/String; = "MEDIA_SINGLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const-string v3, "MediaButtonReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received key code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    move-object v0, v1

    :goto_1
    const-string v1, "MediaButtonReceiver"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXTRA"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Hardware_MediaButton"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_0
    const-string v0, "MEDIA_NEXT"

    goto :goto_1

    :sswitch_1
    const-string v0, "MEDIA_PLAY_PAUSE"

    goto :goto_1

    :sswitch_2
    const-string v0, "MEDIA_PRE"

    goto :goto_1

    :sswitch_3
    const-string v0, "MEDIA_PLAY"

    goto :goto_1

    :sswitch_4
    const-string v0, "MEDIA_PAUSE"

    goto :goto_1

    :sswitch_5
    const-string v0, "MEDIA_MUTE"

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_2
        0x5b -> :sswitch_5
        0x7e -> :sswitch_3
        0x7f -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcn/kuwo/kwmusiccar/MediaButtonReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
