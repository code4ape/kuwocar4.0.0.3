.class Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/quku/OnRequestListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/BaseOnlineFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Lcn/kuwo/mod/quku/QukuRequestState;[B)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x3

    sget-object v0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$3;->$SwitchMap$cn$kuwo$mod$quku$QukuRequestState:[I

    invoke-virtual {p1}, Lcn/kuwo/mod/quku/QukuRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-virtual {v0, v3}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onFail(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->access$000(Lcn/kuwo/ui/fragment/BaseOnlineFragment;)Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v1

    invoke-static {v1, p2}, Lcn/kuwo/mod/quku/ResultParser;->a(Lcn/kuwo/mod/quku/OnlineType;[B)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->rootInfo:Lcn/kuwo/base/bean/online/OnlineRootInfo;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    iget-object v0, v0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->rootInfo:Lcn/kuwo/base/bean/online/OnlineRootInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-virtual {v0, v2}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onFail(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    iget-object v0, v0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->rootInfo:Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-virtual {v0, v2}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onFail(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    iget-object v1, v1, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->rootInfo:Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-virtual {v0, v3}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onFail(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onFail(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onLoading()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseOnlineFragment;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onFail(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
