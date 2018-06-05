.class Lcn/kuwo/ui/fragment/MvFragment$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$9;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$9;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$9;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$400(Lcn/kuwo/ui/fragment/MvFragment;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$1002(Lcn/kuwo/ui/fragment/MvFragment;I)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$9;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$1400(Lcn/kuwo/ui/fragment/MvFragment;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$9;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$400(Lcn/kuwo/ui/fragment/MvFragment;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$9;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$1000(Lcn/kuwo/ui/fragment/MvFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$9;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$1300(Lcn/kuwo/ui/fragment/MvFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$9;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$800(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$9;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$200(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoading(Lcn/kuwo/base/bean/Music;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
