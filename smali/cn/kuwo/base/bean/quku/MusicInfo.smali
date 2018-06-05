.class public Lcn/kuwo/base/bean/quku/MusicInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItem;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcn/kuwo/base/bean/Music;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "music"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->i:J

    iput-object v3, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->j:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->k:I

    iput-object v3, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->n:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->o:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->p:Ljava/lang/String;

    iput v2, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->i:J

    iput-object v3, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->j:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->k:I

    iput-object v3, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->n:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->o:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->p:Ljava/lang/String;

    iput v2, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->v:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->i:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Lcn/kuwo/base/bean/Music;
    .locals 4

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    if-nez v0, :cond_1

    new-instance v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->b:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->f:I

    iput v1, v0, Lcn/kuwo/base/bean/Music;->f:I

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->h:I

    iput v1, v0, Lcn/kuwo/base/bean/Music;->k:I

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-boolean v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->o:Z

    iput-boolean v1, v0, Lcn/kuwo/base/bean/Music;->h:Z

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->k:I

    iput v1, v0, Lcn/kuwo/base/bean/Music;->l:I

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-wide v2, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->i:J

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->l:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->o:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->p:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/MusicInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->v:Ljava/lang/String;

    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    const/4 v1, 0x1

    iput v1, v0, Lcn/kuwo/base/bean/Music;->y:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/Music;->b(Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->s:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->m:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->t:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->n:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    iget-boolean v1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->e:Z

    iput-boolean v1, v0, Lcn/kuwo/base/bean/Music;->x:Z

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->v:Ljava/lang/String;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    const/4 v1, 0x0

    iput v1, v0, Lcn/kuwo/base/bean/Music;->y:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->v:Ljava/lang/String;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->w:Lcn/kuwo/base/bean/Music;

    const/4 v1, -0x1

    iput v1, v0, Lcn/kuwo/base/bean/Music;->y:I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->h:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->k:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->f:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->o:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "\\|"

    const-string v1, ";"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->p:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->q:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->v:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->v:Ljava/lang/String;

    goto :goto_0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->s:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->t:Ljava/lang/String;

    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->f:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/MusicInfo;->d:Ljava/lang/String;

    return-void
.end method
