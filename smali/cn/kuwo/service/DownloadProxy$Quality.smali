.class public final enum Lcn/kuwo/service/DownloadProxy$Quality;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/service/DownloadProxy$Quality;

.field public static final enum b:Lcn/kuwo/service/DownloadProxy$Quality;

.field public static final enum c:Lcn/kuwo/service/DownloadProxy$Quality;

.field public static final enum d:Lcn/kuwo/service/DownloadProxy$Quality;

.field public static final enum e:Lcn/kuwo/service/DownloadProxy$Quality;

.field public static final enum f:Lcn/kuwo/service/DownloadProxy$Quality;

.field public static final enum g:Lcn/kuwo/service/DownloadProxy$Quality;

.field private static final synthetic h:[Lcn/kuwo/service/DownloadProxy$Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/service/DownloadProxy$Quality;

    const-string v1, "Q_AUTO"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/service/DownloadProxy$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    new-instance v0, Lcn/kuwo/service/DownloadProxy$Quality;

    const-string v1, "Q_LOW"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/service/DownloadProxy$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->b:Lcn/kuwo/service/DownloadProxy$Quality;

    new-instance v0, Lcn/kuwo/service/DownloadProxy$Quality;

    const-string v1, "Q_HIGH"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/service/DownloadProxy$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->c:Lcn/kuwo/service/DownloadProxy$Quality;

    new-instance v0, Lcn/kuwo/service/DownloadProxy$Quality;

    const-string v1, "Q_PERFECT"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/service/DownloadProxy$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->d:Lcn/kuwo/service/DownloadProxy$Quality;

    new-instance v0, Lcn/kuwo/service/DownloadProxy$Quality;

    const-string v1, "Q_LOSSLESS"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/service/DownloadProxy$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->e:Lcn/kuwo/service/DownloadProxy$Quality;

    new-instance v0, Lcn/kuwo/service/DownloadProxy$Quality;

    const-string v1, "Q_MV_LOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/DownloadProxy$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    new-instance v0, Lcn/kuwo/service/DownloadProxy$Quality;

    const-string v1, "Q_MV_HIGH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/DownloadProxy$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->b:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->c:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->d:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->e:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->h:[Lcn/kuwo/service/DownloadProxy$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcn/kuwo/service/DownloadProxy$Quality;
    .locals 1

    const/16 v0, 0x30

    if-gt p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->b:Lcn/kuwo/service/DownloadProxy$Quality;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x80

    if-gt p0, v0, :cond_1

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->c:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_0

    :cond_1
    const/16 v0, 0x140

    if-gt p0, v0, :cond_2

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->d:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->e:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/service/DownloadProxy$Quality;
    .locals 1

    const-class v0, Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/DownloadProxy$Quality;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/service/DownloadProxy$Quality;
    .locals 1

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->h:[Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v0}, [Lcn/kuwo/service/DownloadProxy$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/service/DownloadProxy$Quality;

    return-object v0
.end method
