.class public Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;


# instance fields
.field private ivCover:Landroid/widget/ImageView;

.field private tvDes:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;->ivCover:Landroid/widget/ImageView;

    const v0, 0x7f0b0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0b0065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;->tvDes:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;->tvName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;->tvDes:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;->ivCover:Landroid/widget/ImageView;

    return-object v0
.end method
