.class public abstract enum Lcn/kuwo/base/bean/MusicQuality;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/bean/MusicQuality;

.field public static final enum b:Lcn/kuwo/base/bean/MusicQuality;

.field public static final enum c:Lcn/kuwo/base/bean/MusicQuality;

.field public static final enum d:Lcn/kuwo/base/bean/MusicQuality;

.field private static final synthetic e:[Lcn/kuwo/base/bean/MusicQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/bean/MusicQuality$1;

    const-string v1, "FLUENT"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/MusicQuality$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    new-instance v0, Lcn/kuwo/base/bean/MusicQuality$2;

    const-string v1, "HIGHQUALITY"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/bean/MusicQuality$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicQuality;->b:Lcn/kuwo/base/bean/MusicQuality;

    new-instance v0, Lcn/kuwo/base/bean/MusicQuality$3;

    const-string v1, "PERFECT"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/bean/MusicQuality$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicQuality;->c:Lcn/kuwo/base/bean/MusicQuality;

    new-instance v0, Lcn/kuwo/base/bean/MusicQuality$4;

    const-string v1, "LOSSLESS"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/bean/MusicQuality$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicQuality;->d:Lcn/kuwo/base/bean/MusicQuality;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/kuwo/base/bean/MusicQuality;

    sget-object v1, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/base/bean/MusicQuality;->b:Lcn/kuwo/base/bean/MusicQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/bean/MusicQuality;->c:Lcn/kuwo/base/bean/MusicQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/base/bean/MusicQuality;->d:Lcn/kuwo/base/bean/MusicQuality;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/base/bean/MusicQuality;->e:[Lcn/kuwo/base/bean/MusicQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/base/bean/MusicQuality$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/bean/MusicQuality;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicQuality;
    .locals 5

    if-nez p0, :cond_1

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/bean/MusicQuality;->values()[Lcn/kuwo/base/bean/MusicQuality;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicQuality;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicQuality;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    goto :goto_0

    :cond_1
    const-string v0, "h"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->b:Lcn/kuwo/base/bean/MusicQuality;

    goto :goto_0

    :cond_2
    const-string v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->c:Lcn/kuwo/base/bean/MusicQuality;

    goto :goto_0

    :cond_3
    const-string v0, "pp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->d:Lcn/kuwo/base/bean/MusicQuality;

    goto :goto_0

    :cond_4
    const-string v0, "ff"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->d:Lcn/kuwo/base/bean/MusicQuality;

    goto :goto_0

    :cond_5
    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicQuality;
    .locals 1

    const-class v0, Lcn/kuwo/base/bean/MusicQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicQuality;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/bean/MusicQuality;
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->e:[Lcn/kuwo/base/bean/MusicQuality;

    invoke-virtual {v0}, [Lcn/kuwo/base/bean/MusicQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/bean/MusicQuality;

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->d:Lcn/kuwo/base/bean/MusicQuality;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->c:Lcn/kuwo/base/bean/MusicQuality;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/MusicQuality;->d:Lcn/kuwo/base/bean/MusicQuality;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
