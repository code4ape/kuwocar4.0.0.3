.class public final enum Lcn/kuwo/service/PlayProxy$Status;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/service/PlayProxy$Status;

.field public static final enum b:Lcn/kuwo/service/PlayProxy$Status;

.field public static final enum c:Lcn/kuwo/service/PlayProxy$Status;

.field public static final enum d:Lcn/kuwo/service/PlayProxy$Status;

.field public static final enum e:Lcn/kuwo/service/PlayProxy$Status;

.field private static final synthetic f:[Lcn/kuwo/service/PlayProxy$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/service/PlayProxy$Status;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/PlayProxy$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    new-instance v0, Lcn/kuwo/service/PlayProxy$Status;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/service/PlayProxy$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    new-instance v0, Lcn/kuwo/service/PlayProxy$Status;

    const-string v1, "BUFFERING"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/service/PlayProxy$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    new-instance v0, Lcn/kuwo/service/PlayProxy$Status;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/service/PlayProxy$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    new-instance v0, Lcn/kuwo/service/PlayProxy$Status;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/service/PlayProxy$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/service/PlayProxy$Status;

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/service/PlayProxy$Status;->f:[Lcn/kuwo/service/PlayProxy$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    const-class v0, Lcn/kuwo/service/PlayProxy$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/PlayProxy$Status;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->f:[Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {v0}, [Lcn/kuwo/service/PlayProxy$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/service/PlayProxy$Status;

    return-object v0
.end method
