.class Lcn/kuwo/kwmusiccar/KwCarPlay$CarPlayBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/kwmusiccar/KwCarPlay$1;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay$CarPlayBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "kuwo_key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.kuwo.kwmusicauto.action.EXITAPP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/App;->hasRightKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->exitApp()V

    goto :goto_0

    :cond_2
    const-string v2, "cn.kuwo.kwmusicauto.action.OPEN_DESKLYRIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/App;->hasRightKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, ""

    const-string v1, "desk_lrc_enable"

    invoke-static {v0, v1, v3, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_0

    :cond_3
    const-string v2, "cn.kuwo.kwmusicauto.action.CLOSE_DESKLYRIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/App;->hasRightKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, ""

    const-string v1, "desk_lrc_enable"

    invoke-static {v0, v1, v4, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_0

    :cond_4
    const-string v1, "cn.kuwo.kwmusicauto.action.CLOSE_TOAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, ""

    const-string v1, "key_pref_toast_show"

    invoke-static {v0, v1, v4, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_0

    :cond_5
    const-string v1, "cn.kuwo.kwmusicauto.action.OPEN_TOAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, ""

    const-string v1, "key_pref_toast_show"

    invoke-static {v0, v1, v3, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_0

    :cond_6
    const-string v1, "cn.kuwo.kwmusicauto.action.SET_FULL_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_full_screen"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ""

    const-string v2, "key_set_full_screen"

    invoke-static {v1, v2, v0, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_0
.end method
