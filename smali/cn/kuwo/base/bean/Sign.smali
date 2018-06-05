.class public Lcn/kuwo/base/bean/Sign;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcn/kuwo/base/bean/Sign;->a:J

    iput-wide v0, p0, Lcn/kuwo/base/bean/Sign;->b:J

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/bean/Sign;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Sign;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/Sign;->a()Lcn/kuwo/base/bean/Sign;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcn/kuwo/base/bean/Sign;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcn/kuwo/base/bean/Sign;

    iget-wide v2, p1, Lcn/kuwo/base/bean/Sign;->a:J

    iget-wide v4, p0, Lcn/kuwo/base/bean/Sign;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcn/kuwo/base/bean/Sign;->b:J

    iget-wide v4, p0, Lcn/kuwo/base/bean/Sign;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcn/kuwo/base/bean/Sign;->a:J

    iget-wide v2, p0, Lcn/kuwo/base/bean/Sign;->b:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
