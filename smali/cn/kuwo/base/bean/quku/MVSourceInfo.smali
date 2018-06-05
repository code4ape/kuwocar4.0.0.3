.class public Lcn/kuwo/base/bean/quku/MVSourceInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItem;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "source"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->d:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->c:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->b:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->a:I

    return v0
.end method

.method public setBitrate(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->c:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->b:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->a:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/bean/quku/MVSourceInfo;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
