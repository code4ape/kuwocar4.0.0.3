.class Lcn/kuwo/mod/search/FetchHotWordsRunner$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/search/FetchHotWordsRunner;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/search/FetchHotWordsRunner;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner$1;->a:Lcn/kuwo/mod/search/FetchHotWordsRunner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner$1;->a:Lcn/kuwo/mod/search/FetchHotWordsRunner;

    invoke-static {v0}, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a(Lcn/kuwo/mod/search/FetchHotWordsRunner;)Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner$1;->a:Lcn/kuwo/mod/search/FetchHotWordsRunner;

    invoke-static {v0}, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a(Lcn/kuwo/mod/search/FetchHotWordsRunner;)Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;->onFetchFail()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner$1;->a:Lcn/kuwo/mod/search/FetchHotWordsRunner;

    invoke-static {v1}, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a(Lcn/kuwo/mod/search/FetchHotWordsRunner;)Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;->onFetchSuccess(Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
