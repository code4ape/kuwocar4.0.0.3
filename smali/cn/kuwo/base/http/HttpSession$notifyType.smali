.class final enum Lcn/kuwo/base/http/HttpSession$notifyType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/http/HttpSession$notifyType;

.field public static final enum b:Lcn/kuwo/base/http/HttpSession$notifyType;

.field public static final enum c:Lcn/kuwo/base/http/HttpSession$notifyType;

.field private static final synthetic d:[Lcn/kuwo/base/http/HttpSession$notifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/http/HttpSession$notifyType;

    const-string v1, "NOTIFY_START"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/http/HttpSession$notifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->a:Lcn/kuwo/base/http/HttpSession$notifyType;

    new-instance v0, Lcn/kuwo/base/http/HttpSession$notifyType;

    const-string v1, "NOTIFY_FAILED"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/http/HttpSession$notifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->b:Lcn/kuwo/base/http/HttpSession$notifyType;

    new-instance v0, Lcn/kuwo/base/http/HttpSession$notifyType;

    const-string v1, "NOTIFY_FINISH"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/http/HttpSession$notifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->c:Lcn/kuwo/base/http/HttpSession$notifyType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/base/http/HttpSession$notifyType;

    sget-object v1, Lcn/kuwo/base/http/HttpSession$notifyType;->a:Lcn/kuwo/base/http/HttpSession$notifyType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/http/HttpSession$notifyType;->b:Lcn/kuwo/base/http/HttpSession$notifyType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/http/HttpSession$notifyType;->c:Lcn/kuwo/base/http/HttpSession$notifyType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->d:[Lcn/kuwo/base/http/HttpSession$notifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/http/HttpSession$notifyType;
    .locals 1

    const-class v0, Lcn/kuwo/base/http/HttpSession$notifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/http/HttpSession$notifyType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/http/HttpSession$notifyType;
    .locals 1

    sget-object v0, Lcn/kuwo/base/http/HttpSession$notifyType;->d:[Lcn/kuwo/base/http/HttpSession$notifyType;

    invoke-virtual {v0}, [Lcn/kuwo/base/http/HttpSession$notifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/http/HttpSession$notifyType;

    return-object v0
.end method
