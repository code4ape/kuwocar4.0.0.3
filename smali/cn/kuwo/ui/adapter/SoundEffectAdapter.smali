.class public Lcn/kuwo/ui/adapter/SoundEffectAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# static fields
.field private static final DEFAULT_OLD_POS:I = -0x2


# instance fields
.field private context:Landroid/content/Context;

.field private oldSelectPos:I

.field private selectPos:I

.field private soundEffects:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    iput v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->oldSelectPos:I

    iput v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->selectPos:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->soundEffects:Ljava/util/List;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$500(Lcn/kuwo/ui/adapter/SoundEffectAdapter;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->selectPos:I

    return v0
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->soundEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->getItem(I)Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 7

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->getItem(I)Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;

    move-result-object v0

    check-cast p1, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$000(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$100(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->getDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$200(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->getResBackgroundId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$300(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->getResIconId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$400(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcn/kuwo/ui/adapter/SoundEffectAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$1;-><init>(Lcn/kuwo/ui/adapter/SoundEffectAdapter;ILcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$400(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->selectPos:I

    if-ne p2, v1, :cond_2

    const/4 v1, -0x2

    iget v2, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->oldSelectPos:I

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$200(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$400(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$200(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->context:Landroid/content/Context;

    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;

    invoke-direct {v1, v0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setSoundEffects(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->soundEffects:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->update()V

    return-void
.end method

.method public update()V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "appconfig"

    const-string v1, "key_sound_effect"

    invoke-static {v0, v1, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iget v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->selectPos:I

    iput v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->oldSelectPos:I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->getItem(I)Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->getId()I

    move-result v2

    if-ne v2, v1, :cond_1

    iput v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->selectPos:I

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v3, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->selectPos:I

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
