.class Lcn/kuwo/ui/fragment/SearchResultFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

.field final synthetic val$textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchResultFragment;Lcn/kuwo/ui/adapter/TextTitleAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$2;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    iput-object p2, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$2;->val$textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$2;->val$textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-virtual {v0, p1}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->setCurrentIndex(I)V

    return-void
.end method
