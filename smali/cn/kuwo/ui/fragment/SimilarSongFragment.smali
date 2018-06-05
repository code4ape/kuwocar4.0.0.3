.class public Lcn/kuwo/ui/fragment/SimilarSongFragment;
.super Lcn/kuwo/ui/fragment/OnlineMusicFragment;


# instance fields
.field private onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;-><init>()V

    new-instance v0, Lcn/kuwo/ui/fragment/SimilarSongFragment$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SimilarSongFragment$1;-><init>(Lcn/kuwo/ui/fragment/SimilarSongFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SimilarSongFragment;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    const/4 v0, 0x6

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SimilarSongFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SimilarSongFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
