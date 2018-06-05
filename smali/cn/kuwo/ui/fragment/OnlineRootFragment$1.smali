.class Lcn/kuwo/ui/fragment/OnlineRootFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment$1;->this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 1

    check-cast p1, Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->getItem(I)Lcn/kuwo/base/bean/quku/BaseQukuItem;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    return-void
.end method
