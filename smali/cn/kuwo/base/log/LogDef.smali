.class public final Lcn/kuwo/base/log/LogDef;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 4

    const-string v0, "Log"

    const-string v1, "last_send_clientlog_suc_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/kuwo/base/log/LogDef;->b(Ljava/lang/String;)Lcn/kuwo/base/log/LogDef$LogType;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->l:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->m:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->n:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->o:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->p:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->q:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->r:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->s:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->t:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->y:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->A:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->C:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->D:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->E:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->T:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->U:Lcn/kuwo/base/log/LogDef$LogType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->H:Lcn/kuwo/base/log/LogDef$LogType;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcn/kuwo/base/log/LogDef$LogType;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcn/kuwo/base/log/LogDef$LogType;->valueOf(Ljava/lang/String;)Lcn/kuwo/base/log/LogDef$LogType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Log"

    const-string v2, "last_send_clientlog_suc_time"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x0

    invoke-static {v1, v2, v4, v5, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    return-void
.end method

.method public static c()I
    .locals 4

    const-string v0, "Log"

    const-string v1, "last_send_clientlog_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Lcn/kuwo/base/log/LogDef$OldLogType;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcn/kuwo/base/log/LogDef$OldLogType;->valueOf(Ljava/lang/String;)Lcn/kuwo/base/log/LogDef$OldLogType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Log"

    const-string v2, "last_send_clientlog_time"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x0

    invoke-static {v1, v2, v4, v5, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->m:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/kuwo/base/log/LogDef;->c(Ljava/lang/String;)Lcn/kuwo/base/log/LogDef$OldLogType;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcn/kuwo/base/log/LogDef$1;->a:[I

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$OldLogType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcn/kuwo/base/log/LogDef;->b(Ljava/lang/String;)Lcn/kuwo/base/log/LogDef$LogType;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "appconfig"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v3, Lcn/kuwo/base/log/LogDef$1;->b:[I

    invoke-virtual {v2}, Lcn/kuwo/base/log/LogDef$LogType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    const-string v2, "appconfig"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcn/kuwo/base/log/LogDef;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcn/kuwo/base/log/LogDef;->f(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x2

    cmp-long v5, v2, v6

    if-nez v5, :cond_3

    const-string v0, "2G"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x3

    cmp-long v5, v2, v6

    if-nez v5, :cond_5

    const-string v2, "2G"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "3G"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const-wide/16 v6, 0x4

    cmp-long v5, v2, v6

    if-nez v5, :cond_6

    const-string v0, "WIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_6
    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "|ACT:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const-string v2, "|ACT:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const-string v1, "|"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_2

    const-string v1, ">"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :cond_2
    if-gez v1, :cond_3

    const-string v1, "}"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :cond_3
    if-ltz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
