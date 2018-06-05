.class Lcn/kuwo/ui/fragment/MvFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private progress:I

.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$3;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/ui/fragment/MvFragment$3;->progress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iput p2, p0, Lcn/kuwo/ui/fragment/MvFragment$3;->progress:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/ui/fragment/MvFragment$3;->progress:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget v0, p0, Lcn/kuwo/ui/fragment/MvFragment$3;->progress:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$3;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$400(Lcn/kuwo/ui/fragment/MvFragment;)Landroid/widget/VideoView;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/ui/fragment/MvFragment$3;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    return-void
.end method
