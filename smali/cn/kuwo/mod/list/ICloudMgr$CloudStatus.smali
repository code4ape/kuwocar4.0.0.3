.class public final enum Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

.field public static final enum b:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

.field public static final enum c:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

.field private static final synthetic d:[Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    const-string v1, "CLOUD_IDLE"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->a:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    new-instance v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    const-string v1, "CLOUD_REQUEST"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->b:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    new-instance v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    const-string v1, "CLOUD_PROCESS_RESPONSE"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->c:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    sget-object v1, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->a:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->b:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->c:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->d:[Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;
    .locals 1

    const-class v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->d:[Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    invoke-virtual {v0}, [Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    return-object v0
.end method
