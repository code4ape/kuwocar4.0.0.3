.class public abstract enum Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

.field public static final enum b:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

.field public static final enum c:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

.field private static final synthetic d:[Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result$1;

    const-string v1, "User"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->a:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result$2;

    const-string v1, "Fail"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->b:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result$3;

    const-string v1, "End"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->c:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->a:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->b:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->c:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->d:[Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/base/log/sevicelevel/bean/PlayLog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;
    .locals 1

    const-class v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;
    .locals 1

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->d:[Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    invoke-virtual {v0}, [Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    return-object v0
.end method


# virtual methods
.method public abstract getId()I
.end method
