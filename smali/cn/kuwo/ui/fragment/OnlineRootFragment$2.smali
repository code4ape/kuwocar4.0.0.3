.class Lcn/kuwo/ui/fragment/OnlineRootFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/OnlineRootAdapter$OnPlayClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment$2;->this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayClick(Lcn/kuwo/ui/adapter/OnlineRootAdapter;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->getItem(I)Lcn/kuwo/base/bean/quku/BaseQukuItem;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->play(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment$2;->this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V

    return-void
.end method
