.class public Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;


# instance fields
.field private imageBackground:Landroid/widget/ImageView;

.field private imageCover:Landroid/widget/ImageView;

.field private imageCover2:Landroid/widget/ImageView;

.field private ivPlay1:Landroid/widget/ImageView;

.field private ivPlay2:Landroid/widget/ImageView;

.field private layoutCover:Landroid/view/View;

.field private layoutItemRoot:Landroid/view/ViewGroup;

.field private params:Landroid/view/ViewGroup$LayoutParams;

.field private textName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->layoutItemRoot:Landroid/view/ViewGroup;

    const v0, 0x7f0b004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->layoutCover:Landroid/view/View;

    const v0, 0x7f0b004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->imageCover:Landroid/widget/ImageView;

    const v0, 0x7f0b004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->imageCover2:Landroid/widget/ImageView;

    const v0, 0x7f0b004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->imageBackground:Landroid/widget/ImageView;

    const v0, 0x7f0b0051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->textName:Landroid/widget/TextView;

    const v0, 0x7f0b0050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->ivPlay1:Landroid/widget/ImageView;

    const v0, 0x7f0b004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->ivPlay2:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->layoutCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->imageCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->ivPlay2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->imageCover2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->ivPlay1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->textName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->imageBackground:Landroid/widget/ImageView;

    return-object v0
.end method
