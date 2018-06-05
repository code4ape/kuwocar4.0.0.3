.class public Lcn/kuwo/ui/fragment/MvFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;

# interfaces
.implements Lcn/kuwo/ui/fragment/FullScreenFragmentInterface;


# static fields
.field private static final SHOWING_INTERVAL:J = 0x1388L

.field private static final TAG:Ljava/lang/String;

.field private static final showTipTypeError:I = 0x2

.field private static final showTipTypeLoading:I = 0x1


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private bottomControlBar:Landroid/view/View;

.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private currentMusic:Lcn/kuwo/base/bean/Music;

.field private currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

.field private currentpos:I

.field private index:I

.field private isChangeQuality:Z

.field private isFail:Z

.field private isPaused:Z

.field private isPlayConttollerShow:Z

.field private isPlaying:Z

.field private isQualitySelectShow:Z

.field private ivDownloadState:Landroid/widget/ImageView;

.field private ivPlayPuase:Landroid/widget/ImageView;

.field private layouTip:Landroid/view/View;

.field private layoutPlaylist:Landroid/view/View;

.field private layoutQualitySelect:Landroid/view/View;

.field public muscis:Ljava/util/List;

.field private mvPlaylistAdapter:Lcn/kuwo/ui/adapter/MVPlaylistAdapter;

.field private onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

.field private pauseByFocusChange:Z

.field private pauseByPhoneCall:Z

.field private pbLoading:Landroid/widget/ProgressBar;

.field private play:Landroid/view/View;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rootView:Landroid/view/View;

.field private sbProgress:Landroid/widget/SeekBar;

.field private showType:I

.field private startShowTime:J

.field private timer:Lcn/kuwo/base/util/KwTimer;

.field private topTitleBar:Landroid/view/View;

.field private tvCurretnTime:Landroid/widget/TextView;

.field private tvHighQuality:Landroid/widget/TextView;

.field private tvIndicator:Landroid/widget/ImageView;

.field private tvLowQuality:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvQuality:Landroid/widget/TextView;

.field private tvTip:Landroid/widget/TextView;

.field private tvTotalTime:Landroid/widget/TextView;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/kuwo/ui/fragment/MvFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/ui/fragment/MvFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->muscis:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    iput-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    sget-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    iput-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->timer:Lcn/kuwo/base/util/KwTimer;

    iput-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->mvPlaylistAdapter:Lcn/kuwo/ui/adapter/MVPlaylistAdapter;

    iput v3, p0, Lcn/kuwo/ui/fragment/MvFragment;->showType:I

    iput-boolean v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->isPaused:Z

    iput-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->audioManager:Landroid/media/AudioManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->startShowTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentpos:I

    iput-boolean v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->isPlaying:Z

    iput-boolean v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->isFail:Z

    new-instance v0, Lcn/kuwo/ui/fragment/MvFragment$8;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/MvFragment$8;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    new-instance v0, Lcn/kuwo/ui/fragment/MvFragment$9;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/MvFragment$9;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->callback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcn/kuwo/ui/fragment/MvFragment$10;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/MvFragment$10;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->isChangeQuality:Z

    iput-boolean v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->isQualitySelectShow:Z

    new-instance v0, Lcn/kuwo/ui/fragment/MvFragment$11;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/MvFragment$11;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-boolean v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->pauseByFocusChange:Z

    iput-boolean v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->pauseByPhoneCall:Z

    iput-boolean v3, p0, Lcn/kuwo/ui/fragment/MvFragment;->isPlayConttollerShow:Z

    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/MvFragment;->setLayoutContentId(I)V

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    new-instance v1, Lcn/kuwo/ui/fragment/MvFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MvFragment$1;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    invoke-direct {v0, v1}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->timer:Lcn/kuwo/base/util/KwTimer;

    return-void
.end method

.method private _play(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/kuwo/ui/fragment/MvFragment;->_play(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;I)V

    return-void
.end method

.method private _play(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->videoStart()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p3}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    invoke-interface {v0, p1}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoading(Lcn/kuwo/base/bean/Music;)V

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->refreshView()V

    return-void
.end method

.method static synthetic access$1000(Lcn/kuwo/ui/fragment/MvFragment;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentpos:I

    return v0
.end method

.method static synthetic access$1002(Lcn/kuwo/ui/fragment/MvFragment;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentpos:I

    return p1
.end method

.method static synthetic access$1100(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/base/bean/Music;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/ui/fragment/MvFragment;->_play(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$1200(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/ui/fragment/MvFragment;->_play(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/kuwo/ui/fragment/MvFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isFail:Z

    return v0
.end method

.method static synthetic access$1302(Lcn/kuwo/ui/fragment/MvFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/ui/fragment/MvFragment;->isFail:Z

    return p1
.end method

.method static synthetic access$1400(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->videoStart()V

    return-void
.end method

.method static synthetic access$1502(Lcn/kuwo/ui/fragment/MvFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/ui/fragment/MvFragment;->startShowTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->playPre()V

    return-void
.end method

.method static synthetic access$1700(Lcn/kuwo/ui/fragment/MvFragment;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->showType:I

    return v0
.end method

.method static synthetic access$1800(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->hidePlaylist()V

    return-void
.end method

.method static synthetic access$200(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->showPlaylist()V

    return-void
.end method

.method static synthetic access$2100(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/ui/fragment/MvFragment;->changeQuality(Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;)V

    return-void
.end method

.method static synthetic access$2200(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->hideQualitySelectLayout()V

    return-void
.end method

.method static synthetic access$2300(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->showQualitySelectLayout()V

    return-void
.end method

.method static synthetic access$2400(Lcn/kuwo/ui/fragment/MvFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->isCurrentMusicDownloaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/DownloadTask;
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->getCurrentMusicDownloadTask()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcn/kuwo/ui/fragment/MvFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isQualitySelectShow:Z

    return v0
.end method

.method static synthetic access$2700(Lcn/kuwo/ui/fragment/MvFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isPlayConttollerShow:Z

    return v0
.end method

.method static synthetic access$2800(Lcn/kuwo/ui/fragment/MvFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/ui/fragment/MvFragment;->showPlayController(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcn/kuwo/ui/fragment/MvFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/ui/fragment/MvFragment;->onGainAudioFocus(Z)V

    return-void
.end method

.method static synthetic access$302(Lcn/kuwo/ui/fragment/MvFragment;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    return p1
.end method

.method static synthetic access$400(Lcn/kuwo/ui/fragment/MvFragment;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->hideTip()V

    return-void
.end method

.method static synthetic access$600(Lcn/kuwo/ui/fragment/MvFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/ui/fragment/MvFragment;->showTip(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->playNext()V

    return-void
.end method

.method static synthetic access$800(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    return-object v0
.end method

.method static synthetic access$900(Lcn/kuwo/ui/fragment/MvFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isChangeQuality:Z

    return v0
.end method

.method static synthetic access$902(Lcn/kuwo/ui/fragment/MvFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/ui/fragment/MvFragment;->isChangeQuality:Z

    return p1
.end method

.method private changeQuality(Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentpos:I

    iput-boolean v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->isChangeQuality:Z

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p0, v0, p1, v1}, Lcn/kuwo/ui/fragment/MvFragment;->loadMv(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;Z)V

    :cond_0
    return-void
.end method

.method private getCurrentMusicDownloadTask()Lcn/kuwo/base/bean/DownloadTask;
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/DownloadTask;

    iget-object v3, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v6, v3, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    iget-wide v8, v3, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    sget-object v3, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$service$DownloadProxy$Quality:[I

    iget-object v5, v0, Lcn/kuwo/base/bean/DownloadTask;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v5}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    move-object v3, v2

    :goto_1
    iget-object v5, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    if-ne v5, v3, :cond_1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    goto :goto_1

    :pswitch_1
    sget-object v3, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hidePlaylist()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layoutPlaylist:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideQualitySelectLayout()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isQualitySelectShow:Z

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layoutQualitySelect:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private hideTip()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layouTip:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isCurrentMusicDownloaded()Z
    .locals 3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {v2}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->b(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isLoadedMusic(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;)Z
    .locals 4

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlaylistShow()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->layoutPlaylist:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->layoutPlaylist:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onGainAudioFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->pauseByPhoneCall:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MvFragment;->setNoRecoverPause()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/KwCarPlay;->isReceiverPause()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->videoStart()V

    :cond_0
    return-void
.end method

.method public static playMV(Ljava/util/List;I)V
    .locals 4

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    sget-object v1, Lcn/kuwo/ui/fragment/MvFragment;->TAG:Ljava/lang/String;

    const-class v2, Lcn/kuwo/ui/fragment/MvFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/fragment/MvFragment;

    iput-object p0, v0, Lcn/kuwo/ui/fragment/MvFragment;->muscis:Ljava/util/List;

    iput p1, v0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    return-void
.end method

.method private playNext()V
    .locals 3

    iget v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    iget v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->muscis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->muscis:Ljava/util/List;

    iget v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcn/kuwo/ui/fragment/MvFragment;->loadMv(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;Z)V

    return-void
.end method

.method private playPre()V
    .locals 3

    iget v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->muscis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    iget v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->muscis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->muscis:Ljava/util/List;

    iget v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcn/kuwo/ui/fragment/MvFragment;->loadMv(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;Z)V

    return-void
.end method

.method private refreshView()V
    .locals 11

    const v4, 0xea60

    const/4 v10, 0x2

    const v9, 0x7f02000c

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentpos:I

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivPlayPuase:Landroid/widget/ImageView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v2

    mul-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    div-int/lit16 v2, v1, 0x3e8

    rem-int/lit8 v2, v2, 0x3c

    div-int/2addr v1, v4

    div-int/lit16 v3, v0, 0x3e8

    rem-int/lit8 v3, v3, 0x3c

    div-int/2addr v0, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "%02d:%02d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvCurretnTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvTotalTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->mvPlaylistAdapter:Lcn/kuwo/ui/adapter/MVPlaylistAdapter;

    iget v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->setPos(I)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MvFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07001e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    sget-object v4, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvQuality:Landroid/widget/TextView;

    const-string v2, "\u6d41\u7545"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/Music;->b()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_0
    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_2
    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/Music;->c()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_2
    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->startShowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-direct {p0, v7}, Lcn/kuwo/ui/fragment/MvFragment;->showPlayController(Z)V

    :cond_4
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvQuality:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->isCurrentMusicDownloaded()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivDownloadState:Landroid/widget/ImageView;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    sget-object v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvQuality:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivPlayPuase:Landroid/widget/ImageView;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvQuality:Landroid/widget/TextView;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->getCurrentMusicDownloadTask()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivDownloadState:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_b
    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$download$DownloadState:[I

    invoke-virtual {v0}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivDownloadState:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :pswitch_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivDownloadState:Landroid/widget/ImageView;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivDownloadState:Landroid/widget/ImageView;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivDownloadState:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :pswitch_3
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivDownloadState:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private requestAudioFocus()V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showPlayController(Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->startShowTime:J

    :goto_0
    iput-boolean p1, p0, Lcn/kuwo/ui/fragment/MvFragment;->isPlayConttollerShow:Z

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->topTitleBar:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->topTitleBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->bottomControlBar:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->bottomControlBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->hidePlaylist()V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->hideQualitySelectLayout()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private showPlaylist()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layoutPlaylist:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showQualitySelectLayout()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isQualitySelectShow:Z

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layoutQualitySelect:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showTip(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    iput p2, p0, Lcn/kuwo/ui/fragment/MvFragment;->showType:I

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layouTip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->pbLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private videoStart()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->g()V

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method


# virtual methods
.method public initVideo()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcn/kuwo/ui/fragment/MvFragment$4;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MvFragment$4;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcn/kuwo/ui/fragment/MvFragment$5;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MvFragment$5;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcn/kuwo/ui/fragment/MvFragment$6;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MvFragment$6;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public loadMv(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;Z)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcn/kuwo/ui/fragment/MvFragment;->isLoadedMusic(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentMusic:Lcn/kuwo/base/bean/Music;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isFail:Z

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    invoke-interface {v0, p1}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoading(Lcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->b()Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    invoke-interface {v0, p1}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoadFail(Lcn/kuwo/base/bean/Music;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {v3}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->c(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v3

    sget-object v4, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {v4}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->c(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$playcontrol$MVAntistealing$Quality:[I

    invoke-virtual {p2}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-static {}, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a()Lcn/kuwo/mod/playcontrol/MVAntistealing;

    move-result-object v0

    new-instance v1, Lcn/kuwo/ui/fragment/MvFragment$7;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/ui/fragment/MvFragment$7;-><init>(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/base/bean/Music;)V

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v1, p2, v2, v3}, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a(Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;J)V

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    invoke-interface {v0, p1, v2}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoadSuccess(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_2

    if-eqz v3, :cond_4

    sget-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    invoke-interface {v0, p1, v3}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoadSuccess(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    sget-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {p0, p1, v0, p3}, Lcn/kuwo/ui/fragment/MvFragment;->loadMv(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    invoke-interface {v0, p1}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoadFail(Lcn/kuwo/base/bean/Music;)V

    goto :goto_1

    :pswitch_1
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    invoke-interface {v0, p1, v2}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoadSuccess(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    sget-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    invoke-interface {v0, p1, v3}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoadSuccess(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_7
    if-nez v0, :cond_2

    if-eqz v1, :cond_8

    sget-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->currentQuality:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    sget-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {p0, p1, v0, p3}, Lcn/kuwo/ui/fragment/MvFragment;->loadMv(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->onVideoLoadListener:Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    invoke-interface {v0, p1}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoadFail(Lcn/kuwo/base/bean/Music;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MvFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->audioManager:Landroid/media/AudioManager;

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcn/kuwo/kwmusiccar/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    new-instance v1, Lcn/kuwo/ui/fragment/MvFragment$KwPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/kuwo/ui/fragment/MvFragment$KwPhoneStateListener;-><init>(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/ui/fragment/MvFragment$1;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->isQualitySelectShow:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->hideQualitySelectLayout()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->isPlaylistShow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->hidePlaylist()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLostAudioFocus(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/KwCarPlay;->resetReceiverPause()V

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->pauseByFocusChange:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->pauseByPhoneCall:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onPause()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->timer:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isPaused:Z

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->abandonAudioFocus()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onResume()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->timer:Lcn/kuwo/base/util/KwTimer;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->isPaused:Z

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->videoStart()V

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->requestAudioFocus()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f0b003a

    const v5, 0x7f0b0004

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->rootView:Landroid/view/View;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->rootView:Landroid/view/View;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->topTitleBar:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->bottomControlBar:Landroid/view/View;

    const v0, 0x7f0b0017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layoutPlaylist:Landroid/view/View;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layoutPlaylist:Landroid/view/View;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MvFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    const/4 v2, 0x2

    invoke-direct {v1, v4, v2}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MvFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->mvPlaylistAdapter:Lcn/kuwo/ui/adapter/MVPlaylistAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->mvPlaylistAdapter:Lcn/kuwo/ui/adapter/MVPlaylistAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/MvFragment$2;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MvFragment$2;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->mvPlaylistAdapter:Lcn/kuwo/ui/adapter/MVPlaylistAdapter;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->muscis:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->setMusics(Ljava/util/List;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->mvPlaylistAdapter:Lcn/kuwo/ui/adapter/MVPlaylistAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0b000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0b0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->videoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0b0046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layouTip:Landroid/view/View;

    const v0, 0x7f0b0047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->pbLoading:Landroid/widget/ProgressBar;

    const v0, 0x7f0b0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvTip:Landroid/widget/TextView;

    const v0, 0x7f0b0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivPlayPuase:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivPlayPuase:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layoutQualitySelect:Landroid/view/View;

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvHighQuality:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvLowQuality:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->sbProgress:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->layouTip:Landroid/view/View;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvQuality:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvQuality:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivDownloadState:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->ivDownloadState:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->sbProgress:Landroid/widget/SeekBar;

    new-instance v1, Lcn/kuwo/ui/fragment/MvFragment$3;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MvFragment$3;-><init>(Lcn/kuwo/ui/fragment/MvFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0b003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvCurretnTime:Landroid/widget/TextView;

    const v0, 0x7f0b0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->tvTotalTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MvFragment;->initVideo()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->muscis:Ljava/util/List;

    iget v1, p0, Lcn/kuwo/ui/fragment/MvFragment;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {p0, v0, v1, v4}, Lcn/kuwo/ui/fragment/MvFragment;->loadMv(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;Z)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvFragment;->refreshView()V

    return-void
.end method

.method public setNoRecoverPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->pauseByFocusChange:Z

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/MvFragment;->pauseByPhoneCall:Z

    return-void
.end method
