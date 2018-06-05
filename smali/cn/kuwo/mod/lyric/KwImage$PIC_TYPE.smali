.class public final enum Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

.field public static final enum b:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

.field public static final enum c:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

.field public static final enum d:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

.field public static final enum e:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

.field private static final synthetic f:[Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    const-string v1, "SMALL_ARTIST"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->a:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    new-instance v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    const-string v1, "SMALL_ALBUM"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->b:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    new-instance v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    const-string v1, "BIG_PORTARIT"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->c:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    new-instance v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    const-string v1, "BIG_LANDSCAPE"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->d:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    new-instance v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    const-string v1, "BIG_ARTIST"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->e:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    sget-object v1, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->a:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->b:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->c:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->d:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->e:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->f:[Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;
    .locals 1

    const-class v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->f:[Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    invoke-virtual {v0}, [Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    return-object v0
.end method
