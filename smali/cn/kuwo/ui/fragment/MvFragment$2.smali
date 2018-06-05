.class Lcn/kuwo/ui/fragment/MvFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 4

    check-cast p1, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$200(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$200(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v1, p2}, Lcn/kuwo/ui/fragment/MvFragment;->access$302(Lcn/kuwo/ui/fragment/MvFragment;I)I

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    sget-object v2, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcn/kuwo/ui/fragment/MvFragment;->loadMv(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;Z)V

    :cond_0
    return-void
.end method
