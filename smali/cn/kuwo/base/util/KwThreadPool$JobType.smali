.class public final enum Lcn/kuwo/base/util/KwThreadPool$JobType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcn/kuwo/base/util/KwThreadPool$JobType;

.field public static final enum IMMEDIATELY:Lcn/kuwo/base/util/KwThreadPool$JobType;

.field public static final enum NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

.field public static final enum NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/util/KwThreadPool$JobType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/util/KwThreadPool$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v0, Lcn/kuwo/base/util/KwThreadPool$JobType;

    const-string v1, "NET"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/util/KwThreadPool$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v0, Lcn/kuwo/base/util/KwThreadPool$JobType;

    const-string v1, "IMMEDIATELY"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/util/KwThreadPool$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->IMMEDIATELY:Lcn/kuwo/base/util/KwThreadPool$JobType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/base/util/KwThreadPool$JobType;

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->IMMEDIATELY:Lcn/kuwo/base/util/KwThreadPool$JobType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->$VALUES:[Lcn/kuwo/base/util/KwThreadPool$JobType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/util/KwThreadPool$JobType;
    .locals 1

    const-class v0, Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/util/KwThreadPool$JobType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/util/KwThreadPool$JobType;
    .locals 1

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->$VALUES:[Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-virtual {v0}, [Lcn/kuwo/base/util/KwThreadPool$JobType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/util/KwThreadPool$JobType;

    return-object v0
.end method
