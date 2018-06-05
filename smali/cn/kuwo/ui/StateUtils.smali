.class public Lcn/kuwo/ui/StateUtils;
.super Ljava/lang/Object;


# instance fields
.field private animationDrawableLoading:Landroid/graphics/drawable/AnimationDrawable;

.field private animationDrawableLoadingMore:Landroid/graphics/drawable/AnimationDrawable;

.field private ivLoading:Landroid/widget/ImageView;

.field private ivLoadingMore:Landroid/widget/ImageView;

.field private ivState:Landroid/widget/ImageView;

.field private loadingMoreView:Landroid/view/View;

.field private loadingView:Landroid/view/View;

.field private stateView:Landroid/view/View;

.field private tvStateDetail:Landroid/widget/TextView;

.field private tvStateName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcn/kuwo/ui/StateUtils$OnScreenClickListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b0093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    const v0, 0x7f0b005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivState:Landroid/widget/ImageView;

    const v0, 0x7f0b0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateName:Landroid/widget/TextView;

    const v0, 0x7f0b0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateDetail:Landroid/widget/TextView;

    const v0, 0x7f0b0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingMoreView:Landroid/view/View;

    const v0, 0x7f0b0099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivLoadingMore:Landroid/widget/ImageView;

    const v0, 0x7f0b0096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivLoading:Landroid/widget/ImageView;

    const v0, 0x7f0b0095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingView:Landroid/view/View;

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    new-instance v1, Lcn/kuwo/ui/StateUtils$1;

    invoke-direct {v1, p0, p2}, Lcn/kuwo/ui/StateUtils$1;-><init>(Lcn/kuwo/ui/StateUtils;Lcn/kuwo/ui/StateUtils$OnScreenClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideLoadingMore()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingMoreView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideStateView()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showEmpty()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/kuwo/ui/StateUtils;->hideLoadingMore()V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivState:Landroid/widget/ImageView;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateName:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivState:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->animationDrawableLoading:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->animationDrawableLoading:Landroid/graphics/drawable/AnimationDrawable;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->animationDrawableLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public showLoadingMore()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->animationDrawableLoadingMore:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivLoadingMore:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/kuwo/ui/StateUtils;->animationDrawableLoadingMore:Landroid/graphics/drawable/AnimationDrawable;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->animationDrawableLoadingMore:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-virtual {p0}, Lcn/kuwo/ui/StateUtils;->hideStateView()V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingMoreView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showNetError()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivState:Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateName:Landroid/widget/TextView;

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateDetail:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u540e\u70b9\u51fb\u5c4f\u5e55\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showServerError()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->stateView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->ivState:Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateName:Landroid/widget/TextView;

    const-string v1, "\u670d\u52a1\u5668\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils;->tvStateDetail:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u70b9\u51fb\u5c4f\u5e55\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
