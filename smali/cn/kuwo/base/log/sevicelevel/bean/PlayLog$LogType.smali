.class public abstract enum Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

.field public static final enum b:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

.field public static final enum c:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

.field public static final enum d:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

.field private static final synthetic e:[Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType$1;

    const-string v1, "Music"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType$2;

    const-string v1, "Mv"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType$3;

    const-string v1, "Radio"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType$4;

    const-string v1, "AudioMaterial"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->d:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->d:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->e:[Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/base/log/sevicelevel/bean/PlayLog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;
    .locals 1

    const-class v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;
    .locals 1

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->e:[Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    invoke-virtual {v0}, [Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
