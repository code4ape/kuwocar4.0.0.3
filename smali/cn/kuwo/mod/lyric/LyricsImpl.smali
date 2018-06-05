.class public Lcn/kuwo/mod/lyric/LyricsImpl;
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

.field private h:I

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const v3, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->a:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->b:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->e:J

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->f:Ljava/util/List;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->k:Z

    return-void
.end method

.method private b(I)Ljava/lang/Integer;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

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
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

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

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->k:Z

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcn/kuwo/mod/lyric/LyricsImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/LyricsImpl;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/kuwo/mod/lyric/LyricsImpl;->a(Lcn/kuwo/mod/lyric/LyricsImpl;I)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->f:Ljava/util/List;

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
    invoke-virtual {p0, p1, v1, p2, p3}, Lcn/kuwo/mod/lyric/LyricsImpl;->a(Ljava/lang/String;IILandroid/graphics/Paint;)I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;-><init>(Lcn/kuwo/mod/lyric/LyricsImpl;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v3, v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v2, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;->b:F

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    new-instance v3, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;

    invoke-direct {v3, p0}, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;-><init>(Lcn/kuwo/mod/lyric/LyricsImpl;)V

    int-to-float v4, v2

    mul-float/2addr v4, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;->b:F

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;->a:Ljava/lang/String;

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

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "al"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "ar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "by"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->d:Ljava/lang/String;

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

    iput-wide v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->e:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->e:J

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7fffffff

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->f:Ljava/util/List;

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->f:Ljava/util/List;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/LyricsImpl;->b(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public a(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z
    .locals 11

    const/16 v10, 0x64

    const/4 v3, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    iget-wide v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->e:J

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
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    iput v10, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v4, v0

    long-to-float v0, v0

    mul-float/2addr v0, v9

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    :goto_2
    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_8

    if-nez v1, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/LyricsImpl;->b(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iput v2, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    move v0, v2

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    if-nez v0, :cond_5

    iput v2, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iput v2, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    move v0, v2

    goto/16 :goto_0

    :cond_5
    iput v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    iget v1, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_7

    iput v10, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    :goto_4
    move v0, v3

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v4, v0

    long-to-float v0, v0

    mul-float/2addr v0, v9

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    iget v1, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/LyricsImpl;->b(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->h:I

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_a

    iput v10, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    :goto_5
    move v0, v3

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v4, v0

    long-to-float v0, v0

    mul-float/2addr v0, v9

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    goto :goto_5
.end method

.method public a(Lcn/kuwo/mod/lyric/LyricsImpl;I)Z
    .locals 16

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/LyricsImpl;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/kuwo/mod/lyric/LyricsImpl;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/LyricsImpl;->getAlbum()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/kuwo/mod/lyric/LyricsImpl;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/LyricsImpl;->getArtist()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/kuwo/mod/lyric/LyricsImpl;->c:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/LyricsImpl;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/kuwo/mod/lyric/LyricsImpl;->d:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/LyricsImpl;->f()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcn/kuwo/mod/lyric/LyricsImpl;->e:J

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/LyricsImpl;->a()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcn/kuwo/mod/lyric/LyricsImpl;->b()Ljava/util/List;

    move-result-object v7

    if-eqz v6, :cond_1

    if-nez v7, :cond_2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/mod/lyric/LyricsImpl;->a(Ljava/util/List;Ljava/util/List;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/kuwo/mod/lyric/LyricsImpl;->k:Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    sget v2, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a:I

    invoke-static {v2}, Lcn/kuwo/base/util/ScreenUtility;->sp2px(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x0

    move v5, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1, v10}, Lcn/kuwo/mod/lyric/LyricsImpl;->a(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_4
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v5, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_5

    add-int/lit8 v3, v5, 0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v4, v2

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;

    iget-object v12, v2, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;->a:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v13, v4

    int-to-float v4, v4

    iget v2, v2, Lcn/kuwo/mod/lyric/LyricsImpl$BreakInfo;->b:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v12, v3

    const-wide/32 v14, 0xea60

    add-long/2addr v12, v14

    long-to-int v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcn/kuwo/mod/lyric/LyricsImpl;->a(Ljava/util/List;Ljava/util/List;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/kuwo/mod/lyric/LyricsImpl;->k:Z

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->g:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->e:J

    return-wide v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsImpl;->c:Ljava/lang/String;

    return-object v0
.end method
