.class public abstract Lcn/kuwo/base/bean/online/BaseOnlineSection;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->b:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->s:Ljava/lang/String;

    return-void
.end method

.method public add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->d:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->g:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->h:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->j:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->k:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->l:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->m:Ljava/lang/String;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->c:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->n:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->o:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->p:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->q:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->r:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->c:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->f:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/online/BaseOnlineSection;->i:Ljava/lang/String;

    return-void
.end method
