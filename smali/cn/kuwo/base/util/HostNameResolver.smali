.class public Lcn/kuwo/base/util/HostNameResolver;
.super Ljava/lang/Object;


# static fields
.field public static final KUWO_AAC_DATA_SERVER:Ljava/lang/String; = "aacdl.cdn.kuwo.cn"

.field public static final KUWO_DATA_SERVER:Ljava/lang/String; = "dl.cdn.kuwo.cn"

.field public static final KUWO_MP3_DATA_SERVER:Ljava/lang/String; = "mp3dl.cdn.kuwo.cn"

.field public static final KWTT_SERVER:Ljava/lang/String; = "mobi.kuwo.cn"

.field private static hostMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/util/HostNameResolver;->hostMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNameMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcn/kuwo/base/util/HostNameResolver;->hostMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/kuwo/base/util/HostNameResolver;->hostMap:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcn/kuwo/base/util/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static resovleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/kuwo/base/util/HostNameResolver;->hostMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/util/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcn/kuwo/base/util/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
