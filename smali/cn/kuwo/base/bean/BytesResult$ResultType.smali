.class public final enum Lcn/kuwo/base/bean/BytesResult$ResultType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/bean/BytesResult$ResultType;

.field public static final enum b:Lcn/kuwo/base/bean/BytesResult$ResultType;

.field private static final synthetic c:[Lcn/kuwo/base/bean/BytesResult$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/bean/BytesResult$ResultType;

    const-string v1, "bytes"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/BytesResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/BytesResult$ResultType;->a:Lcn/kuwo/base/bean/BytesResult$ResultType;

    new-instance v0, Lcn/kuwo/base/bean/BytesResult$ResultType;

    const-string v1, "none"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/bean/BytesResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/BytesResult$ResultType;->b:Lcn/kuwo/base/bean/BytesResult$ResultType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/kuwo/base/bean/BytesResult$ResultType;

    sget-object v1, Lcn/kuwo/base/bean/BytesResult$ResultType;->a:Lcn/kuwo/base/bean/BytesResult$ResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/bean/BytesResult$ResultType;->b:Lcn/kuwo/base/bean/BytesResult$ResultType;

    aput-object v1, v0, v3

    sput-object v0, Lcn/kuwo/base/bean/BytesResult$ResultType;->c:[Lcn/kuwo/base/bean/BytesResult$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/bean/BytesResult$ResultType;
    .locals 1

    const-class v0, Lcn/kuwo/base/bean/BytesResult$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/BytesResult$ResultType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/bean/BytesResult$ResultType;
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/BytesResult$ResultType;->c:[Lcn/kuwo/base/bean/BytesResult$ResultType;

    invoke-virtual {v0}, [Lcn/kuwo/base/bean/BytesResult$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/bean/BytesResult$ResultType;

    return-object v0
.end method
