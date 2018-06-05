.class public Lcn/kuwo/base/util/KwDate;
.super Ljava/util/Date;


# static fields
.field public static final COMPARE_AFTER_TODAY:I = 0x2

.field public static final COMPARE_BEFORE_TODAY:I = 0x0

.field public static final COMPARE_FORMAT_ERROR:I = -0x1

.field public static final COMPARE_TODAY:I = 0x1

.field public static final T_DAY:I = 0x15180

.field public static final T_HOUR:I = 0xe10

.field public static final T_MINUTE:I = 0x3c

.field public static final T_MONTH:I = 0x278d00

.field public static final T_MS_DAY:J = 0x5265c00L

.field public static final T_MS_HOUR:J = 0x36ee80L

.field public static final T_MS_MINUTE:J = 0xea60L

.field public static final T_MS_MONTH:J = -0x65813800L

.field public static final T_MS_SECOND:J = 0x3e8L

.field public static final T_MS_WEEK:J = 0x240c8400L

.field public static final T_MS_YEAR:J = 0x57b12c00L

.field public static final T_SECOND:I = 0x1

.field public static final T_WEEK:I = 0x93a80

.field public static final T_YEAR:I = 0x1e13380

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcn/kuwo/base/util/KwDate;->fromString(Ljava/lang/String;)Z

    return-void
.end method

.method public static getStandardDate(J)Ljava/util/Date;
    .locals 4

    invoke-static {}, Lcn/kuwo/base/util/KwDate;->getStandradDateDiff()J

    move-result-wide v0

    add-long/2addr v0, p0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public static getStandradDateDiff()J
    .locals 2

    const-string v0, "GMT+08:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static sub(Ljava/util/Date;Ljava/util/Date;I)J
    .locals 4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    int-to-long v2, p2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public compareToToday(Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcn/kuwo/base/util/KwDate;->today()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KwDate"

    invoke-static {v2, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final decrease(I)Lcn/kuwo/base/util/KwDate;
    .locals 6

    invoke-virtual {p0}, Lcn/kuwo/base/util/KwDate;->getTime()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/util/KwDate;->setTime(J)V

    return-object p0
.end method

.method public final decrease(II)Lcn/kuwo/base/util/KwDate;
    .locals 1

    mul-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcn/kuwo/base/util/KwDate;->decrease(I)Lcn/kuwo/base/util/KwDate;

    return-object p0
.end method

.method public final fromString(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcn/kuwo/base/util/KwDate;->fromString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final fromString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/util/KwDate;->setTime(J)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDayStartTime()J
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final increase(I)Lcn/kuwo/base/util/KwDate;
    .locals 6

    invoke-virtual {p0}, Lcn/kuwo/base/util/KwDate;->getTime()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/util/KwDate;->setTime(J)V

    return-object p0
.end method

.method public final increase(II)Lcn/kuwo/base/util/KwDate;
    .locals 1

    mul-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcn/kuwo/base/util/KwDate;->increase(I)Lcn/kuwo/base/util/KwDate;

    return-object p0
.end method

.method public final sub(Ljava/util/Date;I)J
    .locals 2

    invoke-static {p0, p1, p2}, Lcn/kuwo/base/util/KwDate;->sub(Ljava/util/Date;Ljava/util/Date;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toDateString()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p0, v0}, Lcn/kuwo/base/util/KwDate;->toFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toDateTimeString()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0, v0}, Lcn/kuwo/base/util/KwDate;->toFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toFormatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTimeStringNoSecond(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTimeStringNoSecondNoYear(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM\u6708dd\u65e5 HH:mm"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public today()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public today(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
