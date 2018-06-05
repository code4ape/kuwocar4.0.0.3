.class public final enum Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

.field public static final enum b:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

.field public static final enum c:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

.field private static final synthetic d:[Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    const-string v1, "CONTENT"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->d:[Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;
    .locals 1

    const-class v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->d:[Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    invoke-virtual {v0}, [Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    return-object v0
.end method
