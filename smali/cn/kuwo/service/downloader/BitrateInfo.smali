.class public final Lcn/kuwo/service/downloader/BitrateInfo;
.super Ljava/lang/Object;


# static fields
.field private static a:[[Ljava/lang/String;

.field private static b:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "48kaac"

    aput-object v2, v1, v5

    const-string v2, "128kmp3"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "24kaac"

    aput-object v2, v1, v5

    const-string v2, "48kaac"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "48kaac"

    aput-object v2, v1, v5

    const-string v2, "128kmp3"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, "320kmp3"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, "2000kflac"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "MP4L"

    aput-object v3, v2, v5

    const-string v3, "MP4L"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "MP4"

    aput-object v3, v2, v5

    const-string v3, "MP4"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/service/downloader/BitrateInfo;->a:[[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/service/downloader/BitrateInfo;->b:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x30
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x18
        0x30
    .end array-data

    :array_2
    .array-data 4
        0x30
        0x80
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x140
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x7d0
    .end array-data

    :array_5
    .array-data 4
        0xbb8
        0xbb8
    .end array-data

    :array_6
    .array-data 4
        0xfa0
        0xfa0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcn/kuwo/service/DownloadProxy$Quality;)I
    .locals 3

    invoke-virtual {p0}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v0

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    if-ne p0, v1, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadProxy$DownType;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/kuwo/service/downloader/BitrateInfo;->a:[[Ljava/lang/String;

    invoke-static {p0}, Lcn/kuwo/service/downloader/BitrateInfo;->a(Lcn/kuwo/service/DownloadProxy$Quality;)I

    move-result v1

    aget-object v1, v0, v1

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadProxy$DownType;)I
    .locals 2

    sget-object v0, Lcn/kuwo/service/downloader/BitrateInfo;->b:[[I

    invoke-static {p0}, Lcn/kuwo/service/downloader/BitrateInfo;->a(Lcn/kuwo/service/DownloadProxy$Quality;)I

    move-result v1

    aget-object v1, v0, v1

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aget v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
