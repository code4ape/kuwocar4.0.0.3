.class public Lcn/kuwo/mod/push/PushService;
.super Landroid/app/Service;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/push/PushService;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/push/PushService;->a:Z

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->a()Lcn/kuwo/mod/push/PushServiceUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcn/kuwo/mod/push/PushServiceUtils;->b(Landroid/content/ContextWrapper;)V

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/mod/push/PushService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-static {}, Lcn/kuwo/mod/push/PushLog;->a()Lcn/kuwo/base/log/DebugLogger;

    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service\u542f\u52a8\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->a()Lcn/kuwo/mod/push/PushServiceUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcn/kuwo/mod/push/PushServiceUtils;->a(Landroid/content/ContextWrapper;)V

    :cond_0
    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/kuwo/mod/push/PushManager;->a(Lcn/kuwo/mod/push/PushService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/mod/push/PushService;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcn/kuwo/mod/push/PushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/push/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    const-string v0, "PushService"

    const-string v1, "\u91cd\u65b0\u542f\u52a8"

    invoke-static {v0, v1}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "setting.open.push"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "push_setting_state"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/kuwo/base/config/basic/PrefsUtils;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    const-string v2, "push_setting_state"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "real_push_state\u542f\u52a8\u72b6\u6001\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/mod/push/PushService;->a()V

    :goto_1
    return v0

    :cond_1
    if-eqz v2, :cond_0

    const-string v3, "setting.close.push"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "push_setting_state"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcn/kuwo/base/config/basic/PrefsUtils;->b(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    const-string v2, "PushHandler.stop"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/mod/push/PushService;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move v0, v1

    goto :goto_1
.end method
