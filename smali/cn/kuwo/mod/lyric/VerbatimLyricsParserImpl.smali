.class public final Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/lyric/ILyricsParser;


# instance fields
.field private a:Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->a:Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->b:Ljava/util/List;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->c:Ljava/util/List;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->d:Ljava/util/List;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->e:Ljava/util/List;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->f:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->h:I

    iput v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->j:Z

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

.method private a(ILjava/lang/String;Ljava/lang/String;II)Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->h:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->i:I

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;

    invoke-direct {v1}, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;-><init>()V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->a:Ljava/lang/Integer;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->b:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->c:Ljava/lang/Integer;

    iput-object v2, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    return-object v1
.end method

.method private a(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;-><init>(Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$1;)V

    iput-object p1, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->a:Ljava/lang/Integer;

    if-nez p2, :cond_2

    const-string v0, ""

    iput-object v0, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->b:Ljava/lang/String;

    :goto_1
    iput-object p3, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;

    iget-object v1, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->b:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object p2, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;

    const/4 v1, 0x1

    move-object v2, v0

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;

    iget-object v4, v0, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, v0, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    iput-object v4, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    iget-object v4, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    iput-object v4, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    :cond_4
    iget-object v4, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->a:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->b:Ljava/lang/Integer;

    iget-object v2, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->b:Ljava/lang/Integer;

    iput-object v2, v0, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->a:Ljava/lang/Integer;

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->b:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

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

    if-eqz v1, :cond_4

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    :cond_2
    const-string v0, "<(-?\\d+),(-?\\d+)(?:,-?\\d+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->a(ILjava/lang/String;Ljava/lang/String;II)Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    const-string v1, "<-?\\d+,-?\\d+(,-?\\d+)?>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    const-string v0, "\\[(\\d{1,2}):(\\d{1,2})(?:\\.(\\d{1,4}))?\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v7}, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    const-string v0, "\\[(ver|ti|ar|al|by|kuwo):\\s*(\\S+(?:\\s+\\S+)*)\\s*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kuwo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->h:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->i:I

    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->h:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->i:I

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->j:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    iput-boolean v10, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->j:Z

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->a:Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/kuwo/mod/lyric/ILyrics;
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->a:Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->d:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->e:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->f:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    iput v3, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->h:I

    iput v3, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->i:I

    const-string v0, "\\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-boolean v3, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->j:Z

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    iget-boolean v5, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->j:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;

    iget-object v3, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->c:Ljava/util/List;

    iget-object v4, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->a:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->b:Ljava/util/List;

    iget-object v4, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->d:Ljava/util/List;

    iget-object v0, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl$TimeTagInfo;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->a:Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->b:Ljava/util/List;

    iget-object v3, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->c:Ljava/util/List;

    iget-object v4, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->d:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->e:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->b:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->c:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->d:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->e:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->f:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;->a:Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;

    goto/16 :goto_0
.end method
