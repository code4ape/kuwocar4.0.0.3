.class public final enum Lcn/kuwo/mod/search/SearchDefine$RequestStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

.field public static final enum b:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

.field public static final enum c:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

.field public static final enum d:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

.field private static final synthetic e:[Lcn/kuwo/mod/search/SearchDefine$RequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->a:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    new-instance v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->b:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    new-instance v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    const-string v1, "CANCLE"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->c:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    new-instance v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->d:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    sget-object v1, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->a:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->b:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->c:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->d:Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->e:[Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/search/SearchDefine$RequestStatus;
    .locals 1

    const-class v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/search/SearchDefine$RequestStatus;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->e:[Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    invoke-virtual {v0}, [Lcn/kuwo/mod/search/SearchDefine$RequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/search/SearchDefine$RequestStatus;

    return-object v0
.end method
