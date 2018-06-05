.class public abstract enum Lcn/kuwo/base/cache/CacheCategoryNames;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/cache/CacheCategoryNames;

.field public static final enum b:Lcn/kuwo/base/cache/CacheCategoryNames;

.field public static final enum c:Lcn/kuwo/base/cache/CacheCategoryNames;

.field public static final enum d:Lcn/kuwo/base/cache/CacheCategoryNames;

.field public static final enum e:Lcn/kuwo/base/cache/CacheCategoryNames;

.field public static final enum f:Lcn/kuwo/base/cache/CacheCategoryNames;

.field private static final synthetic g:[Lcn/kuwo/base/cache/CacheCategoryNames;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/base/cache/CacheCategoryNames$1;

    const-string v1, "CATEGORY_QUKU_TYPE"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/cache/CacheCategoryNames$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->a:Lcn/kuwo/base/cache/CacheCategoryNames;

    new-instance v0, Lcn/kuwo/base/cache/CacheCategoryNames$2;

    const-string v1, "CATEGORY_LYRICS_TYPE"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/cache/CacheCategoryNames$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    new-instance v0, Lcn/kuwo/base/cache/CacheCategoryNames$3;

    const-string v1, "CATEGORY_ARTISTPIC_TYPE"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/cache/CacheCategoryNames$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->c:Lcn/kuwo/base/cache/CacheCategoryNames;

    new-instance v0, Lcn/kuwo/base/cache/CacheCategoryNames$4;

    const-string v1, "CATEGORY_CONFIG_TYPE"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/base/cache/CacheCategoryNames$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->d:Lcn/kuwo/base/cache/CacheCategoryNames;

    new-instance v0, Lcn/kuwo/base/cache/CacheCategoryNames$5;

    const-string v1, "CATEGORY_SMALLPIC_TYPE"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/base/cache/CacheCategoryNames$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->e:Lcn/kuwo/base/cache/CacheCategoryNames;

    new-instance v0, Lcn/kuwo/base/cache/CacheCategoryNames$6;

    const-string v1, "CATEGORY_MVPIC_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/cache/CacheCategoryNames$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->f:Lcn/kuwo/base/cache/CacheCategoryNames;

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/kuwo/base/cache/CacheCategoryNames;

    sget-object v1, Lcn/kuwo/base/cache/CacheCategoryNames;->a:Lcn/kuwo/base/cache/CacheCategoryNames;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/cache/CacheCategoryNames;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/base/cache/CacheCategoryNames;->c:Lcn/kuwo/base/cache/CacheCategoryNames;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/base/cache/CacheCategoryNames;->d:Lcn/kuwo/base/cache/CacheCategoryNames;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/base/cache/CacheCategoryNames;->e:Lcn/kuwo/base/cache/CacheCategoryNames;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/base/cache/CacheCategoryNames;->f:Lcn/kuwo/base/cache/CacheCategoryNames;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->g:[Lcn/kuwo/base/cache/CacheCategoryNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/base/cache/CacheCategoryNames$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/cache/CacheCategoryNames;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/cache/CacheCategoryNames;
    .locals 1

    const-class v0, Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/cache/CacheCategoryNames;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/cache/CacheCategoryNames;
    .locals 1

    sget-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->g:[Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v0}, [Lcn/kuwo/base/cache/CacheCategoryNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/cache/CacheCategoryNames;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public abstract c()Ljava/lang/String;
.end method
