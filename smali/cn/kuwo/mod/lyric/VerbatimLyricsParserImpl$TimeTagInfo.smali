.class Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:Ljava/lang/Integer;

.field b:Ljava/lang/String;

.field c:Ljava/util/List;

.field final synthetic d:Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;


# direct methods
.method private constructor <init>(Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->d:Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;-><init>(Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;)I
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->a:Ljava/lang/Integer;

    iget-object v1, p1, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->a(Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;)I

    move-result v0

    return v0
.end method
