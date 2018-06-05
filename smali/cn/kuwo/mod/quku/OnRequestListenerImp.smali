.class public abstract Lcn/kuwo/mod/quku/OnRequestListenerImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/quku/OnRequestListener;


# instance fields
.field private a:Lcn/kuwo/mod/quku/OnlineType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Lcn/kuwo/mod/quku/QukuRequestState;[B)V
    .locals 2

    sget-object v0, Lcn/kuwo/mod/quku/OnRequestListenerImp$1;->a:[I

    invoke-virtual {p1}, Lcn/kuwo/mod/quku/QukuRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/kuwo/mod/quku/OnRequestListenerImp;->a:Lcn/kuwo/mod/quku/OnlineType;

    invoke-static {v0, p2}, Lcn/kuwo/mod/quku/ResultParser;->a(Lcn/kuwo/mod/quku/OnlineType;[B)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/quku/OnRequestListenerImp;->onRequestSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnRequestListenerImp;->onRequestLoading()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcn/kuwo/mod/quku/OnRequestListenerImp;->onRequestFail(Lcn/kuwo/mod/quku/QukuRequestState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public abstract onRequestFail(Lcn/kuwo/mod/quku/QukuRequestState;)V
.end method

.method public abstract onRequestLoading()V
.end method

.method public abstract onRequestSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V
.end method
