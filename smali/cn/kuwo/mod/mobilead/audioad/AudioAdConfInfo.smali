.class public Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x78

    iput v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->a:I

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x1e

    iput v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->b:I

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->c:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    iput v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->c:I

    goto :goto_0
.end method
