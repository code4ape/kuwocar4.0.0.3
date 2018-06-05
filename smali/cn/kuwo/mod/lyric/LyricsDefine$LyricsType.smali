.class public final enum Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

.field public static final enum b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

.field private static final synthetic c:[Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    const-string v1, "LRC"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    const-string v1, "LRCX"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    aput-object v1, v0, v3

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->c:[Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;
    .locals 1

    const-class v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->c:[Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-virtual {v0}, [Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
