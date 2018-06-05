.class public Lcn/kuwo/base/uilib/FlingGallery;
.super Landroid/widget/FrameLayout;


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mAnimation:Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;

.field private mAnimationDuration:I

.field private mContext:Landroid/content/Context;

.field private mCurrentOffset:F

.field private mCurrentPosition:I

.field private mCurrentViewNumber:I

.field private mDecelerateInterpolater:Landroid/view/animation/Interpolator;

.field private mFlingDirection:I

.field private mGalleryWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsDragging:Z

.field private mIsGalleryCircular:Z

.field private mIsTouched:Z

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mScrollTimestamp:J

.field private mSnapBorderRatio:F

.field private mViewPaddingWidth:I

.field private mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

.field private final swipe_max_off_path:I

.field private final swipe_min_distance:I

.field private final swipe_threshold_veloicty:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xdc

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->swipe_min_distance:I

    const/16 v0, 0x15e

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->swipe_max_off_path:I

    const/16 v0, 0x190

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->swipe_threshold_veloicty:I

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViewPaddingWidth:I

    const/16 v0, 0xfa

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAnimationDuration:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mSnapBorderRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsGalleryCircular:Z

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mGalleryWidth:I

    iput-boolean v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsTouched:Z

    iput-boolean v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsDragging:Z

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentOffset:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mScrollTimestamp:J

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-direct {p0, p1}, Lcn/kuwo/base/uilib/FlingGallery;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xdc

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->swipe_min_distance:I

    const/16 v0, 0x15e

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->swipe_max_off_path:I

    const/16 v0, 0x190

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->swipe_threshold_veloicty:I

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViewPaddingWidth:I

    const/16 v0, 0xfa

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAnimationDuration:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mSnapBorderRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsGalleryCircular:Z

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mGalleryWidth:I

    iput-boolean v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsTouched:Z

    iput-boolean v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsDragging:Z

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentOffset:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mScrollTimestamp:J

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-direct {p0, p1}, Lcn/kuwo/base/uilib/FlingGallery;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mDecelerateInterpolater:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/kuwo/base/uilib/FlingGallery;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/base/uilib/FlingGallery;->getNextViewNumber(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcn/kuwo/base/uilib/FlingGallery;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsTouched:Z

    return v0
.end method

.method static synthetic access$1202(Lcn/kuwo/base/uilib/FlingGallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/kuwo/base/uilib/FlingGallery;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$1302(Lcn/kuwo/base/uilib/FlingGallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$1402(Lcn/kuwo/base/uilib/FlingGallery;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    return p1
.end method

.method static synthetic access$1500(Lcn/kuwo/base/uilib/FlingGallery;)J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mScrollTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcn/kuwo/base/uilib/FlingGallery;J)J
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mScrollTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcn/kuwo/base/uilib/FlingGallery;)F
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$1602(Lcn/kuwo/base/uilib/FlingGallery;F)F
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentOffset:F

    return p1
.end method

.method static synthetic access$1700(Lcn/kuwo/base/uilib/FlingGallery;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    return v0
.end method

.method static synthetic access$200(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/base/uilib/FlingGallery;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/uilib/FlingGallery;->getViewOffset(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcn/kuwo/base/uilib/FlingGallery;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$600(Lcn/kuwo/base/uilib/FlingGallery;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mGalleryWidth:I

    return v0
.end method

.method static synthetic access$700(Lcn/kuwo/base/uilib/FlingGallery;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevViewNumber(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcn/kuwo/base/uilib/FlingGallery;)[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/kuwo/base/uilib/FlingGallery;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAnimationDuration:I

    return v0
.end method

.method private getNextPosition(I)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getLastPosition()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getLastPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsGalleryCircular:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getFirstPosition()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getNextViewNumber(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private getPrevPosition(I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getFirstPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getFirstPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-boolean v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsGalleryCircular:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getLastPosition()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getPrevViewNumber(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private getViewOffset(II)I
    .locals 2

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mGalleryWidth:I

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViewPaddingWidth:I

    add-int/2addr v0, v1

    invoke-direct {p0, p2}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevViewNumber(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcn/kuwo/base/uilib/FlingGallery;->getNextViewNumber(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    new-instance v1, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    invoke-direct {v1, p0, v2, p0}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;-><init>(Lcn/kuwo/base/uilib/FlingGallery;ILandroid/widget/FrameLayout;)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    new-instance v1, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    invoke-direct {v1, p0, v3, p0}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;-><init>(Lcn/kuwo/base/uilib/FlingGallery;ILandroid/widget/FrameLayout;)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    new-instance v1, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    invoke-direct {v1, p0, v4, p0}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;-><init>(Lcn/kuwo/base/uilib/FlingGallery;ILandroid/widget/FrameLayout;)V

    aput-object v1, v0, v4

    new-instance v0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;

    invoke-direct {v0, p0}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;-><init>(Lcn/kuwo/base/uilib/FlingGallery;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAnimation:Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;

    invoke-direct {v1, p0, v5}, Lcn/kuwo/base/uilib/FlingGallery$FlingGestureDetector;-><init>(Lcn/kuwo/base/uilib/FlingGallery;Lcn/kuwo/base/uilib/FlingGallery$1;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mContext:Landroid/content/Context;

    const v1, 0x10a0006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mDecelerateInterpolater:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getFirstPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGalleryCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getLastPosition()I
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getGalleryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getGalleryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method moveNext()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->processGesture()V

    return-void
.end method

.method movePrevious()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->processGesture()V

    return-void
.end method

.method public onGalleryTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsTouched:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsDragging:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->processScrollSnap()V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->processGesture()V

    :cond_1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->movePrevious()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->moveNext()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mGalleryWidth:I

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v2

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v3

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    :cond_0
    return-void
.end method

.method processGesture()V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    iput-boolean v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsTouched:Z

    iput-boolean v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsDragging:Z

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    if-lez v3, :cond_6

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v0}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevPosition(I)I

    move-result v0

    iget v3, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getFirstPosition()I

    move-result v4

    if-gt v3, v4, :cond_0

    iget-boolean v3, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsGalleryCircular:Z

    if-ne v3, v7, :cond_6

    :cond_0
    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevViewNumber(I)I

    move-result v4

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevPosition(I)I

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getNextViewNumber(I)I

    move-result v3

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevPosition(I)I

    move-result v1

    :goto_0
    iget v5, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    if-gez v5, :cond_2

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v0}, Lcn/kuwo/base/uilib/FlingGallery;->getNextPosition(I)I

    move-result v0

    iget v5, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getLastPosition()I

    move-result v6

    if-lt v5, v6, :cond_1

    iget-boolean v5, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsGalleryCircular:Z

    if-ne v5, v7, :cond_2

    :cond_1
    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getNextViewNumber(I)I

    move-result v4

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getNextPosition(I)I

    move-result v1

    iput v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevViewNumber(I)I

    move-result v3

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getNextPosition(I)I

    move-result v1

    :cond_2
    iget v5, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    if-eq v4, v5, :cond_3

    iput v4, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    iget-object v4, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    aget-object v3, v4, v3

    invoke-virtual {v3, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->recycleView(I)V

    :cond_3
    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_4
    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getGalleryCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    iget-boolean v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsGalleryCircular:Z

    if-nez v0, :cond_5

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->requestFocus()V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAnimation:Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;->prepareAnimation(I)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAnimation:Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryAnimation;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/FlingGallery;->startAnimation(Landroid/view/animation/Animation;)V

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    goto :goto_1

    :cond_6
    move v3, v2

    move v4, v1

    move v1, v2

    goto :goto_0
.end method

.method processScrollSnap()V
    .locals 3

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mGalleryWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mSnapBorderRatio:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mGalleryWidth:I

    float-to-int v0, v0

    sub-int v0, v1, v0

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->getCurrentOffset()I

    move-result v1

    mul-int/lit8 v2, v0, -0x1

    if-gt v1, v2, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    :cond_0
    if-lt v1, v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mFlingDirection:I

    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    iput v2, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v2

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->recycleView(I)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v3

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getNextPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->recycleView(I)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v4

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->recycleView(I)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v2

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v3

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v4

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->setOffset(III)V

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mAnimationDuration:I

    return-void
.end method

.method public setIsGalleryCircular(Z)V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsGalleryCircular:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mIsGalleryCircular:Z

    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getFirstPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevViewNumber(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getPrevPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->recycleView(I)V

    :cond_0
    iget v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/FlingGallery;->getLastPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViews:[Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getNextViewNumber(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcn/kuwo/base/uilib/FlingGallery;->getNextPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->recycleView(I)V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPaddingWidth(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mViewPaddingWidth:I

    return-void
.end method

.method public setSnapBorderRatio(F)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/FlingGallery;->mSnapBorderRatio:F

    return-void
.end method
