.class public Lcn/kuwo/base/uilib/RoundProgressBar;
.super Landroid/view/View;


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/kuwo/base/uilib/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/kuwo/base/uilib/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, -0xff0100

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xa

    iput v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->progress:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v0, Lcn/kuwo/kwmusiccar/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundProgressColor:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->textColor:I

    const/4 v1, 0x4

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->textSize:F

    const/4 v1, 0x2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->textIsDisplayable:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->style:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/RoundProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v2, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v2, v1

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v1, v0

    int-to-float v3, v0

    int-to-float v4, v2

    iget-object v5, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-string v1, "log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->textColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->textSize:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->progress:I

    int-to-float v1, v1

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/RectF;

    sub-int v3, v0, v2

    int-to-float v3, v3

    sub-int v4, v0, v2

    int-to-float v4, v4

    add-int v5, v0, v2

    int-to-float v5, v5

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint2:Landroid/graphics/Paint;

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I

    div-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-double v4, v3

    int-to-double v6, v2

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->progress:I

    int-to-double v10, v3

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    iget v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I

    int-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v6, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    float-to-double v4, v3

    int-to-double v2, v2

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    iget v7, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->progress:I

    int-to-double v10, v7

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    iget v7, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I

    int-to-double v10, v7

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    add-double/2addr v2, v4

    double-to-float v7, v2

    iget v2, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->style:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->progress:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->progress:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCricleColor(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundColor:I

    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundProgressColor:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput p1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I

    :cond_1
    iget v0, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->max:I

    if-gt p1, v0, :cond_2

    iput p1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->progress:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/RoundProgressBar;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->roundWidth:F

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->textColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/RoundProgressBar;->textSize:F

    return-void
.end method
