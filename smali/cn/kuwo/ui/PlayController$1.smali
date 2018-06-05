.class Lcn/kuwo/ui/PlayController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private progress:I

.field final synthetic this$0:Lcn/kuwo/ui/PlayController;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/PlayController;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/ui/PlayController$1;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/ui/PlayController$1;->progress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iput p2, p0, Lcn/kuwo/ui/PlayController$1;->progress:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget v0, p0, Lcn/kuwo/ui/PlayController$1;->progress:I

    if-lez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/ui/PlayController$1;->progress:I

    invoke-interface {v0, v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->b(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/ui/PlayController$1;->progress:I

    :cond_0
    return-void
.end method
