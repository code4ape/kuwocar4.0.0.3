.class Lcn/kuwo/ui/fragment/OnlineMVFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/OnlineMVFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/OnlineMVFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment$1;->this$0:Lcn/kuwo/ui/fragment/OnlineMVFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 3

    check-cast p1, Lcn/kuwo/ui/adapter/OnlineMVAdapter;

    invoke-virtual {p1}, Lcn/kuwo/ui/adapter/OnlineMVAdapter;->getMvs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/quku/MvInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/MvInfo;->b()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1, p2}, Lcn/kuwo/ui/JumpUtils;->jumpMV(Ljava/util/List;I)V

    return-void
.end method
