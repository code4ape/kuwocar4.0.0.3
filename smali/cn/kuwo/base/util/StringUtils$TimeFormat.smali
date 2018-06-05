.class public final enum Lcn/kuwo/base/util/StringUtils$TimeFormat;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcn/kuwo/base/util/StringUtils$TimeFormat;

.field public static final enum Hour:Lcn/kuwo/base/util/StringUtils$TimeFormat;

.field public static final enum Minute:Lcn/kuwo/base/util/StringUtils$TimeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/util/StringUtils$TimeFormat;

    const-string v1, "Minute"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/util/StringUtils$TimeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/util/StringUtils$TimeFormat;->Minute:Lcn/kuwo/base/util/StringUtils$TimeFormat;

    new-instance v0, Lcn/kuwo/base/util/StringUtils$TimeFormat;

    const-string v1, "Hour"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/util/StringUtils$TimeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/util/StringUtils$TimeFormat;->Hour:Lcn/kuwo/base/util/StringUtils$TimeFormat;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/kuwo/base/util/StringUtils$TimeFormat;

    sget-object v1, Lcn/kuwo/base/util/StringUtils$TimeFormat;->Minute:Lcn/kuwo/base/util/StringUtils$TimeFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/util/StringUtils$TimeFormat;->Hour:Lcn/kuwo/base/util/StringUtils$TimeFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcn/kuwo/base/util/StringUtils$TimeFormat;->$VALUES:[Lcn/kuwo/base/util/StringUtils$TimeFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/util/StringUtils$TimeFormat;
    .locals 1

    const-class v0, Lcn/kuwo/base/util/StringUtils$TimeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/util/StringUtils$TimeFormat;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/util/StringUtils$TimeFormat;
    .locals 1

    sget-object v0, Lcn/kuwo/base/util/StringUtils$TimeFormat;->$VALUES:[Lcn/kuwo/base/util/StringUtils$TimeFormat;

    invoke-virtual {v0}, [Lcn/kuwo/base/util/StringUtils$TimeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/util/StringUtils$TimeFormat;

    return-object v0
.end method
