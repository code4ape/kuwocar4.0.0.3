.class public Lcn/kuwo/base/bean/quku/RadioInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItem;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "radio"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->c:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->d:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->a:I

    return v0
.end method

.method public setCid(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->a:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/quku/RadioInfo;->b:I

    return-void
.end method
