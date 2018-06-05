.class public Lcn/kuwo/base/image/Utils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)I
    .locals 4

    invoke-virtual {p0}, Lcn/kuwo/base/image/ImageViewAware;->c()I

    move-result v0

    const/16 v1, 0x14d

    if-ne v0, v1, :cond_0

    iget v1, p1, Lcn/kuwo/base/image/ImageDisplayOptions;->g:I

    if-lez v1, :cond_1

    iget v0, p1, Lcn/kuwo/base/image/ImageDisplayOptions;->g:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcn/kuwo/base/util/DeviceUtils;->WIDTH:I

    if-eqz v1, :cond_0

    sget v0, Lcn/kuwo/base/util/DeviceUtils;->WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcn/kuwo/base/image/Utils;->a(Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)I

    move-result v1

    invoke-static {p1, p2}, Lcn/kuwo/base/image/Utils;->b(Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)I

    move-result v2

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)I
    .locals 4

    invoke-virtual {p0}, Lcn/kuwo/base/image/ImageViewAware;->d()I

    move-result v0

    const/16 v1, 0x14d

    if-ne v0, v1, :cond_0

    iget v1, p1, Lcn/kuwo/base/image/ImageDisplayOptions;->h:I

    if-lez v1, :cond_1

    iget v0, p1, Lcn/kuwo/base/image/ImageDisplayOptions;->h:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcn/kuwo/base/util/DeviceUtils;->WIDTH:I

    if-eqz v1, :cond_0

    sget v0, Lcn/kuwo/base/util/DeviceUtils;->WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
