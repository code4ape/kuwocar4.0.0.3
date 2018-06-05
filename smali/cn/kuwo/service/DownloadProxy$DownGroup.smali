.class public final enum Lcn/kuwo/service/DownloadProxy$DownGroup;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/service/DownloadProxy$DownGroup;

.field public static final enum b:Lcn/kuwo/service/DownloadProxy$DownGroup;

.field public static final enum c:Lcn/kuwo/service/DownloadProxy$DownGroup;

.field public static final enum d:Lcn/kuwo/service/DownloadProxy$DownGroup;

.field private static final synthetic e:[Lcn/kuwo/service/DownloadProxy$DownGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/service/DownloadProxy$DownGroup;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/DownloadProxy$DownGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->a:Lcn/kuwo/service/DownloadProxy$DownGroup;

    new-instance v0, Lcn/kuwo/service/DownloadProxy$DownGroup;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/service/DownloadProxy$DownGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->b:Lcn/kuwo/service/DownloadProxy$DownGroup;

    new-instance v0, Lcn/kuwo/service/DownloadProxy$DownGroup;

    const-string v1, "APP"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/service/DownloadProxy$DownGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->c:Lcn/kuwo/service/DownloadProxy$DownGroup;

    new-instance v0, Lcn/kuwo/service/DownloadProxy$DownGroup;

    const-string v1, "MV"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/service/DownloadProxy$DownGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->d:Lcn/kuwo/service/DownloadProxy$DownGroup;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/kuwo/service/DownloadProxy$DownGroup;

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownGroup;->a:Lcn/kuwo/service/DownloadProxy$DownGroup;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownGroup;->b:Lcn/kuwo/service/DownloadProxy$DownGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownGroup;->c:Lcn/kuwo/service/DownloadProxy$DownGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownGroup;->d:Lcn/kuwo/service/DownloadProxy$DownGroup;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->e:[Lcn/kuwo/service/DownloadProxy$DownGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/service/DownloadProxy$DownGroup;
    .locals 1

    const-class v0, Lcn/kuwo/service/DownloadProxy$DownGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/DownloadProxy$DownGroup;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/service/DownloadProxy$DownGroup;
    .locals 1

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->e:[Lcn/kuwo/service/DownloadProxy$DownGroup;

    invoke-virtual {v0}, [Lcn/kuwo/service/DownloadProxy$DownGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/service/DownloadProxy$DownGroup;

    return-object v0
.end method
