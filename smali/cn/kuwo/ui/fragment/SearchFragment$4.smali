.class Lcn/kuwo/ui/fragment/SearchFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchFragment$4;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 1

    check-cast p1, Lcn/kuwo/ui/adapter/SearchTextAdapter;

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jumpToSearchResult(Ljava/lang/String;)V

    return-void
.end method
