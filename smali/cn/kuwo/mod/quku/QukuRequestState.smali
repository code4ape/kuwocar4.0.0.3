.class public final enum Lcn/kuwo/mod/quku/QukuRequestState;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/quku/QukuRequestState;

.field public static final enum b:Lcn/kuwo/mod/quku/QukuRequestState;

.field public static final enum c:Lcn/kuwo/mod/quku/QukuRequestState;

.field public static final enum d:Lcn/kuwo/mod/quku/QukuRequestState;

.field public static final enum e:Lcn/kuwo/mod/quku/QukuRequestState;

.field private static final synthetic f:[Lcn/kuwo/mod/quku/QukuRequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/quku/QukuRequestState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/quku/QukuRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->a:Lcn/kuwo/mod/quku/QukuRequestState;

    new-instance v0, Lcn/kuwo/mod/quku/QukuRequestState;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/quku/QukuRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->b:Lcn/kuwo/mod/quku/QukuRequestState;

    new-instance v0, Lcn/kuwo/mod/quku/QukuRequestState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/quku/QukuRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->c:Lcn/kuwo/mod/quku/QukuRequestState;

    new-instance v0, Lcn/kuwo/mod/quku/QukuRequestState;

    const-string v1, "NET_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/mod/quku/QukuRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->d:Lcn/kuwo/mod/quku/QukuRequestState;

    new-instance v0, Lcn/kuwo/mod/quku/QukuRequestState;

    const-string v1, "ONLY_WIFI"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/mod/quku/QukuRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->e:Lcn/kuwo/mod/quku/QukuRequestState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/mod/quku/QukuRequestState;

    sget-object v1, Lcn/kuwo/mod/quku/QukuRequestState;->a:Lcn/kuwo/mod/quku/QukuRequestState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/quku/QukuRequestState;->b:Lcn/kuwo/mod/quku/QukuRequestState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/quku/QukuRequestState;->c:Lcn/kuwo/mod/quku/QukuRequestState;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/mod/quku/QukuRequestState;->d:Lcn/kuwo/mod/quku/QukuRequestState;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/mod/quku/QukuRequestState;->e:Lcn/kuwo/mod/quku/QukuRequestState;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->f:[Lcn/kuwo/mod/quku/QukuRequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/quku/QukuRequestState;
    .locals 1

    const-class v0, Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/quku/QukuRequestState;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/quku/QukuRequestState;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->f:[Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-virtual {v0}, [Lcn/kuwo/mod/quku/QukuRequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/quku/QukuRequestState;

    return-object v0
.end method
