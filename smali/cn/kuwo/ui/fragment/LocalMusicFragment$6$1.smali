.class Lcn/kuwo/ui/fragment/LocalMusicFragment$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;


# instance fields
.field final synthetic this$1:Lcn/kuwo/ui/fragment/LocalMusicFragment$6;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/LocalMusicFragment$6;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$6$1;->this$1:Lcn/kuwo/ui/fragment/LocalMusicFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationCancel()V
    .locals 0

    return-void
.end method

.method public onOperationCompelete()V
    .locals 1

    const-string v0, "\u5220\u9664\u6210\u529f"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$6$1;->this$1:Lcn/kuwo/ui/fragment/LocalMusicFragment$6;

    iget-object v0, v0, Lcn/kuwo/ui/fragment/LocalMusicFragment$6;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$000(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    return-void
.end method
