.class public Lcn/kuwo/mod/skin/SkinPack;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinPack;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/skin/SkinPack;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinPack;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/skin/SkinPack;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinPack;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/skin/SkinPack;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinPack;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/skin/SkinPack;->f:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/skin/SkinPack;->e:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/skin/SkinPack;->h:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    instance-of v2, p1, Lcn/kuwo/mod/skin/SkinPack;

    if-eqz v2, :cond_0

    check-cast p1, Lcn/kuwo/mod/skin/SkinPack;

    iget v2, p0, Lcn/kuwo/mod/skin/SkinPack;->e:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcn/kuwo/mod/skin/SkinPack;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/kuwo/mod/skin/SkinPack;->b:Ljava/lang/String;

    iget-object v3, p1, Lcn/kuwo/mod/skin/SkinPack;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcn/kuwo/mod/skin/SkinPack;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/kuwo/mod/skin/SkinPack;->h:Ljava/lang/String;

    iget-object v3, p1, Lcn/kuwo/mod/skin/SkinPack;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcn/kuwo/mod/skin/SkinPack;->e()I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinPack;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/skin/SkinPack;->d:Ljava/lang/String;

    return-void
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/mod/skin/SkinPack;->a:J

    return-wide v0
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/mod/skin/SkinPack;->a:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/skin/SkinPack;->e:I

    return-void
.end method
