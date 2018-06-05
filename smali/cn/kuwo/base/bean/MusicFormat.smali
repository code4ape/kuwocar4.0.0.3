.class public abstract enum Lcn/kuwo/base/bean/MusicFormat;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/base/bean/MusicFormat;

.field public static final enum b:Lcn/kuwo/base/bean/MusicFormat;

.field public static final enum c:Lcn/kuwo/base/bean/MusicFormat;

.field public static final enum d:Lcn/kuwo/base/bean/MusicFormat;

.field public static final enum e:Lcn/kuwo/base/bean/MusicFormat;

.field public static final enum f:Lcn/kuwo/base/bean/MusicFormat;

.field public static final enum g:Lcn/kuwo/base/bean/MusicFormat;

.field private static final synthetic h:[Lcn/kuwo/base/bean/MusicFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/base/bean/MusicFormat$1;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/base/bean/MusicFormat$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/base/bean/MusicFormat$2;

    const-string v1, "AAC"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/bean/MusicFormat$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicFormat;->b:Lcn/kuwo/base/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/base/bean/MusicFormat$3;

    const-string v1, "MP3"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/bean/MusicFormat$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicFormat;->c:Lcn/kuwo/base/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/base/bean/MusicFormat$4;

    const-string v1, "MP4"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/base/bean/MusicFormat$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicFormat;->d:Lcn/kuwo/base/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/base/bean/MusicFormat$5;

    const-string v1, "WMA"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/base/bean/MusicFormat$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicFormat;->e:Lcn/kuwo/base/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/base/bean/MusicFormat$6;

    const-string v1, "APE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/MusicFormat$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicFormat;->f:Lcn/kuwo/base/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/base/bean/MusicFormat$7;

    const-string v1, "FLAC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/MusicFormat$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/MusicFormat;->g:Lcn/kuwo/base/bean/MusicFormat;

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/kuwo/base/bean/MusicFormat;

    sget-object v1, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/base/bean/MusicFormat;->b:Lcn/kuwo/base/bean/MusicFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/base/bean/MusicFormat;->c:Lcn/kuwo/base/bean/MusicFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/base/bean/MusicFormat;->d:Lcn/kuwo/base/bean/MusicFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/base/bean/MusicFormat;->e:Lcn/kuwo/base/bean/MusicFormat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/base/bean/MusicFormat;->f:Lcn/kuwo/base/bean/MusicFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/kuwo/base/bean/MusicFormat;->g:Lcn/kuwo/base/bean/MusicFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/base/bean/MusicFormat;->h:[Lcn/kuwo/base/bean/MusicFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/base/bean/MusicFormat$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/bean/MusicFormat;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicFormat;
    .locals 5

    if-nez p0, :cond_1

    sget-object v0, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/bean/MusicFormat;->values()[Lcn/kuwo/base/bean/MusicFormat;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicFormat;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicFormat;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/bean/MusicFormat;->values()[Lcn/kuwo/base/bean/MusicFormat;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicFormat;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicFormat;
    .locals 1

    const-class v0, Lcn/kuwo/base/bean/MusicFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicFormat;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/bean/MusicFormat;
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/MusicFormat;->h:[Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v0}, [Lcn/kuwo/base/bean/MusicFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/bean/MusicFormat;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
