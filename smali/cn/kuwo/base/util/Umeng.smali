.class public Lcn/kuwo/base/util/Umeng;
.super Ljava/lang/Object;


# static fields
.field private static ACTION_CLICK_PUSH_NOTIFICATION_EVENT:Ljava/lang/String;

.field private static ACTION_SHOW_PUSH_NOTIFICATION_EVENT:Ljava/lang/String;

.field private static isSendUmengLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/util/Umeng;->isSendUmengLog:Z

    const-string v0, "action_push_show_notification_event"

    sput-object v0, Lcn/kuwo/base/util/Umeng;->ACTION_SHOW_PUSH_NOTIFICATION_EVENT:Ljava/lang/String;

    const-string v0, "action_click_push_notification_event"

    sput-object v0, Lcn/kuwo/base/util/Umeng;->ACTION_CLICK_PUSH_NOTIFICATION_EVENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAppExit(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static onPushNotificationClickEVENT(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/util/Umeng;->isSendUmengLog:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/base/util/Umeng;->ACTION_CLICK_PUSH_NOTIFICATION_EVENT:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onPushNotificationShowEVENT(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/util/Umeng;->isSendUmengLog:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/base/util/Umeng;->ACTION_SHOW_PUSH_NOTIFICATION_EVENT:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
