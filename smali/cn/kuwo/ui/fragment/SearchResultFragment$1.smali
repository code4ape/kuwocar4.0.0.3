.class Lcn/kuwo/ui/fragment/SearchResultFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$1;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$1;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->access$000(Lcn/kuwo/ui/fragment/SearchResultFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
