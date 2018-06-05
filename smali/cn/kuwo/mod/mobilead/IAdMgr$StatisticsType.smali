.class public final enum Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

.field public static final enum b:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

.field public static final enum c:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

.field public static final enum d:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

.field private static final synthetic e:[Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->a:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    new-instance v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->b:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    new-instance v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->c:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    new-instance v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    const-string v1, "CLOSE_AUTO"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->d:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    sget-object v1, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->a:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->b:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->c:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->d:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->e:[Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;
    .locals 1

    const-class v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->e:[Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    invoke-virtual {v0}, [Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    return-object v0
.end method
