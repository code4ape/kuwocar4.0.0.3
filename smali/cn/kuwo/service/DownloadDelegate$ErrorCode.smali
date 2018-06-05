.class public final enum Lcn/kuwo/service/DownloadDelegate$ErrorCode;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field public static final enum b:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field public static final enum c:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field public static final enum d:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field public static final enum e:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field public static final enum f:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field public static final enum g:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field public static final enum h:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field public static final enum i:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field private static final synthetic j:[Lcn/kuwo/service/DownloadDelegate$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const-string v1, "ANTISTEALING_FAILED"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->b:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const-string v1, "NO_NET"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->c:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const-string v1, "NET_ERROR"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->d:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->e:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const-string v1, "NO_SDCARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->f:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const-string v1, "NOSPACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->g:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const-string v1, "ONLYWIFI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->h:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    new-instance v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const-string v1, "OTHERS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->i:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    const/16 v0, 0x9

    new-array v0, v0, [Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->b:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->c:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->d:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->e:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->f:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->g:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->h:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->i:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->j:[Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/service/DownloadDelegate$ErrorCode;
    .locals 1

    const-class v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/service/DownloadDelegate$ErrorCode;
    .locals 1

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->j:[Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-virtual {v0}, [Lcn/kuwo/service/DownloadDelegate$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    return-object v0
.end method
