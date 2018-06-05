.class Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# static fields
.field private static final TYPE_GRID:I = 0x2

.field private static final TYPE_LINEAR:I = 0x1


# instance fields
.field private firstCompeleteVisibleItemPosition:I

.field private lastVisibleItemPosition:I

.field private layoutManagerType:I

.field final synthetic this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/BaseOnlineFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->lastVisibleItemPosition:I

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->firstCompeleteVisibleItemPosition:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const-string v2, "\u827e\u8fe6\u53f7"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visibleItemCount\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalItemCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_0

    iget v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->lastVisibleItemPosition:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->load()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->layoutManagerType:I

    :cond_0
    :goto_0
    iget v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->layoutManagerType:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    instance-of v0, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->layoutManagerType:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u4e3arcycleview\u6307\u5b9alayoutmanager\u4e3aLinearLayout\u6216\u8005GridLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->firstCompeleteVisibleItemPosition:I

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->lastVisibleItemPosition:I

    goto :goto_1

    :pswitch_1
    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->lastVisibleItemPosition:I

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;->firstCompeleteVisibleItemPosition:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
