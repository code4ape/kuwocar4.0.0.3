.class public Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;


# instance fields
.field private ivBackground:Landroid/widget/ImageView;

.field private ivCircle:Landroid/widget/ImageView;

.field private ivIcon:Landroid/widget/ImageView;

.field private tvDetail:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->ivBackground:Landroid/widget/ImageView;

    const v0, 0x7f0b0052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->ivIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->ivCircle:Landroid/widget/ImageView;

    const v0, 0x7f0b0051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0b0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->tvDetail:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->tvName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->tvDetail:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->ivBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->ivIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->ivCircle:Landroid/widget/ImageView;

    return-object v0
.end method
