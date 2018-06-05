.class public abstract enum Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

.field public static final enum b:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

.field public static final enum c:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

.field public static final enum d:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

.field public static final enum e:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

.field private static final synthetic f:[Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$1;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$2;

    const-string v1, "Start"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$3;

    const-string v1, "Exit"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$4;

    const-string v1, "Show"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->d:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$5;

    const-string v1, "Hide"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->e:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->d:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->e:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->f:[Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/base/log/sevicelevel/bean/AppLog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;
    .locals 1

    const-class v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;
    .locals 1

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->f:[Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    invoke-virtual {v0}, [Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
