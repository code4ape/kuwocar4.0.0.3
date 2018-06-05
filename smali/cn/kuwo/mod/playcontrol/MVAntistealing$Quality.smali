.class public abstract enum Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

.field public static final enum b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

.field private static final synthetic c:[Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality$1;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    new-instance v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality$2;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    sget-object v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    aput-object v1, v0, v3

    sput-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->c:[Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/mod/playcontrol/MVAntistealing$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;
    .locals 1

    const-class v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->c:[Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {v0}, [Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    return-object v0
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method
