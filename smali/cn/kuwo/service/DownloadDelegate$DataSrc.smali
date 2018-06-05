.class public final enum Lcn/kuwo/service/DownloadDelegate$DataSrc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/service/DownloadDelegate$DataSrc;

.field public static final enum b:Lcn/kuwo/service/DownloadDelegate$DataSrc;

.field public static final enum c:Lcn/kuwo/service/DownloadDelegate$DataSrc;

.field private static final synthetic d:[Lcn/kuwo/service/DownloadDelegate$DataSrc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;

    const-string v1, "NET"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/DownloadDelegate$DataSrc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;->a:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;

    const-string v1, "LOCAL_PART"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/service/DownloadDelegate$DataSrc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;->b:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;

    const-string v1, "LOCAL_FULL"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/service/DownloadDelegate$DataSrc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;->c:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/service/DownloadDelegate$DataSrc;

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$DataSrc;->a:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$DataSrc;->b:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$DataSrc;->c:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;->d:[Lcn/kuwo/service/DownloadDelegate$DataSrc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/service/DownloadDelegate$DataSrc;
    .locals 1

    const-class v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/service/DownloadDelegate$DataSrc;
    .locals 1

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;->d:[Lcn/kuwo/service/DownloadDelegate$DataSrc;

    invoke-virtual {v0}, [Lcn/kuwo/service/DownloadDelegate$DataSrc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/service/DownloadDelegate$DataSrc;

    return-object v0
.end method
