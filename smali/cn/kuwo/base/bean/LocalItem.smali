.class public abstract enum Lcn/kuwo/base/bean/LocalItem;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/bean/LocalItem;

.field public static final enum b:Lcn/kuwo/base/bean/LocalItem;

.field public static final enum c:Lcn/kuwo/base/bean/LocalItem;

.field public static final enum d:Lcn/kuwo/base/bean/LocalItem;

.field public static final enum e:Lcn/kuwo/base/bean/LocalItem;

.field public static final enum f:Lcn/kuwo/base/bean/LocalItem;

.field private static final synthetic g:[Lcn/kuwo/base/bean/LocalItem;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/base/bean/LocalItem$1;

    const-string v1, "SETTING"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/bean/LocalItem$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/LocalItem;->a:Lcn/kuwo/base/bean/LocalItem;

    new-instance v0, Lcn/kuwo/base/bean/LocalItem$2;

    const-string v1, "Mine"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/bean/LocalItem$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/LocalItem;->b:Lcn/kuwo/base/bean/LocalItem;

    new-instance v0, Lcn/kuwo/base/bean/LocalItem$3;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/bean/LocalItem$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/LocalItem;->c:Lcn/kuwo/base/bean/LocalItem;

    new-instance v0, Lcn/kuwo/base/bean/LocalItem$4;

    const-string v1, "MUSIC_CLASS"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/base/bean/LocalItem$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/LocalItem;->d:Lcn/kuwo/base/bean/LocalItem;

    new-instance v0, Lcn/kuwo/base/bean/LocalItem$5;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/base/bean/LocalItem$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/LocalItem;->e:Lcn/kuwo/base/bean/LocalItem;

    new-instance v0, Lcn/kuwo/base/bean/LocalItem$6;

    const-string v1, "NEW_LIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/LocalItem$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/LocalItem;->f:Lcn/kuwo/base/bean/LocalItem;

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/kuwo/base/bean/LocalItem;

    sget-object v1, Lcn/kuwo/base/bean/LocalItem;->a:Lcn/kuwo/base/bean/LocalItem;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/bean/LocalItem;->b:Lcn/kuwo/base/bean/LocalItem;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/base/bean/LocalItem;->c:Lcn/kuwo/base/bean/LocalItem;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/base/bean/LocalItem;->d:Lcn/kuwo/base/bean/LocalItem;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/base/bean/LocalItem;->e:Lcn/kuwo/base/bean/LocalItem;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/base/bean/LocalItem;->f:Lcn/kuwo/base/bean/LocalItem;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/base/bean/LocalItem;->g:[Lcn/kuwo/base/bean/LocalItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/base/bean/LocalItem$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/bean/LocalItem;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/bean/LocalItem;
    .locals 1

    const-class v0, Lcn/kuwo/base/bean/LocalItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/LocalItem;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/bean/LocalItem;
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/LocalItem;->g:[Lcn/kuwo/base/bean/LocalItem;

    invoke-virtual {v0}, [Lcn/kuwo/base/bean/LocalItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/bean/LocalItem;

    return-object v0
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method
