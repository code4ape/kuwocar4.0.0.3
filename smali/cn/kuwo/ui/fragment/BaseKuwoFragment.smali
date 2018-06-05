.class public abstract Lcn/kuwo/ui/fragment/BaseKuwoFragment;
.super Landroid/support/v4/app/Fragment;


# static fields
.field private static final DEFUALT_LAYOUT_ID:I = 0x7f040006

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fragmentTag:Ljava/lang/String;

.field private isResumed:Z

.field private kuwoBundle:Landroid/os/Bundle;

.field private layoutContentId:I

.field private layoutId:I

.field private layoutTopId:I

.field private pageStartShowTime:J

.field private path:Ljava/lang/String;

.field private topViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->isResumed:Z

    return-void
.end method


# virtual methods
.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->fragmentTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->fragmentTag:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected getKuwoBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->kuwoBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method protected hideTopView()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->topViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->topViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->layoutId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->layoutId:I

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040006

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0036

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->topViewGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0b0037

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->topViewGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->layoutTopId:I

    if-lez v2, :cond_1

    iget v2, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->layoutTopId:I

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->topViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->topViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz v0, :cond_2

    iget v2, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->layoutContentId:I

    if-lez v2, :cond_2

    iget v2, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->layoutContentId:I

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public onFragmentPause()V
    .locals 8

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->path:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->pageStartShowTime:J

    sub-long/2addr v4, v6

    invoke-static/range {v0 .. v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;Ljava/lang/String;JJ)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onFragmentPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentResume()V
    .locals 3

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->path:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->path:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->pageStartShowTime:J

    sget-object v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onFragmentResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onFragmentPause()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onFragmentResume()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKuwoSateRestore(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onKuwoStateSaved()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onFragmentPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onFragmentResume()V

    :cond_0
    return-void
.end method

.method public setFragmentTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method

.method public setKuwoBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->kuwoBundle:Landroid/os/Bundle;

    return-void
.end method

.method protected setLayout(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->layoutId:I

    return-void
.end method

.method protected setLayoutContentId(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->layoutContentId:I

    return-void
.end method

.method protected setLayoutTopId(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->layoutTopId:I

    return-void
.end method

.method protected showTopView()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->topViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->topViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
