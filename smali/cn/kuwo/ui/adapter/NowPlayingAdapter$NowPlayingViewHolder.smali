.class public Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;


# instance fields
.field private ivDelete:Landroid/widget/ImageView;

.field private ivIndicator:Landroid/widget/ImageView;

.field private ivNowPlayingAnim:Landroid/widget/ImageView;

.field private tvSong:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->ivDelete:Landroid/widget/ImageView;

    const v0, 0x7f0b0062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->ivNowPlayingAnim:Landroid/widget/ImageView;

    const v0, 0x7f0b0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->ivIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0b0063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->tvSong:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->tvSong:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->ivIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->ivNowPlayingAnim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->ivDelete:Landroid/widget/ImageView;

    return-object v0
.end method
