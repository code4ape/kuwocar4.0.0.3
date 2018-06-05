.class public Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;


# instance fields
.field private ivIndicator:Landroid/widget/ImageView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0b0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;->ivIndicator:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;->ivIndicator:Landroid/widget/ImageView;

    return-object v0
.end method
