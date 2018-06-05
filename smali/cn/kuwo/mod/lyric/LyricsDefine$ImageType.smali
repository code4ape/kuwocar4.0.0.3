.class public final enum Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

.field public static final enum b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

.field private static final synthetic c:[Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    const-string v1, "HEADPIC"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    const-string v1, "BACKGROUNDPIC"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    aput-object v1, v0, v3

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->c:[Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;
    .locals 1

    const-class v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->c:[Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v0}, [Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadPic"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BackgroundPic"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
