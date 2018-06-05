.class Lcn/kuwo/ui/fragment/MvFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$5;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$5;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    const-string v1, "\u64ad\u653e\u9519\u8bef"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/kuwo/ui/fragment/MvFragment;->access$600(Lcn/kuwo/ui/fragment/MvFragment;Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0
.end method
