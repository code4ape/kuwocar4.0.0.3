.class public Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;


# instance fields
.field private ivDelete:Landroid/widget/ImageView;

.field private ivState:Landroid/widget/ImageView;

.field private pbDownloading:Landroid/widget/ProgressBar;

.field private tvArtist:Landroid/widget/TextView;

.field private tvIndex:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->tvIndex:Landroid/widget/TextView;

    const v0, 0x7f0b000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0b0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->tvArtist:Landroid/widget/TextView;

    const v0, 0x7f0b005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->pbDownloading:Landroid/widget/ProgressBar;

    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->ivDelete:Landroid/widget/ImageView;

    const v0, 0x7f0b005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->tvState:Landroid/widget/TextView;

    const v0, 0x7f0b005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->ivState:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->tvIndex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->tvArtist:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->tvName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->pbDownloading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->tvState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->ivState:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->ivDelete:Landroid/widget/ImageView;

    return-object v0
.end method
