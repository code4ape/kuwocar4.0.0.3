.class public Lcn/kuwo/base/util/UidFetcher;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "UidFetcher"

.field private static mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcn/kuwo/base/util/UidFetcher;->mUid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/base/util/UidFetcher;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/kuwo/base/util/UidFetcher;->mUid:Ljava/lang/String;

    return-object p0
.end method

.method public static fetchUid(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "appconfig"

    const-string v1, "appuid_lastget"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "UidFetcher"

    const-string v1, "appUid last fetch less a day"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/util/UidFetcher;->mUid:Ljava/lang/String;

    invoke-static {p0}, Lcn/kuwo/base/util/UrlManagerUtils;->getUidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v1}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    new-instance v2, Lcn/kuwo/base/util/UidFetcher$1;

    invoke-direct {v2}, Lcn/kuwo/base/util/UidFetcher$1;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    goto :goto_0
.end method
