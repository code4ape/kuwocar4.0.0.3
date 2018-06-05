.class public final Lcn/kuwo/mod/lyric/LyricsParserImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/lyric/ILyricsParser;


# instance fields
.field private a:Lcn/kuwo/mod/lyric/LyricsImpl;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->a:Lcn/kuwo/mod/lyric/LyricsImpl;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->b:Ljava/util/List;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->c:Ljava/util/List;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->d:Ljava/util/List;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->e:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private a(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcn/kuwo/mod/lyric/LyricsParserImpl$TimeTagInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/kuwo/mod/lyric/LyricsParserImpl$TimeTagInfo;-><init>(Lcn/kuwo/mod/lyric/LyricsParserImpl;Lcn/kuwo/mod/lyric/LyricsParserImpl$1;)V

    iput-object p1, v0, Lcn/kuwo/mod/lyric/LyricsParserImpl$TimeTagInfo;->a:Ljava/lang/Integer;

    if-nez p2, :cond_1

    const-string v1, ""

    iput-object v1, v0, Lcn/kuwo/mod/lyric/LyricsParserImpl$TimeTagInfo;->b:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p2, v0, Lcn/kuwo/mod/lyric/LyricsParserImpl$TimeTagInfo;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "(\\[\\d{1,2}:.*\\d{1,4}\\])\\s*(\\S+(?:\\s+\\S+)*)?\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->f:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "\\[(\\d{1,2}):(\\d{1,2})(?:\\.(\\d{1,4}))?\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcn/kuwo/mod/lyric/LyricsParserImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->f:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsParserImpl;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "\\[(ver|ti|ar|al|by):\\s*(\\S+(?:\\s+\\S+)*)\\s*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->a:Lcn/kuwo/mod/lyric/LyricsImpl;

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/kuwo/mod/lyric/LyricsImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/kuwo/mod/lyric/ILyrics;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcn/kuwo/mod/lyric/LyricsParserImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsImpl;

    invoke-direct {v2}, Lcn/kuwo/mod/lyric/LyricsImpl;-><init>()V

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->a:Lcn/kuwo/mod/lyric/LyricsImpl;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->b:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->c:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->d:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->e:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->f:Ljava/lang/String;

    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcn/kuwo/mod/lyric/LyricsParserImpl;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/LyricsParserImpl$TimeTagInfo;

    iget-object v3, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->c:Ljava/util/List;

    iget-object v4, v0, Lcn/kuwo/mod/lyric/LyricsParserImpl$TimeTagInfo;->a:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->b:Ljava/util/List;

    iget-object v0, v0, Lcn/kuwo/mod/lyric/LyricsParserImpl$TimeTagInfo;->b:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->a:Lcn/kuwo/mod/lyric/LyricsImpl;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->b:Ljava/util/List;

    iget-object v3, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->c:Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/mod/lyric/LyricsImpl;->a(Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->d:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->b:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->c:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->d:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->e:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->f:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsParserImpl;->a:Lcn/kuwo/mod/lyric/LyricsImpl;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "(?<=[^\\n])\\[\\d{1,2}:\\d{1,2}(?:\\.\\d{1,4})?\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\r\n$0"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_1
    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
