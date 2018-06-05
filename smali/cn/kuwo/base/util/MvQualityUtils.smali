.class public Lcn/kuwo/base/util/MvQualityUtils;
.super Ljava/lang/Object;


# static fields
.field public static final HIGH_QUALITY:Ljava/lang/String; = "MP4"

.field public static final LOW_QUALITY:Ljava/lang/String; = "MP4L"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasHighQuality(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "MP4"

    invoke-static {p0, v0}, Lcn/kuwo/base/util/MvQualityUtils;->hasQuality(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasLowQuality(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "MP4L"

    invoke-static {p0, v0}, Lcn/kuwo/base/util/MvQualityUtils;->hasQuality(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasQuality(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
