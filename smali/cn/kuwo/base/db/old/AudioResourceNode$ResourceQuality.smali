.class public final enum Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

.field public static final enum b:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

.field public static final enum c:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

.field public static final enum d:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

.field public static final enum e:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

.field public static final enum f:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

.field private static final synthetic g:[Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    const-string v1, "adaptive"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->a:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    new-instance v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    const-string v1, "fluent"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->b:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    new-instance v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    const-string v1, "standard"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->c:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    new-instance v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    const-string v1, "highquality"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->d:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    new-instance v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    const-string v1, "perfect"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->e:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    new-instance v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    const-string v1, "lossless"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->f:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    sget-object v1, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->a:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->b:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->c:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->d:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->e:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->f:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->g:[Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;
    .locals 1

    const-class v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;
    .locals 1

    sget-object v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->g:[Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    invoke-virtual {v0}, [Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    return-object v0
.end method
