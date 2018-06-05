.class public Lcn/kuwo/kwmusiccar/KwCarPlay;
.super Ljava/lang/Object;


# static fields
.field private static final AUDIOFOCUS:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.AUDIOFOCUS"

.field private static final AUTO_ENTER_BACKGROUND:Ljava/lang/String; = "auto_enter_background"

.field public static final AUTO_PLAY:Ljava/lang/String; = "auto_play"

.field private static final CLOSE_DESKLYRIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.CLOSE_DESKLYRIC"

.field private static final CLOSE_TOAST:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.CLOSE_TOAST"

.field private static final ENDTYPE:Ljava/lang/String; = "ENDTYPE"

.field public static final ENTER:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.ENTER"

.field public static final ENTER_BACKGROUND:Ljava/lang/String; = "enter_background"

.field public static final ENTER_BACKGROUND_OLD:Ljava/lang/String; = "exit_play_music"

.field public static final EXIT:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.EXIT"

.field private static final EXIT_KWMUSICAPP:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.EXITAPP"

.field public static final GAIN_AUDIO_FOCUS:I = 0x2

.field private static final HAS_MV:Ljava/lang/String; = "hasMv"

.field private static final KEY_FULL_SCREEN:Ljava/lang/String; = "key_full_screen"

.field private static final KUWO_SDK_VER:Ljava/lang/String; = "cn.kuwo.kwmusicauto.version"

.field public static final LOSS_AUDIO_FOCUS:I = 0x1

.field private static final MUSIC:Ljava/lang/String; = "music"

.field private static final MUSIC_ALBUM:Ljava/lang/String; = "album"

.field private static final MUSIC_ALL_LIST_KEY:Ljava/lang/String; = "music_all_list_key"

.field private static final MUSIC_ARTISTID:Ljava/lang/String; = "artistid"

.field private static final MUSIC_INDEX_KEY:Ljava/lang/String; = "music_index_key"

.field private static final MUSIC_NAME:Ljava/lang/String; = "name"

.field private static final MUSIC_RID:Ljava/lang/String; = "rid"

.field private static final MUSIC_SINGER:Ljava/lang/String; = "singer"

.field private static final MUSIC_SOURCE:Ljava/lang/String; = "source"

.field private static final MV_QUALITY:Ljava/lang/String; = "mvQuality"

.field private static final OPEN_DESKLYRIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.OPEN_DESKLYRIC"

.field private static final OPEN_TOAST:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.OPEN_TOAST"

.field private static final PLAYERMODE:Ljava/lang/String; = "PLAYERMODE"

.field private static final PLAYERSTATUS:Ljava/lang/String; = "PLAYERSTATUS"

.field private static final PLAYER_MODE:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAYER_MODE"

.field private static final PLAYER_STATUS:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

.field private static final PLAYMUSIC_ALBUM:Ljava/lang/String; = "play_music_album"

.field private static final PLAYMUSIC_ARTIST:Ljava/lang/String; = "play_music_artist"

.field private static final PLAYMUSIC_NAME:Ljava/lang/String; = "play_music_name"

.field public static final PLAY_ALBUM:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_ALBUM"

.field public static final PLAY_ALL_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_ALL_MUSIC"

.field private static final PLAY_CLIENT_AUDIO_FOCUS_STATE:Ljava/lang/String; = "play_client_audio_focus_state"

.field private static final PLAY_CLIENT_MUSICS:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_CLIENT_MUSICS"

.field private static final PLAY_CLIENT_MUSICS_SEARCH_JSON:Ljava/lang/String; = "play_client_musics_search_json"

.field private static final PLAY_CLIENT_MUSICS_SEARCH_STATE:Ljava/lang/String; = "play_client_musics_search_state"

.field private static final PLAY_CLIENT_PLAY_MV:Ljava/lang/String; = "play_client_play_mv"

.field private static final PLAY_END:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_END"

.field public static final PLAY_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_MUSIC"

.field public static final SEARCH_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

.field private static final SET_FULL_SCREEN:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.SET_FULL_SCREEN"

.field public static final START_KWMUSICAPP:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.STARTAPP"

.field private static final TAG:Ljava/lang/String; = "KwCarPlay"

.field private static volatile activityStatus:I

.field private static isAppExited:Z

.field private static isCarPlayScan:Z

.field private static isCarPlayScanFileRunning:Z

.field private static volatile isReceiverPause:Z

.field private static isRegister:Z

.field private static localMgrObserver:Lcn/kuwo/core/observers/ILocalMgrObserver;

.field private static final mCarPlayBroadcastReceiver:Lcn/kuwo/kwmusiccar/KwCarPlay$CarPlayBroadcastReceiver;

.field private static final mKwMediaReceiver:Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcn/kuwo/kwmusiccar/KwCarPlay;->isAppExited:Z

    sput-boolean v1, Lcn/kuwo/kwmusiccar/KwCarPlay;->isCarPlayScan:Z

    const/4 v0, -0x1

    sput v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->activityStatus:I

    new-instance v0, Lcn/kuwo/kwmusiccar/KwCarPlay$CarPlayBroadcastReceiver;

    invoke-direct {v0, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay$CarPlayBroadcastReceiver;-><init>(Lcn/kuwo/kwmusiccar/KwCarPlay$1;)V

    sput-object v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->mCarPlayBroadcastReceiver:Lcn/kuwo/kwmusiccar/KwCarPlay$CarPlayBroadcastReceiver;

    new-instance v0, Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;

    invoke-direct {v0, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;-><init>(Lcn/kuwo/kwmusiccar/KwCarPlay$1;)V

    sput-object v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->mKwMediaReceiver:Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;

    sput-boolean v1, Lcn/kuwo/kwmusiccar/KwCarPlay;->isReceiverPause:Z

    sput-boolean v1, Lcn/kuwo/kwmusiccar/KwCarPlay;->isCarPlayScanFileRunning:Z

    sput-boolean v1, Lcn/kuwo/kwmusiccar/KwCarPlay;->isRegister:Z

    new-instance v0, Lcn/kuwo/kwmusiccar/KwCarPlay$2;

    invoke-direct {v0}, Lcn/kuwo/kwmusiccar/KwCarPlay$2;-><init>()V

    sput-object v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->localMgrObserver:Lcn/kuwo/core/observers/ILocalMgrObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->searchOnline(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->findArtistMusic(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->findMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isReceiverPause:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isCarPlayScanFileRunning:Z

    return p0
.end method

.method private static closeMvFragment()V
    .locals 0

    return-void
.end method

.method private static findArtistMusic(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->g()Ljava/util/List;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    const/16 v4, 0x14

    if-ge v0, v4, :cond_2

    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->searchOnline(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Lcn/kuwo/base/bean/MusicList;I)V

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v4

    iget-object v4, v4, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3, v0}, Lcn/kuwo/base/util/PlayMusicHelper;->playMusiclist(Lcn/kuwo/base/bean/MusicList;I)V

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static findMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, p2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v4, v4, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v4

    invoke-interface {v4, p2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4, v0}, Lcn/kuwo/base/util/PlayMusicHelper;->playMusiclist(Lcn/kuwo/base/bean/MusicList;I)V

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v5, v4, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v4

    invoke-interface {v4, p2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4, v0}, Lcn/kuwo/base/util/PlayMusicHelper;->playMusiclist(Lcn/kuwo/base/bean/MusicList;I)V

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v5, v4, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v4, v4, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-interface {v1, p2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Lcn/kuwo/base/util/PlayMusicHelper;->playMusiclist(Lcn/kuwo/base/bean/MusicList;I)V

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static getMainActivityStatus()I
    .locals 1

    sget v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->activityStatus:I

    return v0
.end method

.method public static handleCarPlay(Landroid/content/Intent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "kuwo_key"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/kuwo/kwmusiccar/App;->hasRightKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sput-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isCarPlayScanFileRunning:Z

    const-string v4, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v2, "auto_play"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->h()Z

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/localmgr/ILocalMgr;->f()Lcn/kuwo/base/bean/MusicList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v2, v0}, Lcn/kuwo/base/util/PlayMusicHelper;->playMusiclist(Lcn/kuwo/base/bean/MusicList;I)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u5373\u5c06\u4e3a\u60a8\u64ad\u653e\u8f66\u8f7d\u97f3\u4e50\u7535\u53f0\uff01"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->a()Lcn/kuwo/mod/radio/IRadioMgr;

    move-result-object v0

    const/16 v2, -0x1771

    const-string v3, "\u9177\u6211\u70ed\u6b4c"

    const-string v4, ""

    invoke-interface {v0, v2, v3, v4}, Lcn/kuwo/mod/radio/IRadioMgr;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    sput-boolean v1, Lcn/kuwo/kwmusiccar/KwCarPlay;->isCarPlayScanFileRunning:Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->e()V

    goto :goto_1

    :cond_6
    const-string v4, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcn/kuwo/kwmusiccar/KwCarPlay;->closeMvFragment()V

    const-string v0, "name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "singer"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "album"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/kwmusiccar/MainActivity;->processUri(Landroid/net/Uri;)V

    :goto_2
    move v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-static {v0, v2, v4}, Lcn/kuwo/kwmusiccar/KwCarPlay;->searchMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v4, "cn.kuwo.kwmusicauto.action.PLAY_MUSIC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v3}, Lcn/kuwo/kwmusiccar/KwCarPlay;->playMusic(Landroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    const-string v4, "cn.kuwo.kwmusicauto.action.PLAY_ALL_MUSIC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v3}, Lcn/kuwo/kwmusiccar/KwCarPlay;->playMusicList(Landroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    const-string v3, "cn.kuwo.kwmusicauto.action.PLAY_ALBUM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->playAlbum(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "KwCarPlay"

    const-string v1, "unexpected null context in init"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isAppExited:Z

    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->registerKuwoMediaReceiver(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->registerCarPlayReceiver(Landroid/content/Context;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->q:Lcn/kuwo/core/messagemgr/MessageID;

    sget-object v2, Lcn/kuwo/kwmusiccar/KwCarPlay;->localMgrObserver:Lcn/kuwo/core/observers/ILocalMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    goto :goto_0
.end method

.method public static isCarPlayIntent(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "kuwo_key"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/kwmusiccar/App;->hasRightKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn.kuwo.kwmusicauto.action.PLAY_MUSIC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCarPlayScan()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isCarPlayScan:Z

    return v0
.end method

.method public static isCarPlayScanFileRunning()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isCarPlayScanFileRunning:Z

    return v0
.end method

.method public static isEnterBackground(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "cn.kuwo.kwmusicauto.action.PLAY_ALL_MUSIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->isOldSDk(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "exit_play_music"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string v1, "enter_background"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static isOldSDk(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "cn.kuwo.kwmusicauto.version"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReceiverPause()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isReceiverPause:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isReceiverPause:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isReceiverPause:Z

    goto :goto_0
.end method

.method public static isSearch(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static packMusic2Json(Lcn/kuwo/base/bean/Music;Lorg/json/JSONArray;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "rid"

    iget-wide v4, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "name"

    iget-object v3, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "singer"

    iget-object v3, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "album"

    iget-object v3, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "artistid"

    iget-wide v4, p0, Lcn/kuwo/base/bean/Music;->d:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "mvQuality"

    iget-object v3, p0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "hasMv"

    iget-boolean v3, p0, Lcn/kuwo/base/bean/Music;->h:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static playAlbum(Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    const-string v1, "qukuItemType"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    if-eqz v2, :cond_2

    const-string v1, "id"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->setName(Ljava/lang/String;)V

    const-string v1, "description"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->j(Ljava/lang/String;)V

    const-string v1, "imageUrl"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->setImageUrl(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/kuwo/ui/JumpUtils;->play(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto :goto_0

    :sswitch_0
    const-string v5, "Songlist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "radio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "album"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_0
    new-instance v2, Lcn/kuwo/base/bean/quku/SongListInfo;

    invoke-direct {v2}, Lcn/kuwo/base/bean/quku/SongListInfo;-><init>()V

    move-object v1, v2

    check-cast v1, Lcn/kuwo/base/bean/quku/SongListInfo;

    const-string v4, "digest"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/kuwo/base/bean/quku/SongListInfo;->d(Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcn/kuwo/base/bean/quku/SongListInfo;

    const-string v4, "descript"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/kuwo/base/bean/quku/SongListInfo;->b(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    new-instance v2, Lcn/kuwo/base/bean/quku/RadioInfo;

    invoke-direct {v2}, Lcn/kuwo/base/bean/quku/RadioInfo;-><init>()V

    const-string v1, "cid"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    move-object v0, v2

    check-cast v0, Lcn/kuwo/base/bean/quku/RadioInfo;

    move-object v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcn/kuwo/base/bean/quku/RadioInfo;->setCid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v1, v2

    check-cast v1, Lcn/kuwo/base/bean/quku/RadioInfo;

    const-string v4, "digest"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/kuwo/base/bean/quku/RadioInfo;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :pswitch_2
    new-instance v2, Lcn/kuwo/base/bean/quku/AlbumInfo;

    invoke-direct {v2}, Lcn/kuwo/base/bean/quku/AlbumInfo;-><init>()V

    move-object v1, v2

    check-cast v1, Lcn/kuwo/base/bean/quku/AlbumInfo;

    const-string v4, "digest"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/kuwo/base/bean/quku/AlbumInfo;->d(Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcn/kuwo/base/bean/quku/AlbumInfo;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/kuwo/base/bean/quku/AlbumInfo;->setArtist(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    new-instance v2, Lcn/kuwo/base/bean/quku/BaseQukuItemList;

    invoke-direct {v2}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;-><init>()V

    move-object v1, v2

    check-cast v1, Lcn/kuwo/base/bean/quku/BaseQukuItemList;

    const-string v4, "digest"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "\u6b4c\u5355\u4f20\u5165\u9519\u8bef"

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32b09e -> :sswitch_3
        0x5897e6f -> :sswitch_2
        0x67413fb -> :sswitch_1
        0x5f687753 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static playMusic(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcn/kuwo/kwmusiccar/KwCarPlay;->closeMvFragment()V

    new-instance v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music;-><init>()V

    const-string v1, "rid"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->a:J

    const-string v1, "name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    const-string v1, "singer"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    const-string v1, "album"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    const-string v1, "artistid"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->d:J

    const-string v1, "mvQuality"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    const-string v1, "hasMv"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcn/kuwo/base/bean/Music;->h:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcn/kuwo/base/util/PlayMusicHelper;->play(Ljava/util/List;I)V

    return-void
.end method

.method public static playMusicList(Landroid/os/Bundle;)V
    .locals 10

    const/4 v1, 0x0

    invoke-static {}, Lcn/kuwo/kwmusiccar/KwCarPlay;->closeMvFragment()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "music_all_list_key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "music_index_key"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v3, v1

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v6, Lcn/kuwo/base/bean/Music;

    invoke-direct {v6}, Lcn/kuwo/base/bean/Music;-><init>()V

    const-string v7, "rid"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcn/kuwo/base/bean/Music;->a:J

    const-string v7, "name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    const-string v7, "singer"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    const-string v7, "album"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    const-string v7, "artistid"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcn/kuwo/base/bean/Music;->d:J

    const-string v7, "mvQuality"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    const-string v7, "hasMv"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/kuwo/base/bean/Music;->h:Z

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    if-gez v2, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-static {v4, v0}, Lcn/kuwo/base/util/PlayMusicHelper;->play(Ljava/util/List;I)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private static registerCarPlayReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "cn.kuwo.kwmusicauto.action.EXITAPP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "cn.kuwo.kwmusicauto.action.CLOSE_DESKLYRIC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "cn.kuwo.kwmusicauto.action.OPEN_DESKLYRIC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "cn.kuwo.kwmusicauto.action.CLOSE_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "cn.kuwo.kwmusicauto.action.OPEN_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "cn.kuwo.kwmusicauto.action.SET_FULL_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/kwmusiccar/KwCarPlay;->mCarPlayBroadcastReceiver:Lcn/kuwo/kwmusiccar/KwCarPlay$CarPlayBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static registerKuwoMediaReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/kwmusiccar/KwCarPlay;->mKwMediaReceiver:Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static release(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "KwCarPlay"

    const-string v1, "unexpected null context in release"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->unRegisterCarPlayReceiver(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->unKuwoMediaReceiver(Landroid/content/Context;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->q:Lcn/kuwo/core/messagemgr/MessageID;

    sget-object v2, Lcn/kuwo/kwmusiccar/KwCarPlay;->localMgrObserver:Lcn/kuwo/core/observers/ILocalMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    goto :goto_0
.end method

.method public static resetReceiverPause()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isReceiverPause:Z

    return-void
.end method

.method private static searchMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/kwmusiccar/KwCarPlay$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/kuwo/kwmusiccar/KwCarPlay$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method private static searchOnline(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcn/kuwo/ui/JumpUtils;->jumpToVioceSearchResult(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static sendAudioFocusToClientBroadcast(Landroid/content/Context;IZ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.AUDIOFOCUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "play_client_audio_focus_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "play_client_play_mv"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendEnterBroadcast(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.ENTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendExitBroadcast(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isAppExited:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendMediaUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendMusicsToClientBroadcast(Landroid/content/Context;ILorg/json/JSONArray;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_CLIENT_MUSICS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "play_client_musics_search_json"

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v1, "play_client_musics_search_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, -0x2

    goto :goto_0
.end method

.method public static sendPlayEndBroadcast(Landroid/content/Context;I)V
    .locals 2

    sget-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isAppExited:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ENDTYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendPlayerModeBroadcast(Landroid/content/Context;I)V
    .locals 2

    sget-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isAppExited:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAYER_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "PLAYERMODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendPlayerStatusBroadcast(Landroid/content/Context;ILcn/kuwo/base/bean/Music;)V
    .locals 3

    sget-boolean v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->isAppExited:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "PLAYERSTATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string v1, "play_music_name"

    iget-object v2, p2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "play_music_artist"

    iget-object v2, p2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "play_music_album"

    iget-object v2, p2, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcn/kuwo/base/util/MediaButtonRegister;->getInstance()Lcn/kuwo/base/util/MediaButtonRegister;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/kuwo/base/util/MediaButtonRegister;->registerMediaButtonEventReveiver(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setMainActivityStatus(I)V
    .locals 0

    sput p0, Lcn/kuwo/kwmusiccar/KwCarPlay;->activityStatus:I

    return-void
.end method

.method public static startActivityPlayMuisics(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_ALL_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static unKuwoMediaReceiver(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->mKwMediaReceiver:Lcn/kuwo/kwmusiccar/KwCarPlay$KwMediaReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static unRegisterCarPlayReceiver(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcn/kuwo/kwmusiccar/KwCarPlay;->mCarPlayBroadcastReceiver:Lcn/kuwo/kwmusiccar/KwCarPlay$CarPlayBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
