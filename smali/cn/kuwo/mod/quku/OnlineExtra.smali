.class public Lcn/kuwo/mod/quku/OnlineExtra;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcn/kuwo/mod/quku/OnlineType;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method private constructor <init>(JLjava/lang/String;Lcn/kuwo/mod/quku/OnlineType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcn/kuwo/mod/quku/OnlineExtra;->a:J

    iput-object p3, p0, Lcn/kuwo/mod/quku/OnlineExtra;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/kuwo/mod/quku/OnlineExtra;->c:Lcn/kuwo/mod/quku/OnlineType;

    return-void
.end method

.method public static a(JLjava/lang/String;Lcn/kuwo/mod/quku/OnlineType;)Lcn/kuwo/mod/quku/OnlineExtra;
    .locals 2

    new-instance v0, Lcn/kuwo/mod/quku/OnlineExtra;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/kuwo/mod/quku/OnlineExtra;-><init>(JLjava/lang/String;Lcn/kuwo/mod/quku/OnlineType;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->i:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/quku/OnlineExtra;->i:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/quku/OnlineExtra;->g:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->j:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/quku/OnlineExtra;->j:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/quku/OnlineExtra;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcn/kuwo/mod/quku/OnlineType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->c:Lcn/kuwo/mod/quku/OnlineType;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->a:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineExtra;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/quku/OnlineExtra;->f:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/quku/OnlineExtra;->d:Ljava/lang/String;

    return-void
.end method
