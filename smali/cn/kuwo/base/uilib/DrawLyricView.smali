.class public Lcn/kuwo/base/uilib/DrawLyricView;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcn/kuwo/base/util/KwTimer$Listener;
.implements Lcn/kuwo/core/observers/ILyricsObserver;


# static fields
.field static final Tag:Ljava/lang/String; = "DrawLyricView"


# instance fields
.field final Lyric_Status_None:I

.field final Lyric_Status_Ready:I

.field final Lyric_Status_Search:I

.field final SCROLL_INCREMENT:I

.field final TIME_INTER:I

.field private bDragLyric:Z

.field bLineLyric:Z

.field bMustLineLyric:Z

.field private bRunning:Z

.field bfullMode:Z

.field curPercentage:I

.field private curPlayPos:I

.field dirtyRc:Landroid/graphics/Rect;

.field private dragCurTime:I

.field private dragPaint:Landroid/graphics/Paint;

.field private dragStartPos:I

.field private dragStartTime:I

.field private dragStartY:F

.field private draglength:F

.field i:J

.field private lineHeight:I

.field lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

.field private lyricPaint:Landroid/graphics/Paint;

.field lyricstatus:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

.field private nCurTab:I

.field ntimeFloat:I

.field private onClickListener:Lcn/kuwo/base/uilib/DrawLyricView$OnClickListener;

.field private playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

.field private prePlayPos:I

.field private rcDrawLine:Landroid/graphics/Rect;

.field rcText:Landroid/graphics/Rect;

.field private scrollOffset:I

.field private startDragTopY:F

.field startpos:I

.field timer:Lcn/kuwo/base/util/KwTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->Lyric_Status_None:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->Lyric_Status_Search:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->Lyric_Status_Ready:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->SCROLL_INCREMENT:I

    iput v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    const/16 v0, 0x32

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->TIME_INTER:I

    iput v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->ntimeFloat:I

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bRunning:Z

    iput v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->nCurTab:I

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bLineLyric:Z

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bMustLineLyric:Z

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricstatus:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startDragTopY:F

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dirtyRc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcText:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bfullMode:Z

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->curPercentage:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->i:J

    new-instance v0, Lcn/kuwo/base/uilib/DrawLyricView$1;

    invoke-direct {v0, p0}, Lcn/kuwo/base/uilib/DrawLyricView$1;-><init>(Lcn/kuwo/base/uilib/DrawLyricView;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-direct {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->Lyric_Status_None:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->Lyric_Status_Search:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->Lyric_Status_Ready:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->SCROLL_INCREMENT:I

    iput v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    const/16 v0, 0x32

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->TIME_INTER:I

    iput v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->ntimeFloat:I

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bRunning:Z

    iput v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->nCurTab:I

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bLineLyric:Z

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bMustLineLyric:Z

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricstatus:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startDragTopY:F

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dirtyRc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcText:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bfullMode:Z

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->curPercentage:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->i:J

    new-instance v0, Lcn/kuwo/base/uilib/DrawLyricView$1;

    invoke-direct {v0, p0}, Lcn/kuwo/base/uilib/DrawLyricView$1;-><init>(Lcn/kuwo/base/uilib/DrawLyricView;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-direct {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->init()V

    return-void
.end method

.method private Draging(F)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartY:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x40c00000    # 6.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartY:F

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    neg-int v1, v1

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startpos:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startDragTopY:F

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartPos:I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->k()I

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartTime:I

    iput-boolean v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    :cond_2
    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartY:F

    sub-float v1, p1, v1

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->draglength:F

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->draglength:F

    float-to-int v1, v1

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    div-int/2addr v1, v3

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->draglength:F

    float-to-int v3, v3

    iget v4, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    rem-int/2addr v3, v4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v4

    invoke-interface {v4}, Lcn/kuwo/mod/lyric/ILyricsMgr;->d()Lcn/kuwo/mod/lyric/ILyrics;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v5

    invoke-interface {v5}, Lcn/kuwo/mod/playcontrol/IPlayControl;->k()I

    move-result v5

    int-to-long v6, v5

    iget-object v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    invoke-interface {v4, v6, v7, v5}, Lcn/kuwo/mod/lyric/ILyrics;->a(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z

    invoke-interface {v4}, Lcn/kuwo/mod/lyric/ILyrics;->b()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartPos:I

    sub-int/2addr v5, v1

    if-gez v5, :cond_3

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->invalidate()V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getDuration()I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->invalidate()V

    move v0, v2

    goto :goto_0

    :cond_4
    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    int-to-double v8, v3

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->draglength:F

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-lez v3, :cond_9

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartPos:I

    if-gez v3, :cond_6

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->invalidate()V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    if-nez v1, :cond_7

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartTime:I

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartTime:I

    iget v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartPos:I

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    int-to-double v4, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    sub-int v0, v1, v0

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    goto :goto_1

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v5, v0, :cond_8

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getDuration()I

    move-result v0

    move v1, v0

    :goto_2
    int-to-double v8, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    int-to-double v0, v0

    mul-double/2addr v0, v6

    sub-double v0, v8, v0

    double-to-int v0, v0

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v5, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_9
    iget v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartPos:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_b

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v1, :cond_a

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartTime:I

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getDuration()I

    move-result v0

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartTime:I

    sub-int/2addr v0, v3

    int-to-double v4, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    goto :goto_1

    :cond_a
    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getDuration()I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    goto :goto_1

    :cond_b
    if-nez v1, :cond_c

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartTime:I

    iget v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartTime:I

    sub-int/2addr v0, v3

    int-to-double v8, v0

    mul-double/2addr v8, v6

    double-to-int v0, v8

    add-int/2addr v0, v1

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_d

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getDuration()I

    move-result v0

    move v1, v0

    :goto_3
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    int-to-double v0, v0

    mul-double/2addr v6, v0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v0, v0

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v0, v5, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_3
.end method

.method private DrawDragLine(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startpos:I

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v1, v8

    int-to-float v2, v7

    sub-int v0, v6, v8

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    div-int/lit16 v0, v0, 0x3e8

    rem-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    const v2, 0xea60

    div-int/2addr v1, v2

    iget-object v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const-string v2, "%02d:%02d"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v8

    add-int/lit8 v4, v7, -0x5

    int-to-float v4, v4

    iget-object v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v2, "%02d:%02d"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sub-int v1, v6, v8

    int-to-float v1, v1

    add-int/lit8 v2, v7, -0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getDirtyRc()Landroid/graphics/Rect;
    .locals 10

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startpos:I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/lyric/ILyricsMgr;->d()Lcn/kuwo/mod/lyric/ILyrics;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->k()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    invoke-interface {v1, v2, v3, v4}, Lcn/kuwo/mod/lyric/ILyrics;->a(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Lcn/kuwo/mod/lyric/ILyrics;->a()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    iget v0, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startpos:I

    iget v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startpos:I

    sub-int v2, v7, v2

    iget v4, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    div-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    if-eq v8, v0, :cond_4

    iget v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    sub-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    add-int/2addr v9, v2

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_1
    const/4 v0, -0x1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v0

    move v4, v5

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_2

    if-le v3, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dirtyRc:Landroid/graphics/Rect;

    sub-int v1, v6, v4

    div-int/lit8 v1, v1, 0x2

    add-int v2, v6, v4

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v5, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dirtyRc:Landroid/graphics/Rect;

    goto :goto_0

    :cond_4
    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    goto :goto_2
.end method

.method private init()V
    .locals 6

    const/16 v0, 0x12

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v1, v2, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    new-instance v1, Lcn/kuwo/base/util/KwTimer;

    invoke-direct {v1, p0}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->timer:Lcn/kuwo/base/util/KwTimer;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :try_start_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v1

    const v2, 0x7f06014e

    invoke-static {v1, v2}, Lcn/kuwo/base/util/ResourceUtils;->getDimension(Landroid/content/Context;I)F

    move-result v1

    invoke-static {v1}, Lcn/kuwo/base/util/ScreenUtility;->px2dip(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-gtz v1, :cond_2

    :goto_1
    mul-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Lcn/kuwo/base/util/ScreenUtility;->sp2px(I)I

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    if-gtz v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    :cond_0
    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->a(I)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcn/kuwo/base/util/ScreenUtility;->sp2px(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    const v1, 0x7f0600df

    invoke-static {v0, v1}, Lcn/kuwo/base/util/ResourceUtils;->getDimension(Landroid/content/Context;I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_2
    invoke-virtual {p0, p0}, Lcn/kuwo/base/uilib/DrawLyricView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->c()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricstatus:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->resume()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa

    invoke-static {v1}, Lcn/kuwo/base/util/ScreenUtility;->sp2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public ILyricObserver_BackgroundPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)V
    .locals 0

    return-void
.end method

.method public ILyricObserver_BackgroundPic_Changed(Landroid/graphics/Bitmap;ZZ)V
    .locals 0

    return-void
.end method

.method public ILyricObserver_HeadPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public ILyricObserver_Lyrics(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bMustLineLyric:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcn/kuwo/mod/lyric/ILyrics;->c()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bLineLyric:Z

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->invalidate()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public ILyricObserver_SearchList(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public UpdateView()V
    .locals 4

    iget-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bRunning:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricstatus:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/lyric/ILyricsMgr;->c()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->c()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricstatus:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricstatus:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->d()Lcn/kuwo/mod/lyric/ILyrics;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->k()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    invoke-interface {v0, v2, v3, v1}, Lcn/kuwo/mod/lyric/ILyrics;->a(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    iget v0, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->curPlayPos:I

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    iget v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bLineLyric:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    iget v1, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    iget v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->curPercentage:I

    if-eq v1, v2, :cond_0

    :cond_3
    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    iget v1, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->curPercentage:I

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->curPlayPos:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->invalidate()V

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/high16 v8, -0x40800000    # -1.0f

    const/16 v13, 0xff

    const/4 v3, -0x1

    const/4 v12, 0x0

    const-string v0, "LyricView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcn/kuwo/base/uilib/DrawLyricView;->i:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->i:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v0, v4, v12

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v12

    iget v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startpos:I

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->c()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    :cond_0
    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    if-ne v0, v2, :cond_2

    const-string v0, "\u6b63\u5728\u641c\u7d22\u6b4c\u8bcd..."

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startpos:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->e:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    if-ne v0, v2, :cond_4

    :cond_3
    const-string v0, "\u542c\u97f3\u4e50 \u7528\u9177\u6211"

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startpos:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->d()Lcn/kuwo/mod/lyric/ILyrics;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyrics;->a()Ljava/util/List;

    move-result-object v2

    iget-boolean v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startDragTopY:F

    iget v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->draglength:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startDragTopY:F

    iget v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->draglength:F

    add-float/2addr v7, v8

    iget v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v5, v12, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    int-to-long v6, v1

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    invoke-interface {v0, v6, v7, v1}, Lcn/kuwo/mod/lyric/ILyrics;->a(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    iget v0, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v12, :cond_a

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    invoke-virtual {v0, v12, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v5

    invoke-interface {v5}, Lcn/kuwo/mod/playcontrol/IPlayControl;->k()I

    move-result v5

    int-to-long v6, v5

    iget-object v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    invoke-interface {v0, v6, v7, v5}, Lcn/kuwo/mod/lyric/ILyrics;->a(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    iget v0, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iget v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    if-eq v0, v5, :cond_6

    iput v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    iget v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startDragTopY:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_6

    iput v12, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    :cond_6
    if-ne v0, v3, :cond_7

    iget v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    iput v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    :cond_7
    iget v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startDragTopY:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_8

    iput v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startDragTopY:F

    :cond_8
    iget v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    iget v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    if-ge v5, v6, :cond_9

    iget v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    :goto_3
    iget v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    neg-int v5, v5

    iget v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->startpos:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v6, v12, v5, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    move v1, v0

    goto :goto_1

    :cond_9
    iget v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    iput v5, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    sub-int/2addr v6, v7

    if-le v6, v4, :cond_c

    :cond_b
    invoke-direct {p0, p1}, Lcn/kuwo/base/uilib/DrawLyricView;->DrawDragLine(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_c
    if-ne v2, v1, :cond_e

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    const/16 v7, 0xcd

    const/16 v8, 0x2d

    invoke-virtual {v6, v13, v13, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    :goto_4
    iget-boolean v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bfullMode:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    iget v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    add-int/2addr v7, v8

    if-lt v6, v7, :cond_d

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    sub-int v7, v4, v7

    if-le v6, v7, :cond_f

    :cond_d
    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_5
    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->curPlayPos:I

    if-ne v2, v1, :cond_11

    iget-boolean v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bLineLyric:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_6
    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    invoke-virtual {v0, v12, v6}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_2

    :cond_e
    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_f
    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_5

    :cond_10
    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    iget v6, v6, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    iput v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->curPercentage:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcText:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v12, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcText:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    iget v7, v7, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->b:I

    mul-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    sub-int v6, v8, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcText:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcText:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget-object v9, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcText:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcText:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    :cond_11
    iget-object v6, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcn/kuwo/base/uilib/DrawLyricView;->rcDrawLine:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method public onTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->UpdateView()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragStartY:F

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricstatus:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    if-eq v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcn/kuwo/base/uilib/DrawLyricView;->Draging(F)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_6

    iget-boolean v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bDragLyric:Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->dragCurTime:I

    invoke-interface {v1, v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->b(I)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->invalidate()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->onClickListener:Lcn/kuwo/base/uilib/DrawLyricView$OnClickListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->onClickListener:Lcn/kuwo/base/uilib/DrawLyricView$OnClickListener;

    invoke-interface {v0, p0}, Lcn/kuwo/base/uilib/DrawLyricView$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_5
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->g:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/base/uilib/DrawLyricView$2;

    invoke-direct {v3, p0}, Lcn/kuwo/base/uilib/DrawLyricView$2;-><init>(Lcn/kuwo/base/uilib/DrawLyricView;)V

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bRunning:Z

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->timer:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    return-void
.end method

.method public release()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->timer:Lcn/kuwo/base/util/KwTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->timer:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->timer:Lcn/kuwo/base/util/KwTimer;

    return-void
.end method

.method public resume()V
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->i:J

    iput-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bRunning:Z

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->timer:Lcn/kuwo/base/util/KwTimer;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    sget-wide v2, Lcn/kuwo/base/util/DeviceUtils;->TOTAL_MEM:J

    const-wide/32 v4, 0x70800

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iput-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bMustLineLyric:Z

    iput-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bLineLyric:Z

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/lyric/ILyricsMgr;->d()Lcn/kuwo/mod/lyric/ILyrics;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->k()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    invoke-interface {v1, v2, v3, v4}, Lcn/kuwo/mod/lyric/ILyrics;->a(JLcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lyricInfo:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;

    iget v2, v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsPlayInfo;->a:I

    iput v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->prePlayPos:I

    iget v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    iput v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->scrollOffset:I

    iget-boolean v2, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bMustLineLyric:Z

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcn/kuwo/mod/lyric/ILyrics;->c()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    move-result-object v1

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    if-ne v1, v2, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bLineLyric:Z

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->invalidate()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFullLyric(Z)V
    .locals 2

    iput-boolean p1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->bfullMode:Z

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/DrawLyricView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/DrawLyricView;->invalidate()V

    return-void

    :cond_0
    iget v1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->lineHeight:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setOnClickListener(Lcn/kuwo/base/uilib/DrawLyricView$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/DrawLyricView;->onClickListener:Lcn/kuwo/base/uilib/DrawLyricView$OnClickListener;

    return-void
.end method
