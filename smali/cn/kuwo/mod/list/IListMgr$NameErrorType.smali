.class public final enum Lcn/kuwo/mod/list/IListMgr$NameErrorType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

.field public static final enum b:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

.field public static final enum c:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

.field public static final enum d:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

.field public static final enum e:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

.field public static final enum f:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

.field private static final synthetic g:[Lcn/kuwo/mod/list/IListMgr$NameErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/list/IListMgr$NameErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->a:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    new-instance v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/list/IListMgr$NameErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->b:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    new-instance v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/mod/list/IListMgr$NameErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->c:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    new-instance v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    const-string v1, "ILLEGAL_CHAR"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/mod/list/IListMgr$NameErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->d:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    new-instance v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    const-string v1, "EXISTS_NAME"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/mod/list/IListMgr$NameErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->e:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    new-instance v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    const-string v1, "OTHER_ERROR_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr$NameErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->f:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    sget-object v1, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->a:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->b:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->c:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->d:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->e:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->f:Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->g:[Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/list/IListMgr$NameErrorType;
    .locals 1

    const-class v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/list/IListMgr$NameErrorType;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->g:[Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    invoke-virtual {v0}, [Lcn/kuwo/mod/list/IListMgr$NameErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/list/IListMgr$NameErrorType;

    return-object v0
.end method
