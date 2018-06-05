.class Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field private mInitialOffset:I

.field private mIsAnimationInProgres:Z

.field private mRelativeViewNumber:I

.field private mTargetDistance:I

.field private mTargetOffset:I

.field final synthetic this$0:Lcn/kuwo/base/uilib/FlingGallery;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/uilib/FlingGallery;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_4

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    iget v4, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-static {v3, v4}, Lcn/kuwo/base/uilib/FlingGallery;->access$1100(Lcn/kuwo/base/uilib/FlingGallery;I)I

    move-result v3

    if-ne v0, v3, :cond_2

    :cond_1
    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    if-gez v3, :cond_3

    iget-object v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    iget v4, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-static {v3, v4}, Lcn/kuwo/base/uilib/FlingGallery;->access$700(Lcn/kuwo/base/uilib/FlingGallery;I)I

    move-result v3

    if-eq v0, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v3}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v3

    aget-object v3, v3, v0

    iget v4, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v3, v2, v1, v4}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v2}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v2

    aget-object v2, v2, v1

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v4, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v2, v3, v1, v4}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v2}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v2

    aget-object v0, v2, v0

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v0, v2, v1, v3}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v0, v2, v1, v3}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v2}, Lcn/kuwo/base/uilib/FlingGallery;->access$1200(Lcn/kuwo/base/uilib/FlingGallery;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v2}, Lcn/kuwo/base/uilib/FlingGallery;->access$1300(Lcn/kuwo/base/uilib/FlingGallery;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public prepareAnimation(I)V
    .locals 5

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    if-eq v0, p1, :cond_2

    iget-boolean v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-static {v0, v3}, Lcn/kuwo/base/uilib/FlingGallery;->access$700(Lcn/kuwo/base/uilib/FlingGallery;I)I

    move-result v0

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_0
    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    if-gez v3, :cond_0

    move v2, v1

    :cond_0
    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v0

    aget-object v0, v0, v4

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v0, v2, v4, v3}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v0

    aget-object v0, v0, v1

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v0, v2, v4, v3}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v0, v2, v4, v3}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    :cond_1
    iput p1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    :cond_2
    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    move-result-object v0

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->getCurrentOffset()I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-static {v0, v2, v3}, Lcn/kuwo/base/uilib/FlingGallery;->access$300(Lcn/kuwo/base/uilib/FlingGallery;II)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$900(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->setDuration(J)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$1000(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iput-boolean v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method
