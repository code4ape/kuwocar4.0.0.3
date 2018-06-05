.class public abstract enum Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

.field public static final enum b:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

.field private static final synthetic c:[Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType$1;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType$2;

    const-string v1, "Fail"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    aput-object v1, v0, v3

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->c:[Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/base/log/sevicelevel/bean/CloudLog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;
    .locals 1

    const-class v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;
    .locals 1

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->c:[Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    invoke-virtual {v0}, [Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
