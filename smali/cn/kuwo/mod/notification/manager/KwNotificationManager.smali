.class public Lcn/kuwo/mod/notification/manager/KwNotificationManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;

.field private c:Landroid/app/NotificationManager;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->d:J

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    new-instance v0, Lcn/kuwo/mod/notification/manager/NotificationIntentBuilderImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/notification/manager/NotificationIntentBuilderImpl;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b:Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;

    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->c:Landroid/app/NotificationManager;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 11

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b:Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;

    const v2, 0x10705

    iget-object v3, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-interface {v0, v2, v3}, Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;->a(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b:Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;

    const v3, 0x10706

    iget-object v4, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-interface {v2, v3, v4}, Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;->a(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b:Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;

    const v4, 0x10707

    iget-object v5, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-interface {v3, v4, v5}, Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;->a(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b:Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;

    const v5, 0x10708

    iget-object v6, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-interface {v4, v5, v6}, Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;->a(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b:Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;

    const v6, 0x10709

    iget-object v7, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-interface {v5, v6, v7}, Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;->a(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v6, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b:Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;

    const v7, 0x1070f

    iget-object v8, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-interface {v6, v7, v8}, Lcn/kuwo/mod/notification/manager/INotificationIntentBuilder;->a(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    const v7, 0x7f0200f4

    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v7

    const-string v0, ""

    const-string v8, "desk_lrc_enable"

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v0, v8, :cond_0

    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v9, 0x7f04002b

    invoke-direct {v8, v0, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v9, 0x7f0b001e

    if-nez p1, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f0200f4

    invoke-direct {p0, v0, v10}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {v8, v9, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v0, 0x7f0b001f

    invoke-virtual {v8, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b0020

    invoke-virtual {v8, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, 0x7f0b0022

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v7, :cond_4

    const v0, 0x7f02001e

    :goto_1
    invoke-virtual {v8, v9, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b0024

    const/16 v9, 0x8

    invoke-virtual {v8, v0, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b0022

    invoke-virtual {v8, v0, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0b0023

    invoke-virtual {v8, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0b0024

    invoke-virtual {v8, v0, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0b0025

    invoke-virtual {v8, v0, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v0, v8, :cond_2

    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v9, 0x7f040001

    invoke-direct {v8, v0, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f0b001e

    if-nez p1, :cond_1

    iget-object v9, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200f4

    invoke-direct {p0, v9, v10}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    invoke-virtual {v8, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v0, 0x7f0b001f

    invoke-virtual {v8, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b0020

    invoke-virtual {v8, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, 0x7f0b0022

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v7, :cond_5

    const v0, 0x7f02001e

    :goto_2
    invoke-virtual {v8, v9, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b0024

    const/16 v7, 0x8

    invoke-virtual {v8, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b0021

    invoke-virtual {v8, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0b0022

    invoke-virtual {v8, v0, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0b0023

    invoke-virtual {v8, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0b0024

    invoke-virtual {v8, v0, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0b0025

    invoke-virtual {v8, v0, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iput-object v8, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_2
    return-object v1

    :cond_3
    move-object v0, p1

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f020017

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f020017

    goto :goto_2
.end method

.method private a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILandroid/app/Notification;Z)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const v4, 0x10702

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v4, v0, v1}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(ILandroid/app/Notification;Z)V

    invoke-virtual {p0, v4}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(I)V

    return-void
.end method

.method private b(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public a(Landroid/app/Service;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "\u542c\u97f3\u4e50  \u7528\u9177\u6211"

    iget-object v1, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p0, v2, v1, v3, v0}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x10703

    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :cond_0
    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v1, v0, v2, p2}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p2}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->c:Landroid/app/NotificationManager;

    const v2, 0x10703

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a:Landroid/content/Context;

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2, p2}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-eq p3, v1, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p2}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p2}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->c:Landroid/app/NotificationManager;

    const v2, 0x10703

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 1

    const v0, 0x10702

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(I)V

    return-void
.end method

.method public c(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
