.class public Lcn/kuwo/base/uilib/KuwoTextView;
.super Landroid/widget/TextView;


# static fields
.field private static final DIRECTIONLEFT_STYLE:I = 0x1

.field private static final DOUBLEDIRECTION_SYTLE:I = 0x2

.field private static final NOSCROLLER_SYTLE:I


# instance fields
.field private defultstyle:I

.field private fontHeight:I

.field private mLastText:Ljava/lang/String;

.field private mOuterGlowColor:I

.field private mScrollerController:Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->defultstyle:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mOuterGlowColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->defultstyle:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mOuterGlowColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->defultstyle:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mOuterGlowColor:I

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/base/uilib/KuwoTextView;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->fontHeight:I

    return v0
.end method

.method static synthetic access$100(Lcn/kuwo/base/uilib/KuwoTextView;Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/base/uilib/KuwoTextView;->drawShader(Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/base/uilib/KuwoTextView;Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/base/uilib/KuwoTextView;->drawBorder(Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/base/uilib/KuwoTextView;Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/base/uilib/KuwoTextView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private drawBorder(Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40a00000    # 5.0f

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v1, 0xf5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, p2, v4, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private drawShader(Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40400000    # 3.0f

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v1, 0xf5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, p2, v4, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)Landroid/graphics/Paint;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, p2, v2, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private getFontHeight()I
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private isNeedScroller()Z
    .locals 3

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startScroll(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mLastText:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getFontHeight()I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->fontHeight:I

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mScrollerController:Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mScrollerController:Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->stopScroll()V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->isNeedScroller()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;

    iget v1, p0, Lcn/kuwo/base/uilib/KuwoTextView;->defultstyle:I

    invoke-direct {v0, p0, p0, v1}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;-><init>(Lcn/kuwo/base/uilib/KuwoTextView;Lcn/kuwo/base/uilib/KuwoTextView;I)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mScrollerController:Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;-><init>(Lcn/kuwo/base/uilib/KuwoTextView;Lcn/kuwo/base/uilib/KuwoTextView;I)V

    iput-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mScrollerController:Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;

    goto :goto_0
.end method


# virtual methods
.method public getOuterGlowColor()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mOuterGlowColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KuwoTextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getYPostition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mScrollerController:Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->stopScroll()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mScrollerController:Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mScrollerController:Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/uilib/KuwoTextView$ScrollerController;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mLastText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/base/uilib/KuwoTextView;->startScroll(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOuterGlowColor(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mOuterGlowColor:I

    return-void
.end method

.method public startScroll()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/KuwoTextView;->mLastText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/kuwo/base/uilib/KuwoTextView;->startScroll(Ljava/lang/String;)V

    return-void
.end method
