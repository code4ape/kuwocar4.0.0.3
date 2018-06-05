.class public Lcn/kuwo/ui/fragment/BaseLocalRootFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;

# interfaces
.implements Lcn/kuwo/ui/fragment/RootFragmentInterface;


# instance fields
.field private _OnClickListener:Landroid/view/View$OnClickListener;

.field private ivCurrentItem:Landroid/widget/ImageView;

.field private tvCurrentItem:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    new-instance v0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/BaseLocalRootFragment$1;-><init>(Lcn/kuwo/ui/fragment/BaseLocalRootFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->setLayoutContentId(I)V

    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->setLayoutTopId(I)V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    instance-of v0, p0, Lcn/kuwo/ui/fragment/LocalFragment;

    if-eqz v0, :cond_3

    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->tvCurrentItem:Landroid/widget/TextView;

    const v0, 0x7f0b0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->ivCurrentItem:Landroid/widget/ImageView;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->tvCurrentItem:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->tvCurrentItem:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->ivCurrentItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->ivCurrentItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0b0082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    instance-of v0, p0, Lcn/kuwo/ui/fragment/MineFragment;

    if-eqz v0, :cond_0

    const v0, 0x7f0b0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->tvCurrentItem:Landroid/widget/TextView;

    const v0, 0x7f0b0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->ivCurrentItem:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method
