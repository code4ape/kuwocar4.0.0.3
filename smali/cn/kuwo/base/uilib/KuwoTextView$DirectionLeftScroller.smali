.class Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/uilib/KuwoTextView$Scroller;


# instance fields
.field private mGhostTextLeft:I

.field private mLeft:I

.field private mText:Ljava/lang/String;

.field private mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

.field private speed:I

.field final synthetic this$0:Lcn/kuwo/base/uilib/KuwoTextView;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/uilib/KuwoTextView;Lcn/kuwo/base/uilib/KuwoTextView;)V
    .locals 2

    iput-object p1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->speed:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mGhostTextLeft:I

    invoke-virtual {p2}, Lcn/kuwo/base/uilib/KuwoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/kuwo/base/uilib/KuwoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Lcn/kuwo/base/uilib/KuwoTextView;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mGhostTextLeft:I

    iput-object p2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-static {v1}, Lcn/kuwo/base/uilib/KuwoTextView;->access$000(Lcn/kuwo/base/uilib/KuwoTextView;)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getYPostition()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/KuwoTextView;->getOuterGlowColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getOuterGlowColor()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcn/kuwo/base/uilib/KuwoTextView;->access$100(Lcn/kuwo/base/uilib/KuwoTextView;Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mGhostTextLeft:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mText:Ljava/lang/String;

    iget v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mGhostTextLeft:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getOuterGlowColor()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcn/kuwo/base/uilib/KuwoTextView;->access$200(Lcn/kuwo/base/uilib/KuwoTextView;Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mGhostTextLeft:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mText:Ljava/lang/String;

    iget v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mGhostTextLeft:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->this$0:Lcn/kuwo/base/uilib/KuwoTextView;

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getTextColor()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcn/kuwo/base/uilib/KuwoTextView;->access$300(Lcn/kuwo/base/uilib/KuwoTextView;Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mGhostTextLeft:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mText:Ljava/lang/String;

    iget v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mGhostTextLeft:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public scroll()Z
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/KuwoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mLeft:I

    iget v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->speed:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mLeft:I

    iget-object v1, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v1}, Lcn/kuwo/base/uilib/KuwoTextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v2}, Lcn/kuwo/base/uilib/KuwoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v2, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mLeft:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mLeft:I

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView$DirectionLeftScroller;->mTextView:Lcn/kuwo/base/uilib/KuwoTextView;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/KuwoTextView;->postInvalidate()V

    const/4 v0, 0x1

    return v0
.end method
