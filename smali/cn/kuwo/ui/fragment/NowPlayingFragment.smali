.class public Lcn/kuwo/ui/fragment/NowPlayingFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;


# instance fields
.field private isFromSoundEffect:Z

.field private ivCover:Landroid/widget/ImageView;

.field private ivDownload:Landroid/widget/ImageView;

.field private ivLike:Landroid/widget/ImageView;

.field private listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

.field private lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    new-instance v0, Lcn/kuwo/ui/fragment/NowPlayingFragment$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/NowPlayingFragment$1;-><init>(Lcn/kuwo/ui/fragment/NowPlayingFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->isFromSoundEffect:Z

    new-instance v0, Lcn/kuwo/ui/fragment/NowPlayingFragment$2;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/NowPlayingFragment$2;-><init>(Lcn/kuwo/ui/fragment/NowPlayingFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

    new-instance v0, Lcn/kuwo/ui/fragment/NowPlayingFragment$3;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/NowPlayingFragment$3;-><init>(Lcn/kuwo/ui/fragment/NowPlayingFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

    new-instance v0, Lcn/kuwo/ui/fragment/NowPlayingFragment$4;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/NowPlayingFragment$4;-><init>(Lcn/kuwo/ui/fragment/NowPlayingFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->setLayoutContentId(I)V

    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->setLayoutTopId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/NowPlayingFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->isFromSoundEffect:Z

    return v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/fragment/NowPlayingFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->setCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcn/kuwo/ui/fragment/NowPlayingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->updateIcon()V

    return-void
.end method

.method private setCover(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivCover:Landroid/widget/ImageView;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateIcon()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivLike:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivLike:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcn/kuwo/base/util/MusicListUtils;->isFavorite(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivLike:Landroid/widget/ImageView;

    const v4, 0x7f020014

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivDownload:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivDownload:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-wide v4, v3, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-static {v3}, Lcn/kuwo/base/util/MusicListUtils;->isDownloadedOrLocal(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivDownload:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivLike:Landroid/widget/ImageView;

    const v4, 0x7f020013

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivDownload:Landroid/widget/ImageView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onDestroy()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->isFromSoundEffect:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    const/16 v0, 0xb

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f0b0072

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivCover:Landroid/widget/ImageView;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->setCover(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->getKuwoBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "from_sound_effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->isFromSoundEffect:Z

    :cond_0
    const v0, 0x7f0b005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivLike:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivLike:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivDownload:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->ivDownload:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->updateIcon()V

    return-void
.end method
