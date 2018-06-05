.class public Lcn/kuwo/mod/push/PushHandler;
.super Landroid/os/Handler;


# static fields
.field public static a:J

.field public static b:J

.field private static c:Ljava/lang/String;

.field private static g:I

.field private static h:I

.field private static i:J


# instance fields
.field private volatile d:Z

.field private e:Z

.field private f:I

.field private j:Lcn/kuwo/mod/push/PushServiceUtils;

.field private k:Ljava/util/HashMap;

.field private l:Ljava/util/Timer;

.field private m:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ""

    sput-object v0, Lcn/kuwo/mod/push/PushHandler;->c:Ljava/lang/String;

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcn/kuwo/mod/push/PushHandler;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcn/kuwo/base/util/KwDate;->getStandradDateDiff()J

    move-result-wide v2

    add-long/2addr v0, v2

    sput-wide v0, Lcn/kuwo/mod/push/PushHandler;->b:J

    const/4 v0, 0x0

    sput v0, Lcn/kuwo/mod/push/PushHandler;->g:I

    const/16 v0, 0x64

    sput v0, Lcn/kuwo/mod/push/PushHandler;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/mod/push/PushHandler;->i:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-boolean v1, p0, Lcn/kuwo/mod/push/PushHandler;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/push/PushHandler;->e:Z

    iput v1, p0, Lcn/kuwo/mod/push/PushHandler;->f:I

    iput-object v2, p0, Lcn/kuwo/mod/push/PushHandler;->j:Lcn/kuwo/mod/push/PushServiceUtils;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    iput-object v2, p0, Lcn/kuwo/mod/push/PushHandler;->l:Ljava/util/Timer;

    new-instance v0, Lcn/kuwo/mod/push/PushHandler$1;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/push/PushHandler$1;-><init>(Lcn/kuwo/mod/push/PushHandler;)V

    iput-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->m:Ljava/util/TimerTask;

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->a()Lcn/kuwo/mod/push/PushServiceUtils;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->j:Lcn/kuwo/mod/push/PushServiceUtils;

    return-void
.end method

.method private a(Lcn/kuwo/mod/push/PushResponseData;)Lcn/kuwo/mod/push/PushMsgBody;
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushResponseData;->e()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushResponseData;->g()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushResponseData;->g()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0xc

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    :goto_0
    const-string v1, "Pushhandler"

    invoke-static {v1, v0}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Pushhandler"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "title"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "text"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x5

    :goto_1
    const-string v7, "p"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "t"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "e"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcn/kuwo/mod/push/PushMsgBody;

    invoke-direct {v9}, Lcn/kuwo/mod/push/PushMsgBody;-><init>()V

    invoke-virtual {v9, v4, v5}, Lcn/kuwo/mod/push/PushMsgBody;->a(J)V

    invoke-virtual {v9, v1}, Lcn/kuwo/mod/push/PushMsgBody;->b(I)V

    invoke-virtual {v9, v3}, Lcn/kuwo/mod/push/PushMsgBody;->a(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lcn/kuwo/mod/push/PushMsgBody;->b(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcn/kuwo/mod/push/PushMsgBody;->c(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lcn/kuwo/mod/push/PushMsgBody;->a(I)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcn/kuwo/mod/push/PushMsgBody;->a(Ljava/util/Date;)V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/kuwo/mod/push/PushMsgBody;->b(Ljava/util/Date;)V

    :cond_1
    return-object v9

    :cond_2
    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushResponseData;->g()[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    array-length v2, v1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "cancelId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const-string v0, "url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\d{1,2}:\\d{1,2}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(JZ)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcn/kuwo/mod/push/PushHandler;->b(J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private a(Lcn/kuwo/mod/push/PushResponseData;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcn/kuwo/mod/push/PushResponseData;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 8

    sget v0, Lcn/kuwo/mod/push/PushHandler;->g:I

    sget v1, Lcn/kuwo/mod/push/PushHandler;->h:I

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/kuwo/mod/push/PushHandler$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/kuwo/mod/push/PushHandler$3;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(J)Z
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "08:30"

    invoke-direct {p0, v0}, Lcn/kuwo/mod/push/PushHandler;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-string v3, "22:30"

    invoke-direct {p0, v3}, Lcn/kuwo/mod/push/PushHandler;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcn/kuwo/mod/push/PushHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/push/PushHandler;->d:Z

    return v0
.end method

.method private a(Lcn/kuwo/mod/push/PushMsgBody;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v1

    const-string v0, "need_push_msg"

    invoke-static {v1, v0, v2}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v0, "push_msg_start_time"

    invoke-static {v1, v0}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "push_msg_end_time "

    invoke-static {v1, v4}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "08:30"

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "22:30"

    :cond_3
    invoke-direct {p0, v0}, Lcn/kuwo/mod/push/PushHandler;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v1}, Lcn/kuwo/mod/push/PushHandler;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private a(Lcn/kuwo/mod/push/PushMsgBody;Lcn/kuwo/mod/push/PushMsgBody;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcn/kuwo/mod/push/PushMsgBody;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->g()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcn/kuwo/mod/push/PushMsgBody;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcn/kuwo/mod/push/PushMsgBody;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcn/kuwo/mod/push/PushMsgBody;->g()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcn/kuwo/mod/push/PushHandler;->a(I)[B

    move-result-object v3

    if-eqz p1, :cond_2

    const-string v4, "kwmsg.kuwo.cn"

    const/16 v5, 0x1e6c

    invoke-static {v3, v4, v5}, Lcn/kuwo/mod/push/PushUDPClient;->a([BLjava/lang/String;I)Lcn/kuwo/mod/push/PushResponseData;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->a()Lcn/kuwo/mod/push/PushHeaderData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushHeaderData;->b()S

    move-result v4

    const/16 v5, 0x4399

    if-eq v4, v5, :cond_3

    :cond_0
    const-string v2, "Pushhandler"

    const-string v3, "\u6536\u5230\u975e\u6cd5\u6570\u636e"

    invoke-static {v2, v3}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    const-string v4, "kwmsg.kuwo.cn"

    const/16 v5, 0x1e6c

    invoke-static {v3, v4, v5}, Lcn/kuwo/mod/push/PushTCPClient;->a([BLjava/lang/String;I)Lcn/kuwo/mod/push/PushResponseData;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->c()S

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcn/kuwo/mod/push/PushHandler;->a:J

    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->b()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Lcn/kuwo/base/util/KwDate;->getStandradDateDiff()J

    move-result-wide v6

    add-long/2addr v4, v6

    sput-wide v4, Lcn/kuwo/mod/push/PushHandler;->b:J

    const-string v4, "Pushhandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recve msgid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->f()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hasMsg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->d()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->a()Lcn/kuwo/mod/push/PushHeaderData;

    move-result-object v6

    invoke-virtual {v6}, Lcn/kuwo/mod/push/PushHeaderData;->a()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " servTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    sget-wide v8, Lcn/kuwo/mod/push/PushHandler;->b:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->d()S

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->f()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->f()I

    move-result v3

    sput v3, Lcn/kuwo/mod/push/Config;->b:I

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v3

    const-string v4, "push_lastMsgId"

    sget v5, Lcn/kuwo/mod/push/Config;->b:I

    invoke-static {v3, v4, v5}, Lcn/kuwo/base/config/basic/PrefsUtils;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    :goto_2
    move v1, v0

    :goto_3
    if-eqz v2, :cond_5

    iget v3, p0, Lcn/kuwo/mod/push/PushHandler;->f:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_5

    const-string v3, "_test.apk"

    const-string v4, "_hw.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcn/kuwo/mod/push/PushHandler;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/kuwo/mod/push/PushHandler;->f:I

    const-string v3, "excp"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2}, Lcn/kuwo/mod/push/PushHandler;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v4, v5, v2}, Lcn/kuwo/mod/push/PushHandler;->a(Ljava/lang/String;IJLjava/lang/String;)V

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    :try_start_1
    invoke-virtual {v3}, Lcn/kuwo/mod/push/PushResponseData;->f()I

    move-result v4

    sput v4, Lcn/kuwo/mod/push/Config;->b:I

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v4

    const-string v5, "push_lastMsgId"

    sget v6, Lcn/kuwo/mod/push/Config;->b:I

    invoke-static {v4, v5, v6}, Lcn/kuwo/base/config/basic/PrefsUtils;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v3}, Lcn/kuwo/mod/push/PushHandler;->a(Lcn/kuwo/mod/push/PushResponseData;)Lcn/kuwo/mod/push/PushMsgBody;

    move-result-object v4

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->h()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->i()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcn/kuwo/mod/push/PushHandler;->a(JZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Pushhandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_7
    :try_start_2
    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcn/kuwo/mod/push/PushHandler;->a(J)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "recv"

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v8

    const/4 v7, 0x0

    invoke-static {v5, v6, v8, v9, v7}, Lcn/kuwo/mod/push/PushHandler;->a(Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->e()I

    move-result v5

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->j()I

    move-result v6

    if-le v5, v6, :cond_8

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->e()I

    move-result v5

    invoke-direct {p0, v5}, Lcn/kuwo/mod/push/PushHandler;->b(I)V

    invoke-direct {p0, v4}, Lcn/kuwo/mod/push/PushHandler;->d(Lcn/kuwo/mod/push/PushMsgBody;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcn/kuwo/mod/push/PushHandler;->b(J)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcn/kuwo/mod/push/PushHandler;->a(Lcn/kuwo/mod/push/PushResponseData;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcn/kuwo/mod/push/PushHandler;->c(Lcn/kuwo/mod/push/PushMsgBody;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string v3, "Pushhandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_8
    :try_start_3
    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->e()I

    move-result v5

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->j()I

    move-result v6

    if-ne v5, v6, :cond_9

    invoke-direct {p0, v4}, Lcn/kuwo/mod/push/PushHandler;->d(Lcn/kuwo/mod/push/PushMsgBody;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcn/kuwo/mod/push/PushHandler;->b(J)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcn/kuwo/mod/push/PushHandler;->a(Lcn/kuwo/mod/push/PushResponseData;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcn/kuwo/mod/push/PushHandler;->c(Lcn/kuwo/mod/push/PushMsgBody;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v2

    const-string v3, "Pushhandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_9
    :try_start_4
    invoke-direct {p0, v4}, Lcn/kuwo/mod/push/PushHandler;->d(Lcn/kuwo/mod/push/PushMsgBody;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcn/kuwo/mod/push/PushHandler;->b(J)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcn/kuwo/mod/push/PushHandler;->a(Lcn/kuwo/mod/push/PushResponseData;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcn/kuwo/mod/push/PushHandler;->c(Lcn/kuwo/mod/push/PushMsgBody;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2
.end method

.method private a(I)[B
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/mod/push/PushHeaderData;

    invoke-direct {v0}, Lcn/kuwo/mod/push/PushHeaderData;-><init>()V

    new-instance v1, Lcn/kuwo/mod/push/PushHeartData;

    invoke-direct {v1}, Lcn/kuwo/mod/push/PushHeartData;-><init>()V

    const/16 v2, 0x4399

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/push/PushHeaderData;->d(S)V

    invoke-virtual {v0, v3}, Lcn/kuwo/mod/push/PushHeaderData;->b(S)V

    invoke-virtual {v0, v4}, Lcn/kuwo/mod/push/PushHeaderData;->a(S)V

    invoke-static {}, Lcn/kuwo/mod/push/PushHeartData;->b()S

    move-result v2

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/push/PushHeaderData;->c(S)V

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushHeartData;->a(Lcn/kuwo/mod/push/PushHeaderData;)V

    invoke-virtual {v1, p1}, Lcn/kuwo/mod/push/PushHeartData;->a(I)V

    sget-object v0, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    sget-object v0, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushHeartData;->b(I)V

    :goto_0
    invoke-virtual {v1, v4}, Lcn/kuwo/mod/push/PushHeartData;->a(S)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushHeartData;->b(S)V

    invoke-virtual {v1, v3}, Lcn/kuwo/mod/push/PushHeartData;->c(S)V

    invoke-virtual {v1, v3}, Lcn/kuwo/mod/push/PushHeartData;->d(S)V

    sget v0, Lcn/kuwo/mod/push/Config;->b:I

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushHeartData;->c(I)V

    sget-object v0, Lcn/kuwo/mod/push/PushHandler;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushHeartData;->a([B)V

    const-string v0, "_test.apk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushHeartData;->b([B)V

    const-string v0, "kwplayer_ar"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushHeartData;->c([B)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushHeartData;->d([B)V

    const-string v0, "Pushhandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send userID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LastmsgID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/kuwo/mod/push/PushHeartData;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/kuwo/mod/push/PushHeartData;->b()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Pushhandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send userID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LastmsgID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/kuwo/mod/push/PushHeartData;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/kuwo/mod/push/PushHeartData;->b()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/kuwo/mod/push/PushHeartData;->c()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1, v3}, Lcn/kuwo/mod/push/PushHeartData;->b(I)V

    goto/16 :goto_0
.end method

.method private b(J)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/kuwo/mod/push/PushServiceUtils;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".push"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic b(Ljava/lang/String;IJLjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2, p3, p4}, Lcn/kuwo/mod/push/PushHandler;->c(Ljava/lang/String;IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/kuwo/mod/push/PushHandler;->i:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/mod/push/PushHandler;->i:J

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->c()I

    move-result v0

    sput v0, Lcn/kuwo/mod/push/PushHandler;->h:I

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->h()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/push/PushMsgBody;

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushMsgBody;->e()I

    move-result v2

    if-ge v2, p1, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/kuwo/mod/push/PushHandler;->b(J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcn/kuwo/mod/push/PushMsgBody;)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcn/kuwo/mod/push/PushHandler;->a(Lcn/kuwo/mod/push/PushMsgBody;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/kuwo/kwmusiccar/WelcomeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cn.kuwo.kwmusiccar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cn.kuwo.kwmusiccar.PushHandler"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "PushHandler.pushid"

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "PushHandler.type"

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->h()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "PushHandler.title"

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "PushHandler.text"

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "PushHandler.content"

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10709

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, v0}, Lcn/kuwo/mod/push/PushHandler;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcn/kuwo/base/util/NotificationUtils;->notifyPushMsg(Landroid/content/Context;Landroid/app/PendingIntent;Lcn/kuwo/mod/push/PushMsgBody;Z)V

    const-string v0, "show"

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcn/kuwo/mod/push/PushHandler;->a(Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v6}, Lcn/kuwo/mod/push/PushHandler;->a(JZ)V

    goto :goto_0
.end method

.method private c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private static c(Ljava/lang/String;IJLjava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss.SSS Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/push/PushService;

    invoke-static {v0}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkInfo(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x800

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "2<SRC:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/AppContext;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v2, "|ACT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PUSH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v2, "|PROD:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kwplayer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|VER:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/PushHandler;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|PLAT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|FROM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/AppContext;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/AppContext;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|ERR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PUSH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|SUBERR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|UI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|UDID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|DEVID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/AppContext;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|U:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|IMEI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/AppContext;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|MACADDR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/push/AppContext;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|UUID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|DEV:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|OSV:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|NE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->getAccessPoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|NE_TYPE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|CT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|PUSHID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|LTYPE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|BD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|PU:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|PID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|DES:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LiJianHeng"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v2, "|ACT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ERROR_LOG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private c(Lcn/kuwo/mod/push/PushMsgBody;)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private d()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sget-object v2, Lcn/kuwo/mod/push/AppContext;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/push/ByteUtil;->b([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v0, v1, 0x64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(Lcn/kuwo/mod/push/PushMsgBody;)Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/push/PushMsgBody;

    invoke-direct {p0, v0, p1}, Lcn/kuwo/mod/push/PushHandler;->a(Lcn/kuwo/mod/push/PushMsgBody;Lcn/kuwo/mod/push/PushMsgBody;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private e()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->i()V

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->g()Lcn/kuwo/mod/push/PushMsgBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/push/PushHandler;->b(Lcn/kuwo/mod/push/PushMsgBody;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "Pushhandler"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->j:Lcn/kuwo/mod/push/PushServiceUtils;

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushServiceUtils;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/push/PushService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushService;->a()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/mod/push/PushServiceUtils;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v0, Lcn/kuwo/mod/push/PushHandler$2;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/push/PushHandler$2;-><init>(Lcn/kuwo/mod/push/PushHandler;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    :try_start_0
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/mod/push/PushResponseData;->b(Ljava/lang/String;)Lcn/kuwo/mod/push/PushResponseData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/kuwo/mod/push/PushHandler;->a(Lcn/kuwo/mod/push/PushResponseData;)Lcn/kuwo/mod/push/PushMsgBody;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/kuwo/mod/push/PushHandler;->c(Lcn/kuwo/mod/push/PushMsgBody;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v2, v1

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/util/zip/DataFormatException;->printStackTrace()V

    move v2, v1

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move v2, v1

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    move v2, v1

    goto :goto_1

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    goto :goto_1
.end method

.method private g()Lcn/kuwo/mod/push/PushMsgBody;
    .locals 6

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/push/PushMsgBody;

    const-string v2, "Pushhandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgBody in server:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcn/kuwo/mod/push/PushHandler;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v2, Lcn/kuwo/mod/push/PushHandler;->b:J

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushMsgBody;->f()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    sget-wide v2, Lcn/kuwo/mod/push/PushHandler;->b:J

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushMsgBody;->g()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-string v1, "Pushhandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgBody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Pushhandler"

    const-string v1, "msgBody out "

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, ""

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "personal_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    const-string v1, "Pushhandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/mod/push/PushLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x204

    if-gt v1, v2, :cond_0

    sput-object v0, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "personal_id"

    sget-object v2, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/basic/PrefsUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcn/kuwo/mod/push/Config;->a:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()V
    .locals 6

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/push/PushMsgBody;

    sget-wide v2, Lcn/kuwo/mod/push/PushHandler;->b:J

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushMsgBody;->g()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushMsgBody;->a()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/kuwo/mod/push/PushHandler;->b(J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/push/PushMsgBody;

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushMsgBody;->e()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushMsgBody;->e()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->l:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "Pushhandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceUtils.VERSION_CODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/util/DeviceUtils;->VERSION_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcn/kuwo/mod/push/PushHandler;->c:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/push/AppContext;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcn/kuwo/mod/push/PushManager;->b()Lcn/kuwo/mod/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "push_lastMsgId"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcn/kuwo/mod/push/Config;->b:I

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->f()V

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->h()Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->d()I

    move-result v0

    sput v0, Lcn/kuwo/mod/push/PushHandler;->g:I

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->c()I

    move-result v0

    sput v0, Lcn/kuwo/mod/push/PushHandler;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Pushhandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Pushhandler"

    invoke-direct {p0, v0}, Lcn/kuwo/mod/push/PushHandler;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->l:Ljava/util/Timer;

    const-wide/32 v2, 0xea60

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->l:Ljava/util/Timer;

    iget-object v1, p0, Lcn/kuwo/mod/push/PushHandler;->m:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->b()V

    const-string v2, "ajh"

    const-string v3, "\u53d1\u6d88\u606f"

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/kuwo/mod/push/PushHandler;->d:Z

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->h()Ljava/lang/String;

    iget-boolean v2, p0, Lcn/kuwo/mod/push/PushHandler;->e:Z

    invoke-direct {p0, v2}, Lcn/kuwo/mod/push/PushHandler;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/push/PushHandler;->e:Z

    :goto_1
    const-string v0, "Pushhandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPushMsgs.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/mod/push/PushHandler;->e()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/push/PushHandler;->d:Z

    goto/16 :goto_0

    :cond_2
    iget-boolean v2, p0, Lcn/kuwo/mod/push/PushHandler;->e:Z

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcn/kuwo/mod/push/PushHandler;->e:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
