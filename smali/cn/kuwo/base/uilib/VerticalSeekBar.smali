.class public Lcn/kuwo/base/uilib/VerticalSeekBar;
.super Landroid/widget/SeekBar;


# instance fields
.field private lastProgress:I

.field private onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->lastProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->lastProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->lastProgress:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getMaximum()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getMax()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v1, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    invoke-virtual {p0, v2}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setPressed(Z)V

    invoke-virtual {p0, v2}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    :pswitch_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v0, v3

    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getMax()I

    move-result v3

    if-le v0, v3, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getMax()I

    move-result v0

    :cond_2
    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setProgress(I)V

    iget v3, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->lastProgress:I

    if-eq v0, v3, :cond_3

    iput v0, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->lastProgress:I

    iget-object v3, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p0, v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_3
    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1, v1}, Lcn/kuwo/base/uilib/VerticalSeekBar;->onSizeChanged(IIII)V

    invoke-virtual {p0, v2}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setPressed(Z)V

    invoke-virtual {p0, v2}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    invoke-virtual {p0, v1}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setPressed(Z)V

    invoke-virtual {p0, v1}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    :pswitch_3
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0, v1}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setPressed(Z)V

    invoke-virtual {p0, v1}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setMaximum(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgressAndThumb(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcn/kuwo/base/uilib/VerticalSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/VerticalSeekBar;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/kuwo/base/uilib/VerticalSeekBar;->onSizeChanged(IIII)V

    iget v0, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->lastProgress:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->lastProgress:I

    iget-object v0, p0, Lcn/kuwo/base/uilib/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
