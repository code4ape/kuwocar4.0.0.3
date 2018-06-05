.class public Lcn/kuwo/base/util/NotificationUtils;
.super Ljava/lang/Object;


# static fields
.field public static final NOTIFICATION_ID_DOWNLOAD:I = 0x10702

.field public static final NOTIFICATION_ID_DOWNLOAD_GAME:I = 0x1070a

.field public static final NOTIFICATION_ID_LOGIN:I = 0x10703

.field public static final NOTIFICATION_ID_PLAY:I = 0x10701

.field public static final NOTIFICATION_ID_PUSHMSG_ALBUM:I = 0x10708

.field public static final NOTIFICATION_ID_PUSHMSG_PLIST:I = 0x10705

.field public static final NOTIFICATION_ID_PUSHMSG_SKIN:I = 0x10707

.field public static final NOTIFICATION_ID_PUSHMSG_SONG:I = 0x10706

.field public static final NOTIFICATION_ID_REALPUSH:I = 0x10709

.field public static final NOTIFICATION_ID_WIFISHARE:I = 0x10704


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lcn/kuwo/base/util/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcn/kuwo/base/util/NotificationUtils;->loadBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {p0, p1}, Lcn/kuwo/base/util/NotificationUtils;->loadBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private static loadBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static notify(Landroid/content/Context;ILandroid/app/Notification;Z)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p0, p1}, Lcn/kuwo/base/util/NotificationUtils;->cancel(Landroid/content/Context;I)V

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcn/kuwo/base/util/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static notifyDownLoad(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    const v3, 0x7f02009d

    const/4 v1, 0x0

    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f02009c

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/kuwo/base/util/NotificationUtils;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/kuwo/base/util/NotificationUtils;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, p7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v3, 0x64

    if-nez p6, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lcn/kuwo/base/util/NotificationUtils;->notify(Landroid/content/Context;ILandroid/app/Notification;Z)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static notifyPushMsg(Landroid/content/Context;Landroid/app/PendingIntent;Lcn/kuwo/mod/push/PushMsgBody;Z)V
    .locals 4

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p2}, Lcn/kuwo/mod/push/PushMsgBody;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v0, 0x7f0200f4

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-static {p0}, Lcn/kuwo/base/util/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    if-eqz p3, :cond_0

    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->defaults:I

    :goto_1
    const v2, 0x10709

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u9177\u6211\u97f3\u4e50"

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->defaults:I

    goto :goto_1
.end method
