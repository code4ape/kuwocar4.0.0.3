.class public final enum Lcn/kuwo/base/bean/QukuResult$QukuType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/bean/QukuResult$QukuType;

.field public static final enum b:Lcn/kuwo/base/bean/QukuResult$QukuType;

.field public static final enum c:Lcn/kuwo/base/bean/QukuResult$QukuType;

.field public static final enum d:Lcn/kuwo/base/bean/QukuResult$QukuType;

.field public static final enum e:Lcn/kuwo/base/bean/QukuResult$QukuType;

.field private static final synthetic f:[Lcn/kuwo/base/bean/QukuResult$QukuType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/bean/QukuResult$QukuType;

    const-string v1, "unknow"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/QukuResult$QukuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/QukuResult$QukuType;->a:Lcn/kuwo/base/bean/QukuResult$QukuType;

    new-instance v0, Lcn/kuwo/base/bean/QukuResult$QukuType;

    const-string v1, "recommend"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/bean/QukuResult$QukuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/QukuResult$QukuType;->b:Lcn/kuwo/base/bean/QukuResult$QukuType;

    new-instance v0, Lcn/kuwo/base/bean/QukuResult$QukuType;

    const-string v1, "library"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/bean/QukuResult$QukuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/QukuResult$QukuType;->c:Lcn/kuwo/base/bean/QukuResult$QukuType;

    new-instance v0, Lcn/kuwo/base/bean/QukuResult$QukuType;

    const-string v1, "librarynew"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/bean/QukuResult$QukuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/QukuResult$QukuType;->d:Lcn/kuwo/base/bean/QukuResult$QukuType;

    new-instance v0, Lcn/kuwo/base/bean/QukuResult$QukuType;

    const-string v1, "sublist"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/base/bean/QukuResult$QukuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/QukuResult$QukuType;->e:Lcn/kuwo/base/bean/QukuResult$QukuType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/base/bean/QukuResult$QukuType;

    sget-object v1, Lcn/kuwo/base/bean/QukuResult$QukuType;->a:Lcn/kuwo/base/bean/QukuResult$QukuType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/bean/QukuResult$QukuType;->b:Lcn/kuwo/base/bean/QukuResult$QukuType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/bean/QukuResult$QukuType;->c:Lcn/kuwo/base/bean/QukuResult$QukuType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/base/bean/QukuResult$QukuType;->d:Lcn/kuwo/base/bean/QukuResult$QukuType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/base/bean/QukuResult$QukuType;->e:Lcn/kuwo/base/bean/QukuResult$QukuType;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/base/bean/QukuResult$QukuType;->f:[Lcn/kuwo/base/bean/QukuResult$QukuType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/bean/QukuResult$QukuType;
    .locals 1

    const-class v0, Lcn/kuwo/base/bean/QukuResult$QukuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/QukuResult$QukuType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/bean/QukuResult$QukuType;
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/QukuResult$QukuType;->f:[Lcn/kuwo/base/bean/QukuResult$QukuType;

    invoke-virtual {v0}, [Lcn/kuwo/base/bean/QukuResult$QukuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/bean/QukuResult$QukuType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/kuwo/base/bean/QukuResult$1;->a:[I

    invoke-virtual {p0}, Lcn/kuwo/base/bean/QukuResult$QukuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "recommend"

    goto :goto_0

    :pswitch_2
    const-string v0, "musiclib"

    goto :goto_0

    :pswitch_3
    const-string v0, "xh_newquku"

    goto :goto_0

    :pswitch_4
    const-string v0, "sub_list"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
