.class public abstract enum Lcn/kuwo/mod/search/SearchMode;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/search/SearchMode;

.field public static final enum b:Lcn/kuwo/mod/search/SearchMode;

.field public static final enum c:Lcn/kuwo/mod/search/SearchMode;

.field public static final enum d:Lcn/kuwo/mod/search/SearchMode;

.field private static final synthetic e:[Lcn/kuwo/mod/search/SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/search/SearchMode$1;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/search/SearchMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/search/SearchMode;->a:Lcn/kuwo/mod/search/SearchMode;

    new-instance v0, Lcn/kuwo/mod/search/SearchMode$2;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/search/SearchMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/search/SearchMode;->b:Lcn/kuwo/mod/search/SearchMode;

    new-instance v0, Lcn/kuwo/mod/search/SearchMode$3;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/search/SearchMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/search/SearchMode;->c:Lcn/kuwo/mod/search/SearchMode;

    new-instance v0, Lcn/kuwo/mod/search/SearchMode$4;

    const-string v1, "MV"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/mod/search/SearchMode$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/search/SearchMode;->d:Lcn/kuwo/mod/search/SearchMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/kuwo/mod/search/SearchMode;

    sget-object v1, Lcn/kuwo/mod/search/SearchMode;->a:Lcn/kuwo/mod/search/SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/search/SearchMode;->b:Lcn/kuwo/mod/search/SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/search/SearchMode;->c:Lcn/kuwo/mod/search/SearchMode;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/mod/search/SearchMode;->d:Lcn/kuwo/mod/search/SearchMode;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/mod/search/SearchMode;->e:[Lcn/kuwo/mod/search/SearchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/mod/search/SearchMode$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/mod/search/SearchMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/search/SearchMode;
    .locals 1

    const-class v0, Lcn/kuwo/mod/search/SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/search/SearchMode;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/search/SearchMode;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/search/SearchMode;->e:[Lcn/kuwo/mod/search/SearchMode;

    invoke-virtual {v0}, [Lcn/kuwo/mod/search/SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/search/SearchMode;

    return-object v0
.end method
