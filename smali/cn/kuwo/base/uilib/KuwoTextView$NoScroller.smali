.class Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/uilib/KuwoTextView$Scroller;


# instance fields
.field private mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

.field final synthetic this$0:Lcn/kuwo/base/uilib/KuwoTextView;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/uilib/KuwoTextView;Lcn/kuwo/base/uilib/KuwoTextView;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/KuwoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getWidth()I

    move-result v4

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getGravity()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v2, v3

    :goto_0
    int-to-float v7, v4

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v1

    if-lez v6, :cond_0

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v8, v4, v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    if-le v4, v8, :cond_0

    if-eqz v0, :cond_0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-gez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-static {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->access$000(Lcn/kuwo/base/uilib/KuwoTextView;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v3}, Lcn/kuwo/base/uilib/KuwoTextView;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v1}, Lcn/kuwo/base/uilib/KuwoTextView;->getOuterGlowColor()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getOuterGlowColor()I

    move-result v2

    invoke-static {v1, p1, v0, v2}, Lcn/kuwo/base/uilib/KuwoTextView;->access$100(Lcn/kuwo/base/uilib/KuwoTextView;Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getOuterGlowColor()I

    move-result v2

    invoke-static {v1, p1, v0, v2}, Lcn/kuwo/base/uilib/KuwoTextView;->access$200(Lcn/kuwo/base/uilib/KuwoTextView;Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;

    :cond_1
    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$NoScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getTextColor()I

    move-result v2

    invoke-static {v1, p1, v0, v2}, Lcn/kuwo/base/uilib/KuwoTextView;->access$300(Lcn/kuwo/base/uilib/KuwoTextView;Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    int-to-float v2, v4

    sub-float/2addr v2, v6

    float-to-int v2, v2

    goto :goto_0

    :sswitch_2
    int-to-float v2, v4

    sub-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    int-to-float v1, v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public scroll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
