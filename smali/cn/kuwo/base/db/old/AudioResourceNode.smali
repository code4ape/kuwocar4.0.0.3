.class public Lcn/kuwo/base/db/old/AudioResourceNode;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->a:I

    iput v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->b:I

    iput-object v2, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->d:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->e:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->g:I

    iput v1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->h:I

    iput-boolean v1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->i:Z

    iput-object v2, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->j:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->k:I

    iput v1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->l:I

    iput v1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->m:I

    iput-object v2, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->n:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->o:Z

    iput v1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->p:I

    iput-object v2, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->q:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;->a:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    iput-object v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->r:Lcn/kuwo/base/db/old/AudioResourceNode$ResourceQuality;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->p:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->e:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->p:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->k:I

    return v0
.end method

.method public getChannelNum()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->m:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->a:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->l:I

    return v0
.end method

.method public getSig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->g:I

    return v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->i:Z

    return v0
.end method

.method public setAudioFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->f:Ljava/lang/String;

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->k:I

    return-void
.end method

.method public setChannelNum(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->m:I

    return-void
.end method

.method public setComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->i:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->a:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->d:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->l:I

    return-void
.end method

.method public setSig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->q:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->g:I

    return-void
.end method

.method public setTrackInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/db/old/AudioResourceNode;->n:Ljava/lang/String;

    return-void
.end method
