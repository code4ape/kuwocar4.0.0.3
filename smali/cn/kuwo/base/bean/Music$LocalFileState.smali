.class public final enum Lcn/kuwo/base/bean/Music$LocalFileState;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/bean/Music$LocalFileState;

.field public static final enum b:Lcn/kuwo/base/bean/Music$LocalFileState;

.field public static final enum c:Lcn/kuwo/base/bean/Music$LocalFileState;

.field private static final synthetic d:[Lcn/kuwo/base/bean/Music$LocalFileState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/bean/Music$LocalFileState;

    const-string v1, "NOT_CHECK"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/Music$LocalFileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/Music$LocalFileState;->a:Lcn/kuwo/base/bean/Music$LocalFileState;

    new-instance v0, Lcn/kuwo/base/bean/Music$LocalFileState;

    const-string v1, "EXIST"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/bean/Music$LocalFileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/Music$LocalFileState;->b:Lcn/kuwo/base/bean/Music$LocalFileState;

    new-instance v0, Lcn/kuwo/base/bean/Music$LocalFileState;

    const-string v1, "NOT_EXIST"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/bean/Music$LocalFileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/Music$LocalFileState;->c:Lcn/kuwo/base/bean/Music$LocalFileState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/base/bean/Music$LocalFileState;

    sget-object v1, Lcn/kuwo/base/bean/Music$LocalFileState;->a:Lcn/kuwo/base/bean/Music$LocalFileState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/bean/Music$LocalFileState;->b:Lcn/kuwo/base/bean/Music$LocalFileState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/bean/Music$LocalFileState;->c:Lcn/kuwo/base/bean/Music$LocalFileState;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/base/bean/Music$LocalFileState;->d:[Lcn/kuwo/base/bean/Music$LocalFileState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/bean/Music$LocalFileState;
    .locals 1

    const-class v0, Lcn/kuwo/base/bean/Music$LocalFileState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music$LocalFileState;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/bean/Music$LocalFileState;
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/Music$LocalFileState;->d:[Lcn/kuwo/base/bean/Music$LocalFileState;

    invoke-virtual {v0}, [Lcn/kuwo/base/bean/Music$LocalFileState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/bean/Music$LocalFileState;

    return-object v0
.end method
