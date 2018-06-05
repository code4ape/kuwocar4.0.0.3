.class Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/base/uilib/FlingGallery;


# direct methods
.method private constructor <init>(Lcn/kuwo/base/uilib/FlingGallery;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/base/uilib/FlingGallery;Lcn/kuwo/base/uilib/FlingGallery$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;-><init>(Lcn/kuwo/base/uilib/FlingGallery;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0, v2}, Lcn/kuwo/base/uilib/FlingGallery;->access$1202(Lcn/kuwo/base/uilib/FlingGallery;Z)Z

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$1402(Lcn/kuwo/base/uilib/FlingGallery;I)I

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/high16 v3, 0x43c80000    # 400.0f

    const/high16 v2, 0x435c0000    # 220.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/FlingGallery;->movePrevious()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/FlingGallery;->moveNext()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$1402(Lcn/kuwo/base/uilib/FlingGallery;I)I

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/FlingGallery;->processGesture()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    const/4 v10, 0x2

    const/high16 v9, 0x447a0000    # 1000.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v10, :cond_4

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$1300(Lcn/kuwo/base/uilib/FlingGallery;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0, v7}, Lcn/kuwo/base/uilib/FlingGallery;->access$1202(Lcn/kuwo/base/uilib/FlingGallery;Z)Z

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0, v7}, Lcn/kuwo/base/uilib/FlingGallery;->access$1302(Lcn/kuwo/base/uilib/FlingGallery;Z)Z

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0, v6}, Lcn/kuwo/base/uilib/FlingGallery;->access$1402(Lcn/kuwo/base/uilib/FlingGallery;I)I

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/kuwo/base/uilib/FlingGallery;->access$1502(Lcn/kuwo/base/uilib/FlingGallery;J)J

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v2}, Lcn/kuwo/base/uilib/FlingGallery;->access$1700(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->getCurrentOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$1602(Lcn/kuwo/base/uilib/FlingGallery;F)F

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$600(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$900(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    div-float/2addr v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$1500(Lcn/kuwo/base/uilib/FlingGallery;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v9

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v2, v0, v8

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    mul-float v1, v0, v8

    :cond_1
    cmpl-float v2, v1, v0

    if-lez v2, :cond_5

    :goto_0
    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$1600(Lcn/kuwo/base/uilib/FlingGallery;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$600(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$600(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$600(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$600(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    :cond_3
    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v1

    aget-object v1, v1, v6

    iget-object v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v2}, Lcn/kuwo/base/uilib/FlingGallery;->access$1700(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v2

    invoke-virtual {v1, v0, v6, v2}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v1

    aget-object v1, v1, v7

    iget-object v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v2}, Lcn/kuwo/base/uilib/FlingGallery;->access$1700(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v2

    invoke-virtual {v1, v0, v6, v2}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v1

    aget-object v1, v1, v10

    iget-object v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v2}, Lcn/kuwo/base/uilib/FlingGallery;->access$1700(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v2

    invoke-virtual {v1, v0, v6, v2}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    :cond_4
    return v6

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$1402(Lcn/kuwo/base/uilib/FlingGallery;I)I

    return v1
.end method
