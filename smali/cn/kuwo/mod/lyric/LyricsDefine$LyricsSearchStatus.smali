.class public final enum Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

.field public static final enum b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

.field public static final enum c:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

.field public static final enum d:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

.field public static final enum e:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

.field private static final synthetic f:[Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    const-string v1, "INITIALIZATION"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    const-string v1, "SEARCHING"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->e:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->e:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->f:[Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;
    .locals 1

    const-class v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->f:[Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    invoke-virtual {v0}, [Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    return-object v0
.end method
