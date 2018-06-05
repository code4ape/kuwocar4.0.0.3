.class Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;
.super Landroid/os/Handler;


# static fields
.field private static final OP_SCROLLER:I = 0x1


# instance fields
.field private mKuwoTextView:Lcn/kuwo/base/uilib/KuwoTextView;

.field private mScroller:Lcn/kuwo/base/uilib/KuwoTextView$Scroller;

.field final synthetic this$0:Lcn/kuwo/base/uilib/KuwoTextView;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/uilib/KuwoTextView;Lcn/kuwo/base/uilib/KuwoTextView;I)V
    .locals 4

    iput-object p1, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->mKuwoTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;

    invoke-direct {v0, p1, p2}, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;-><init>(Lcn/kuwo/base/uilib/KuwoTextView;Lcn/kuwo/base/uilib/KuwoTextView;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->mScroller:Lcn/kuwo/base/uilib/KuwoTextView$Scroller;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;

    invoke-direct {v0, p1, p2}, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;-><init>(Lcn/kuwo/base/uilib/KuwoTextView;Lcn/kuwo/base/uilib/KuwoTextView;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->mScroller:Lcn/kuwo/base/uilib/KuwoTextView$Scroller;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcn/kuwo/base/uilib/KuwoTextView$DoubleDirectionScroller;

    invoke-direct {v0, p1, p2}, Lcn/kuwo/base/uilib/KuwoTextView$DoubleDirectionScroller;-><init>(Lcn/kuwo/base/uilib/KuwoTextView;Lcn/kuwo/base/uilib/KuwoTextView;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->mScroller:Lcn/kuwo/base/uilib/KuwoTextView$Scroller;

    const/4 v0, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-wide/16 v4, 0xc8

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->removeMessages(I)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->mScroller:Lcn/kuwo/base/uilib/KuwoTextView$Scroller;

    invoke-interface {v0}, Lcn/kuwo/base/uilib/KuwoTextView$Scroller;->scroll()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v4, v5}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->mScroller:Lcn/kuwo/base/uilib/KuwoTextView$Scroller;

    instance-of v0, v0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->mKuwoTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;-><init>(Lcn/kuwo/base/uilib/KuwoTextView;Lcn/kuwo/base/uilib/KuwoTextView;)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->mScroller:Lcn/kuwo/base/uilib/KuwoTextView$Scroller;

    invoke-virtual {p0, v3, v4, v5}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->mScroller:Lcn/kuwo/base/uilib/KuwoTextView$Scroller;

    invoke-interface {v0, p1}, Lcn/kuwo/base/uilib/KuwoTextView$Scroller;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->removeMessages(I)V

    return-void
.end method
