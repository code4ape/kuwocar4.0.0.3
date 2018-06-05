.class public Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;


# instance fields
.field private ivCover:Landroid/widget/ImageView;

.field private ivDelete:Landroid/widget/ImageView;

.field private ivDownloadstate:Landroid/widget/ImageView;

.field private pbDownloading:Landroid/widget/ProgressBar;

.field private tvArtist:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0b0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->tvArtist:Landroid/widget/TextView;

    const v0, 0x7f0b005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->pbDownloading:Landroid/widget/ProgressBar;

    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->ivDelete:Landroid/widget/ImageView;

    const v0, 0x7f0b005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->ivCover:Landroid/widget/ImageView;

    const v0, 0x7f0b003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->ivDownloadstate:Landroid/widget/ImageView;

    const v0, 0x7f0b005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->tvState:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->tvArtist:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->tvName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->pbDownloading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->ivDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->ivDownloadstate:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->tvState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->ivCover:Landroid/widget/ImageView;

    return-object v0
.end method
