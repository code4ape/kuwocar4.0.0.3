.class Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;
.super Ljava/lang/Object;


# instance fields
.field private mExternalView:Landroid/view/View;

.field private mInternalLayout:Landroid/widget/LinearLayout;

.field private mInvalidLayout:Landroid/widget/FrameLayout;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mViewNumber:I

.field final synthetic this$0:Lcn/kuwo/base/uilib/FlingGallery;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/uilib/FlingGallery;ILandroid/widget/FrameLayout;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-object p1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    iput p2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mViewNumber:I

    iput-object p3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mParentLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcn/kuwo/base/uilib/FlingGallery;->access$100(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcn/kuwo/base/uilib/FlingGallery;->access$100(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getCurrentOffset()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    return v0
.end method

.method public recycleView(I)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$200(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/FlingGallery;->getFirstPosition()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/FlingGallery;->getLastPosition()I

    move-result v0

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$200(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/widget/Adapter;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    iget-object v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method public setOffset(III)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    iget v2, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->mViewNumber:I

    invoke-static {v1, v2, p3}, Lcn/kuwo/base/uilib/FlingGallery;->access$300(Lcn/kuwo/base/uilib/FlingGallery;II)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$400(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v0}, Lcn/kuwo/base/uilib/FlingGallery;->access$400(Lcn/kuwo/base/uilib/FlingGallery;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v1}, Lcn/kuwo/base/uilib/FlingGallery;->access$500(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v1

    int-to-float v2, p1

    iget-object v3, p0, Lcn/kuwo/base/uilib/FlingGallery$FlingGalleryView;->this$0:Lcn/kuwo/base/uilib/FlingGallery;

    invoke-static {v3}, Lcn/kuwo/base/uilib/FlingGallery;->access$600(Lcn/kuwo/base/uilib/FlingGallery;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method
