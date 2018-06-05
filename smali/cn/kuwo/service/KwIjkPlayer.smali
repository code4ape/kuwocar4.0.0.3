.class public Lcn/kuwo/service/KwIjkPlayer;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/ijkplayer/IMediaPlayer$OnVideoSizeChangedListener;

.field b:Lorg/ijkplayer/IMediaPlayer$OnPreparedListener;

.field private final c:Ljava/lang/String;

.field private d:Lorg/ijkplayer/IjkMediaPlayer;

.field private e:Landroid/view/Surface;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private final h:Ljava/lang/Object;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcn/kuwo/service/IjkPlayerCallback;

.field private s:Landroid/media/audiofx/BassBoost;

.field private t:Landroid/media/audiofx/Virtualizer;

.field private u:Lorg/ijkplayer/IMediaPlayer$OnCompletionListener;

.field private v:Lorg/ijkplayer/IMediaPlayer$OnErrorListener;

.field private w:Lorg/ijkplayer/IMediaPlayer$OnBufferingUpdateListener;

.field private x:Lorg/ijkplayer/IMediaPlayer$OnInfoListener;

.field private y:Lorg/ijkplayer/IMediaPlayer$OnSeekCompleteListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->c:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    iput-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->e:Landroid/view/Surface;

    iput-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->f:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->g:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->h:Ljava/lang/Object;

    iput v2, p0, Lcn/kuwo/service/KwIjkPlayer;->i:I

    iput v2, p0, Lcn/kuwo/service/KwIjkPlayer;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/service/KwIjkPlayer;->k:I

    iput-boolean v2, p0, Lcn/kuwo/service/KwIjkPlayer;->l:Z

    iput-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->r:Lcn/kuwo/service/IjkPlayerCallback;

    new-instance v0, Lcn/kuwo/service/KwIjkPlayer$1;

    invoke-direct {v0, p0}, Lcn/kuwo/service/KwIjkPlayer$1;-><init>(Lcn/kuwo/service/KwIjkPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->a:Lorg/ijkplayer/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcn/kuwo/service/KwIjkPlayer$2;

    invoke-direct {v0, p0}, Lcn/kuwo/service/KwIjkPlayer$2;-><init>(Lcn/kuwo/service/KwIjkPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->b:Lorg/ijkplayer/IMediaPlayer$OnPreparedListener;

    new-instance v0, Lcn/kuwo/service/KwIjkPlayer$3;

    invoke-direct {v0, p0}, Lcn/kuwo/service/KwIjkPlayer$3;-><init>(Lcn/kuwo/service/KwIjkPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->u:Lorg/ijkplayer/IMediaPlayer$OnCompletionListener;

    new-instance v0, Lcn/kuwo/service/KwIjkPlayer$4;

    invoke-direct {v0, p0}, Lcn/kuwo/service/KwIjkPlayer$4;-><init>(Lcn/kuwo/service/KwIjkPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->v:Lorg/ijkplayer/IMediaPlayer$OnErrorListener;

    new-instance v0, Lcn/kuwo/service/KwIjkPlayer$5;

    invoke-direct {v0, p0}, Lcn/kuwo/service/KwIjkPlayer$5;-><init>(Lcn/kuwo/service/KwIjkPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->w:Lorg/ijkplayer/IMediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcn/kuwo/service/KwIjkPlayer$6;

    invoke-direct {v0, p0}, Lcn/kuwo/service/KwIjkPlayer$6;-><init>(Lcn/kuwo/service/KwIjkPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->x:Lorg/ijkplayer/IMediaPlayer$OnInfoListener;

    new-instance v0, Lcn/kuwo/service/KwIjkPlayer$7;

    invoke-direct {v0, p0}, Lcn/kuwo/service/KwIjkPlayer$7;-><init>(Lcn/kuwo/service/KwIjkPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->y:Lorg/ijkplayer/IMediaPlayer$OnSeekCompleteListener;

    invoke-direct {p0}, Lcn/kuwo/service/KwIjkPlayer;->k()V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/service/KwIjkPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/KwIjkPlayer;->m:I

    return p1
.end method

.method static synthetic a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/service/KwIjkPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/service/KwIjkPlayer;->l:Z

    return p1
.end method

.method static synthetic b(Lcn/kuwo/service/KwIjkPlayer;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/KwIjkPlayer;->j:I

    return v0
.end method

.method static synthetic b(Lcn/kuwo/service/KwIjkPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/KwIjkPlayer;->n:I

    return p1
.end method

.method static synthetic c(Lcn/kuwo/service/KwIjkPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/KwIjkPlayer;->o:I

    return p1
.end method

.method static synthetic c(Lcn/kuwo/service/KwIjkPlayer;)Lcn/kuwo/service/IjkPlayerCallback;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->r:Lcn/kuwo/service/IjkPlayerCallback;

    return-object v0
.end method

.method static synthetic d(Lcn/kuwo/service/KwIjkPlayer;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/KwIjkPlayer;->k:I

    return v0
.end method

.method static synthetic d(Lcn/kuwo/service/KwIjkPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/KwIjkPlayer;->p:I

    return p1
.end method

.method static synthetic e(Lcn/kuwo/service/KwIjkPlayer;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/KwIjkPlayer;->i:I

    return v0
.end method

.method static synthetic e(Lcn/kuwo/service/KwIjkPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/KwIjkPlayer;->i:I

    return p1
.end method

.method static synthetic f(Lcn/kuwo/service/KwIjkPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/KwIjkPlayer;->j:I

    return p1
.end method

.method static synthetic f(Lcn/kuwo/service/KwIjkPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/service/KwIjkPlayer;->l:Z

    return v0
.end method

.method static synthetic g(Lcn/kuwo/service/KwIjkPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/KwIjkPlayer;->k:I

    return p1
.end method

.method static synthetic h(Lcn/kuwo/service/KwIjkPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/KwIjkPlayer;->q:I

    return p1
.end method

.method private k()V
    .locals 7

    const/4 v6, 0x4

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/ijkplayer/IjkMediaPlayer;

    invoke-direct {v0}, Lorg/ijkplayer/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcn/kuwo/service/KwIjkPlayer;->l()V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    const/4 v1, 0x2

    const-string v2, "skip_loop_filter"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ijkplayer/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    const-string v1, "last-high-water-mark-ms"

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v6, v1, v2, v3}, Lorg/ijkplayer/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    const-string v1, "first-high-water-mark-ms"

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v6, v1, v2, v3}, Lorg/ijkplayer/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->b:Lorg/ijkplayer/IMediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lorg/ijkplayer/IjkMediaPlayer;->setOnPreparedListener(Lorg/ijkplayer/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->a:Lorg/ijkplayer/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Lorg/ijkplayer/IjkMediaPlayer;->setOnVideoSizeChangedListener(Lorg/ijkplayer/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->u:Lorg/ijkplayer/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lorg/ijkplayer/IjkMediaPlayer;->setOnCompletionListener(Lorg/ijkplayer/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->v:Lorg/ijkplayer/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lorg/ijkplayer/IjkMediaPlayer;->setOnErrorListener(Lorg/ijkplayer/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->w:Lorg/ijkplayer/IMediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Lorg/ijkplayer/IjkMediaPlayer;->setOnBufferingUpdateListener(Lorg/ijkplayer/IMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->x:Lorg/ijkplayer/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lorg/ijkplayer/IjkMediaPlayer;->setOnInfoListener(Lorg/ijkplayer/IMediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->y:Lorg/ijkplayer/IMediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Lorg/ijkplayer/IjkMediaPlayer;->setOnSeekCompleteListener(Lorg/ijkplayer/IMediaPlayer$OnSeekCompleteListener;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/ijkplayer/IjkMediaPlayer;->stop()V

    invoke-virtual {p0}, Lcn/kuwo/service/KwIjkPlayer;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    return-void
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v2}, Lorg/ijkplayer/IjkMediaPlayer;->getAudioSessionId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v3, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    iput-object v3, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    goto :goto_0
.end method

.method private o()V
    .locals 4

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Landroid/media/audiofx/Virtualizer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v2}, Lorg/ijkplayer/IjkMediaPlayer;->getAudioSessionId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v3, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    iput-object v3, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/ijkplayer/IjkMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/ijkplayer/IjkMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public a(I)V
    .locals 0

    invoke-static {p1}, Lorg/ijkplayer/IjkMediaPlayer;->setEffectType(I)V

    return-void
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    const/4 v1, 0x4

    const-string v2, "seek-at-start"

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/ijkplayer/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    invoke-virtual {p0}, Lcn/kuwo/service/KwIjkPlayer;->b()V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Lorg/ijkplayer/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    iput-object p1, p0, Lcn/kuwo/service/KwIjkPlayer;->e:Landroid/view/Surface;

    return-void
.end method

.method public a(Lcn/kuwo/mod/audioeffect/EqualizerItem;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    move v1, v2

    :goto_1
    iget-object v0, p1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;

    iget-short v0, v0, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;->b:S

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget v0, p1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0, v2, v3}, Lorg/ijkplayer/IjkMediaPlayer;->updateEqParam(ZI[I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public a(Lcn/kuwo/service/IjkPlayerCallback;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/KwIjkPlayer;->r:Lcn/kuwo/service/IjkPlayerCallback;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Lorg/ijkplayer/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/kuwo/service/KwIjkPlayer;->f:Ljava/lang/String;

    return-void
.end method

.method public a(S)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/service/KwIjkPlayer;->n()V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->getStrengthSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_2

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_3

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setStrength(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/BassBoost;->setStrength(S)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Lorg/ijkplayer/IjkMediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/ijkplayer/IjkMediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/kuwo/service/KwIjkPlayer;->i:I

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/service/KwIjkPlayer;->o()V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->getStrengthSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_2

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_3

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/ijkplayer/IjkMediaPlayer;->seekTo(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/service/KwIjkPlayer;->l:Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Lorg/ijkplayer/IjkMediaPlayer;->set3DSound_enable(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    iput-object p1, p0, Lcn/kuwo/service/KwIjkPlayer;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/service/KwIjkPlayer;->i()Z

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Lorg/ijkplayer/IjkMediaPlayer;->set3DSound_playChannels(I)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/ijkplayer/IjkMediaPlayer;->start()V

    const/4 v0, 0x3

    iput v0, p0, Lcn/kuwo/service/KwIjkPlayer;->i:I

    return-void
.end method

.method public d(I)I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Lorg/ijkplayer/IjkMediaPlayer;->set3DSound_pauseChannels(I)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcn/kuwo/service/KwIjkPlayer;->i:I

    invoke-direct {p0}, Lcn/kuwo/service/KwIjkPlayer;->m()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcn/kuwo/service/KwIjkPlayer;->i:I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/ijkplayer/IjkMediaPlayer;->pause()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->s:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->t:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->release()V

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/ijkplayer/IjkMediaPlayer;->release()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/ijkplayer/IjkMediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/ijkplayer/IjkMediaPlayer;->getDuration()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public h()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer;->d:Lorg/ijkplayer/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/ijkplayer/IjkMediaPlayer;->getCurrentPosition()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/service/KwIjkPlayer;->g()V

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/kuwo/service/KwIjkPlayer;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/service/KwIjkPlayer;->b()V

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->e:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/service/KwIjkPlayer;->e:Landroid/view/Surface;

    invoke-virtual {p0, v1}, Lcn/kuwo/service/KwIjkPlayer;->a(Landroid/view/Surface;)V

    invoke-virtual {p0, v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Z)V

    goto :goto_0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/KwIjkPlayer;->i:I

    return v0
.end method
