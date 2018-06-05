.class Lcn/kuwo/ui/fragment/SearchFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchFragment$7;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchFail()V
    .locals 1

    const-string v0, "\u83b7\u53d6\u70ed\u8bcd\u5931\u8d25"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    return-void
.end method

.method public onFetchSuccess(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment$7;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-static {v0, p1}, Lcn/kuwo/ui/fragment/SearchFragment;->access$502(Lcn/kuwo/ui/fragment/SearchFragment;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment$7;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SearchFragment;->access$600(Lcn/kuwo/ui/fragment/SearchFragment;)V

    return-void
.end method
