.class public Lcn/kuwo/ui/fragment/BaseDownloadingFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;


# static fields
.field public static final PAGE_MUSIC_DOWNLOADING:I = 0x1

.field public static final PAGE_MV_DOWNLOADING:I = 0x2


# instance fields
.field private page:I

.field private rvContent:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/BaseDownloadingFragment;->setLayoutContentId(I)V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseDownloadingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseDownloadingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseDownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/fragment/BaseDownloadingFragment;->page:I

    return-void
.end method
