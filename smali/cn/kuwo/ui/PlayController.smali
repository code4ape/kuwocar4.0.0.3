.class public Lcn/kuwo/ui/PlayController;
.super Ljava/lang/Object;


# static fields
.field private static final strtip:[Ljava/lang/String;


# instance fields
.field private _onClickListener:Landroid/view/View$OnClickListener;

.field private activity:Landroid/app/Activity;

.field private ivCover:Landroid/widget/ImageView;

.field private ivNext:Landroid/widget/ImageView;

.field private ivNowPlayingState:Landroid/widget/ImageView;

.field private ivPlayList:Landroid/widget/ImageView;

.field private ivPlayMode:Landroid/widget/ImageView;

.field private ivPlayPause:Landroid/widget/ImageView;

.field private ivPre:Landroid/widget/ImageView;

.field private lastMusic:Lcn/kuwo/base/bean/Music;

.field private layoutPlayController:Landroid/view/View;

.field private layoutPlayList:Landroid/view/View;

.field private lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

.field private musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

.field private playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

.field private rvPlayList:Landroid/support/v7/widget/RecyclerView;

.field private seekBar:Landroid/widget/SeekBar;

.field private skinManagerObserver:Lcn/kuwo/core/observers/ISkinManagerObserver;

.field private skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

.field private status:Lcn/kuwo/service/PlayProxy$Status;

.field private timer:Lcn/kuwo/base/util/KwTimer;

.field private tvArtist:Landroid/widget/TextView;

.field private tvDeleteAll:Landroid/widget/TextView;

.field private tvPlayListName:Landroid/widget/TextView;

.field private tvSongName:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5355\u66f2\u5faa\u73af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u987a\u5e8f\u64ad\u653e"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5faa\u73af\u64ad\u653e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u968f\u673a\u64ad\u653e"

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/ui/PlayController;->strtip:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcn/kuwo/ui/PlayController;->seekBar:Landroid/widget/SeekBar;

    iput-object v4, p0, Lcn/kuwo/ui/PlayController;->timer:Lcn/kuwo/base/util/KwTimer;

    iput-object v4, p0, Lcn/kuwo/ui/PlayController;->musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    iput-object v4, p0, Lcn/kuwo/ui/PlayController;->lastMusic:Lcn/kuwo/base/bean/Music;

    iput-object v4, p0, Lcn/kuwo/ui/PlayController;->status:Lcn/kuwo/service/PlayProxy$Status;

    new-instance v0, Lcn/kuwo/ui/PlayController$5;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/PlayController$5;-><init>(Lcn/kuwo/ui/PlayController;)V

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcn/kuwo/ui/PlayController$6;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/PlayController$6;-><init>(Lcn/kuwo/ui/PlayController;)V

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    new-instance v0, Lcn/kuwo/ui/PlayController$7;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/PlayController$7;-><init>(Lcn/kuwo/ui/PlayController;)V

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

    new-instance v0, Lcn/kuwo/ui/PlayController$8;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/PlayController$8;-><init>(Lcn/kuwo/ui/PlayController;)V

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->skinManagerObserver:Lcn/kuwo/core/observers/ISkinManagerObserver;

    iput-object p1, p0, Lcn/kuwo/ui/PlayController;->activity:Landroid/app/Activity;

    new-instance v0, Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-direct {v0, p1}, Lcn/kuwo/ui/PlayController$SkinViewHolder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    const v0, 0x7f0b0004

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->layoutPlayController:Landroid/view/View;

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->layoutPlayController:Landroid/view/View;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0018

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->tvPlayListName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v0, 0x7f0b000d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->ivNowPlayingState:Landroid/widget/ImageView;

    const v0, 0x7f0b000b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->ivCover:Landroid/widget/ImageView;

    const v0, 0x7f0b000e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPre:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPre:Landroid/widget/ImageView;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v2

    const v3, 0x7f02001d

    invoke-virtual {v2, v3}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0011

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f0b0012

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->ivNext:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivNext:Landroid/widget/ImageView;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v2

    const v3, 0x7f02000f

    invoke-virtual {v2, v3}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0013

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPlayMode:Landroid/widget/ImageView;

    const v0, 0x7f0b0015

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPlayList:Landroid/widget/ImageView;

    const v0, 0x7f0b000f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->tvSongName:Landroid/widget/TextView;

    const v0, 0x7f0b0010

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->tvArtist:Landroid/widget/TextView;

    const v0, 0x7f0b0008

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->tvTime:Landroid/widget/TextView;

    const v0, 0x7f0b0007

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->seekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->seekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v2

    const v3, 0x7f0200cf

    invoke-virtual {v2, v3}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->seekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v2

    const v3, 0x7f02003d

    invoke-virtual {v2, v3}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->seekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v2

    const v3, 0x7f0607d8

    invoke-virtual {v2, v3}, Lcn/kuwo/mod/skin/SkinMgr;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    const v0, 0x7f0b0019

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->tvDeleteAll:Landroid/widget/TextView;

    const v0, 0x7f0b0014

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0009

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06014e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->tvDeleteAll:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->tvDeleteAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcn/kuwo/ui/PlayController$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/PlayController$1;-><init>(Lcn/kuwo/ui/PlayController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0b0017

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->layoutPlayList:Landroid/view/View;

    const v0, 0x7f0b001a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->rvPlayList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->rvPlayList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->rvPlayList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    const/16 v2, 0xa

    invoke-direct {v1, v5, v2}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    invoke-direct {v0, p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    new-instance v1, Lcn/kuwo/ui/PlayController$2;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/PlayController$2;-><init>(Lcn/kuwo/ui/PlayController;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    new-instance v1, Lcn/kuwo/ui/PlayController$3;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/ui/PlayController$3;-><init>(Lcn/kuwo/ui/PlayController;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->setOnMusicDeleteListener(Lcn/kuwo/ui/adapter/NowPlayingAdapter$OnMusicDeleteListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->rvPlayList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivCover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPre:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPlayPause:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivNext:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPlayMode:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPlayList:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->layoutPlayList:Landroid/view/View;

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->l:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/PlayController;->skinManagerObserver:Lcn/kuwo/core/observers/ISkinManagerObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/PlayController;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/PlayController;->lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    new-instance v1, Lcn/kuwo/ui/PlayController$4;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/PlayController$4;-><init>(Lcn/kuwo/ui/PlayController;)V

    invoke-direct {v0, v1}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->timer:Lcn/kuwo/base/util/KwTimer;

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->timer:Lcn/kuwo/base/util/KwTimer;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    invoke-direct {p0}, Lcn/kuwo/ui/PlayController;->onUpdateSkin()V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/PlayController;)Lcn/kuwo/ui/adapter/NowPlayingAdapter;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/PlayController;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/PlayController;->update()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/ui/PlayController;->strtip:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/ui/PlayController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcn/kuwo/ui/PlayController;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/ui/PlayController;->setCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcn/kuwo/ui/PlayController;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/PlayController;->onUpdateSkin()V

    return-void
.end method

.method private onUpdateSkin()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$600(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$700(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f0200ee

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$800(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$900(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$1000(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$1100(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$1200(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$1300(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$1400(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$1400(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->skinViewHolder:Lcn/kuwo/ui/PlayController$SkinViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController$SkinViewHolder;->access$1400(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f0607d8

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    invoke-direct {p0}, Lcn/kuwo/ui/PlayController;->update()V

    :cond_0
    return-void
.end method

.method private setCover(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivCover:Landroid/widget/ImageView;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private update()V
    .locals 14

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->layoutPlayController:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->layoutPlayController:Landroid/view/View;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/kuwo/ui/fragment/NowPlayingFragment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivNowPlayingState:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v7

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v8

    const-string v4, "\u542c\u97f3\u4e50,\u7528\u9177\u6211"

    const-string v3, "\u9177\u6211\u97f3\u4e50"

    if-eqz v8, :cond_1

    if-nez v7, :cond_7

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/ui/PlayController;->hidePlaylist()V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivPlayList:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v5

    invoke-interface {v5}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v5

    sget-object v6, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v5, v6, :cond_3

    sget-object v6, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v5, v6, :cond_3

    sget-object v6, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v5, v6, :cond_3

    sget-object v6, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v5, v6, :cond_a

    :cond_3
    iget-object v5, p0, Lcn/kuwo/ui/PlayController;->ivPlayPause:Landroid/widget/ImageView;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v6

    const v9, 0x7f020017

    invoke-virtual {v6, v9}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v5

    invoke-interface {v5}, Lcn/kuwo/mod/playcontrol/IPlayControl;->f()I

    move-result v6

    const/4 v5, -0x1

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v9

    sget-object v10, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-ne v9, v10, :cond_4

    const/4 v6, 0x3

    :cond_4
    packed-switch v6, :pswitch_data_0

    :goto_3
    iget-object v6, p0, Lcn/kuwo/ui/PlayController;->ivPlayMode:Landroid/widget/ImageView;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v5

    sget-object v6, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-ne v5, v6, :cond_b

    :cond_5
    iget-object v5, p0, Lcn/kuwo/ui/PlayController;->ivPlayMode:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_4
    div-int/lit16 v5, v1, 0x3e8

    rem-int/lit8 v5, v5, 0x3c

    const v6, 0xea60

    div-int v6, v1, v6

    div-int/lit16 v8, v2, 0x3e8

    rem-int/lit8 v8, v8, 0x3c

    const v9, 0xea60

    div-int v9, v2, v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "%02d:%02d | %02d:%02d"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v13

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v6

    const/4 v5, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v5

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/kuwo/ui/PlayController;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Lcn/kuwo/ui/PlayController;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->tvSongName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->tvArtist:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/lyric/ILyricsMgr;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/ui/PlayController;->setCover(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcn/kuwo/ui/PlayController;->lastMusic:Lcn/kuwo/base/bean/Music;

    return-void

    :cond_6
    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->ivNowPlayingState:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    if-eqz v0, :cond_8

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->lastMusic:Lcn/kuwo/base/bean/Music;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->lastMusic:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v1, v7}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcn/kuwo/ui/PlayController;->status:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v0, :cond_9

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    invoke-virtual {v0, v8}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->update(Lcn/kuwo/base/bean/MusicList;)V

    :cond_8
    :goto_5
    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->tvPlayListName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getDuration()I

    move-result v2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->k()I

    move-result v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->l()I

    move-result v0

    if-eqz v7, :cond_2

    iget-object v4, v7, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v3, v7, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    iget-object v5, p0, Lcn/kuwo/ui/PlayController;->ivPlayList:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_9
    iput-object v0, p0, Lcn/kuwo/ui/PlayController;->status:Lcn/kuwo/service/PlayProxy$Status;

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->musiclistAdapter:Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    invoke-virtual {v0, v8}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->forceUpdate(Lcn/kuwo/base/bean/MusicList;)V

    goto :goto_5

    :cond_a
    iget-object v5, p0, Lcn/kuwo/ui/PlayController;->ivPlayPause:Landroid/widget/ImageView;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v6

    const v9, 0x7f02001e

    invoke-virtual {v6, v9}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :pswitch_0
    const v5, 0x7f020019

    goto/16 :goto_3

    :pswitch_1
    const v5, 0x7f02001a

    goto/16 :goto_3

    :pswitch_2
    const v5, 0x7f02001b

    goto/16 :goto_3

    :pswitch_3
    const v5, 0x7f02001c

    goto/16 :goto_3

    :cond_b
    iget-object v5, p0, Lcn/kuwo/ui/PlayController;->ivPlayMode:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public hidePlaylist()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->layoutPlayList:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isPlaylistShow()Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->layoutPlayList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackClick()Z
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/ui/PlayController;->isPlaylistShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/ui/PlayController;->hidePlaylist()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->l:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/PlayController;->skinManagerObserver:Lcn/kuwo/core/observers/ISkinManagerObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/PlayController;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/PlayController;->lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->timer:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    return-void
.end method

.method public showPlaylist()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->layoutPlayList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->c()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/PlayController;->rvPlayList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
