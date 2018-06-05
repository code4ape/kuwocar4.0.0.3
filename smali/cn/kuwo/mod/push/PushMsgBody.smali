.class public Lcn/kuwo/mod/push/PushMsgBody;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/util/Date;

.field private h:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/push/PushMsgBody;->f:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/mod/push/PushMsgBody;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushMsgBody;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushMsgBody;->g:Ljava/util/Date;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/push/PushMsgBody;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushMsgBody;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushMsgBody;->h:Ljava/util/Date;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushMsgBody;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->f:I

    return v0
.end method

.method public f()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->g:Ljava/util/Date;

    return-object v0
.end method

.method public g()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->h:Ljava/util/Date;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->b:I

    return v0
.end method

.method public i()I
    .locals 2

    iget v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/push/PushMsgBody;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
