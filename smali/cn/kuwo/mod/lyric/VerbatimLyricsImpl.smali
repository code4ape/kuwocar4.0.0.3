.class public final Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/lyric/ILyrics;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:I

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const v3, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->b:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->e:J

    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->f:Ljava/util/List;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->l:Z

    return-void
.end method

.method private b(I)Ljava/lang/Integer;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;IILandroid/graphics/Paint;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    if-gez p2, :cond_2

    move p2, v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    int-to-float v3, p3

    const/4 v4, 0x0

    invoke-virtual {p4, v2, v1, v3, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-lez v1, :cond_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcn/kuwo/base/util/StringUtils;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-gtz v1, :cond_3

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public a(I)Lcn/kuwo/mod/lyric/ILyrics;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->l:Z

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a(Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;I)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/List;
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    invoke-virtual {p0, p1, v1, p2, p3}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a(Ljava/lang/String;IILandroid/graphics/Paint;)I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    new-instance v2, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;-><init>(Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->d:F

    iput v1, v2, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->a:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v2, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    new-instance v3, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;

    invoke-direct {v3, p0}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;-><init>(Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;)V

    int-to-float v4, v2

    mul-float/2addr v4, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->d:F

    add-int/2addr v2, v1

    iput v1, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->a:I

    iput v2, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "al"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "ar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "by"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->d:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->e:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->e:J

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7fffffff

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->f:Ljava/util/List;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->f:Ljava/util/List;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    iput-object p3, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->b(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public a(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z
    .locals 11

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->b(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v4, p1, v0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->h:Ljava/util/List;

    iget v1, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;

    iget-object v6, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4

    iget-object v6, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_2

    iget-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v3, v6

    if-nez v3, :cond_3

    iget-object v1, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    iget-object v6, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-float v4, v4

    mul-float/2addr v4, v9

    iget-object v5, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v5, v1

    int-to-float v1, v1

    div-float v1, v4, v1

    add-float/2addr v1, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    goto :goto_1

    :cond_4
    iget-object v1, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    move v0, v2

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x64

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    move v0, v2

    goto/16 :goto_0
.end method

.method public a(Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;I)Z
    .locals 25

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->getAlbum()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->getArtist()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->c:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->f()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->d:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->e:J

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->b()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->d()Ljava/util/List;

    move-result-object v15

    if-eqz v13, :cond_1

    if-eqz v14, :cond_1

    if-nez v15, :cond_2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->l:Z

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    sget v4, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a:I

    invoke-static {v4}, Lcn/kuwo/base/util/ScreenUtility;->sp2px(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v8, 0x0

    const/4 v4, 0x0

    move v12, v4

    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_7

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_1

    :cond_4
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object v11, v6

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    move v8, v9

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;

    iget v0, v5, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->b:I

    move/from16 v22, v0

    iget-object v0, v4, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->b:Ljava/lang/Integer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    new-instance v22, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;

    invoke-direct/range {v22 .. v22}, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;-><init>()V

    iget-object v0, v4, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->a:Ljava/lang/Integer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->a:Ljava/lang/Integer;

    iget-object v0, v4, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->b:Ljava/lang/Integer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->b:Ljava/lang/Integer;

    iget-object v0, v4, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->c:Ljava/lang/Integer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    sub-int v23, v23, v9

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->c:Ljava/lang/Integer;

    iget-object v0, v4, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    iget-object v0, v4, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->e:Ljava/lang/Integer;

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_5
    move v8, v9

    :cond_6
    iget-object v5, v5, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl$BreakInfo;->c:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v9, v4, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v5, v4, Lcn/kuwo/mod/lyric/LyricsDefine$OneWord;->d:Ljava/lang/Integer;

    :goto_4
    move-object v10, v5

    move-object v11, v9

    move v9, v8

    move-object v8, v4

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->l:Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    move-object v5, v10

    move-object v9, v11

    goto :goto_4
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    return-object v0
.end method

.method public b(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z
    .locals 11

    const/4 v3, 0x1

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/16 v8, 0x64

    const/4 v2, 0x0

    iget-wide v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->e:J

    sub-long v4, p1, v0

    if-nez p3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    iput v2, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iput v2, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    iput v8, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v4, v0

    long-to-float v0, v0

    mul-float/2addr v0, v10

    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    :goto_2
    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_8

    if-nez v1, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->b(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iput v8, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    move v0, v2

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    if-nez v0, :cond_5

    iput v2, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iput v2, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    move v0, v2

    goto/16 :goto_0

    :cond_5
    iput v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    iget v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_7

    iput v8, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    :goto_4
    move v0, v3

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v4, v0

    long-to-float v0, v0

    mul-float/2addr v0, v10

    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->g:Ljava/util/List;

    iget v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->b(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->i:I

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_a

    iput v8, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    :goto_5
    move v0, v3

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v4, v0

    long-to-float v0, v0

    mul-float/2addr v0, v10

    iget-object v1, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    goto :goto_5
.end method

.method public c()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->h:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->e:J

    return-wide v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/VerbatimLyricsImpl;->c:Ljava/lang/String;

    return-object v0
.end method
