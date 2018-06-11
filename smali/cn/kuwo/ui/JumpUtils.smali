.class public Lcn/kuwo/ui/JumpUtils;
.super Ljava/lang/Object;


# static fields
.field public static final FROM_NOW_PLAYING:Ljava/lang/String; = "from_now_playing"

.field public static final FROM_SOUND_EFFECT:Ljava/lang/String; = "from_sound_effect"

.field public static final ID_AUDIO_CONTENT:J = 0x48L

.field public static final ID_MUEIC_LIB:J = 0x46L

.field public static final ID_RADIO:J = 0x47L

.field public static final KEY_ALBUM:Ljava/lang/String; = "album"

.field public static final KEY_ARTIST:Ljava/lang/String; = "artist"

.field public static final KEY_AUTO_PLAY:Ljava/lang/String; = "key_auto_play"

.field public static final KEY_CLASSIFY:Ljava/lang/String; = "classify"

.field public static final KEY_DIGEST:Ljava/lang/String; = "key_digest"

.field public static final KEY_FROM:Ljava/lang/String; = "key_from"

.field public static final KEY_ID:Ljava/lang/String; = "key_id"

.field public static final KEY_INDEX:Ljava/lang/String; = "key_index"

.field public static final KEY_KEY:Ljava/lang/String; = "key_key"

.field public static final KEY_MUSIC_LIST:Ljava/lang/String; = "key_music_list"

.field public static final KEY_MUSIC_LIST_NAME:Ljava/lang/String; = "key_music_list_name"

.field public static final KEY_MUSIC_LIST_SHOW_NAME:Ljava/lang/String; = "key_music_list_show_name"

.field public static final KEY_MUSIC_LIST_TYPE:Ljava/lang/String; = "key_music_list_type"

.field public static final KEY_NAME:Ljava/lang/String; = "key_name"

.field public static final KEY_PAGE:Ljava/lang/String; = "key_page"

.field public static final KEY_PLAYLIST_COUNT:Ljava/lang/String; = "key_playlist_c ount"

.field public static final KEY_PLAY_COUNT:Ljava/lang/String; = "key_play_count"

.field public static final KEY_SONG_COUNT:Ljava/lang/String; = "key_song_count"

.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final PAGE_AUDIO_CONTENT:I = 0x3

.field public static final PAGE_DOWNLOAD_MANAGE:I = 0xa

.field public static final PAGE_LOCAL:I = 0x4

.field public static final PAGE_MINE:I = 0x5

.field public static final PAGE_MUSIC_LIB:I = 0x1

.field public static final PAGE_MV:I = 0x7

.field public static final PAGE_NOW_PLAYING:I = 0x6

.field public static final PAGE_RADIO:I = 0x2

.field public static final PAGE_SEARCH:I = 0x8

.field public static final PAGE_SEARCH_RESULT:I = 0x9

.field public static final PAGE_SKIN_PICKER:I = 0xc

.field public static final PAGE_SOUND_EFFECT:I = 0xb

.field public static final TAG_AUDIO_CONTENT:Ljava/lang/String; = "AudioConten"

.field public static final TAG_DOWNLOAD_MANAGE:Ljava/lang/String; = "DownloadManage"

.field public static final TAG_LOCAL:Ljava/lang/String; = "Local"

.field public static final TAG_LOCAL_DISK_LIST:Ljava/lang/String; = "LocalDiskList"

.field public static final TAG_LOCAL_MUSIC_LIST:Ljava/lang/String; = "LocalMusicList"

.field public static final TAG_MINE:Ljava/lang/String; = "Mine"

.field public static final TAG_MUSIC_LIB:Ljava/lang/String; = "MusicLib"

.field public static final TAG_MV:Ljava/lang/String; = "MV"

.field public static final TAG_NOW_PLAYING:Ljava/lang/String; = "NowPlaying"

.field public static final TAG_RADIO:Ljava/lang/String; = "Radio"

.field public static final TAG_SEARCH:Ljava/lang/String; = "Search"

.field public static final TAG_SEARCH_RESULT:Ljava/lang/String; = "SearchResult"

.field public static final TAG_SOUND_EFFECT:Ljava/lang/String; = "SoundEffect"

.field public static final TAG_VIOCE_SEARCH:Ljava/lang/String; = "VoiceSearch"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jump(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/kuwo/ui/JumpUtils;->jump(ILjava/lang/String;)V

    return-void
.end method

.method public static jump(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "key_page"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-wide/16 v2, 0x46

    const-string v1, "key_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "key_type"

    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->n:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "MusicLib"

    const-class v3, Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_2
    const-wide/16 v2, 0x47

    const-string v1, "key_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "key_type"

    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->n:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "Radio"

    const-class v3, Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_3
    const-wide/16 v2, 0x48

    const-string v1, "key_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "key_type"

    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->n:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "AudioConten"

    const-class v3, Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "Local"

    const-class v3, Lcn/kuwo/ui/fragment/LocalFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "Mine"

    const-class v3, Lcn/kuwo/ui/fragment/MineFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "NowPlaying"

    const-class v3, Lcn/kuwo/ui/fragment/NowPlayingFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "DownloadManage"

    const-class v3, Lcn/kuwo/ui/fragment/DownloadManageFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "SoundEffect"

    const-class v3, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto/16 :goto_0

    :pswitch_9
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "Skin"

    const-class v3, Lcn/kuwo/ui/fragment/SkinPickerFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static jump(Lcn/kuwo/base/bean/MusicList;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_music_list_show_name"

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v2
	
	const-string v3, "=====JumpUtils->jump(MusicList)  listshowname====="
	
	invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

	invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->toString()Ljava/lang/String;

    move-result-object v2
	
	const-string v3, "=====JumpUtils->jump(MusicList)  musiclist.toString()====="
	
	invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
	
	
    const-string v1, "key_music_list_name"

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v2

	const-string v3, "=====JumpUtils->jump(MusicList)  key_music_list_name====="
	
	invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
	
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_music_list_type"

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u672c\u5730\u97f3\u4e50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

	const-string v2, "LocalDiskList"
	
    const-class v3, Lcn/kuwo/ui/fragment/PathFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "LocalMusicList"

    const-class v3, Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0
.end method

.method public static jump(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getId()J

    move-result-wide v2

    const-string v0, "key_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "key_name"

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p0, Lcn/kuwo/base/bean/quku/SongListInfo;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcn/kuwo/base/bean/quku/SongListInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_digest"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_type"

    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->d:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "songlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-virtual {v0, v2, v3, v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p0, Lcn/kuwo/base/bean/quku/RadioInfo;

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lcn/kuwo/base/bean/quku/RadioInfo;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->e()I

    move-result v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/RadioInfo;->getCid()I

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u64ad\u653e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcn/kuwo/base/util/ToastUtil;->showNormal(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->a()Lcn/kuwo/mod/radio/IRadioMgr;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/RadioInfo;->getCid()I

    move-result v0

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v0, v2, v3}, Lcn/kuwo/mod/radio/IRadioMgr;->a(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u64ad\u653e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcn/kuwo/base/util/ToastUtil;->showNormal(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcn/kuwo/base/bean/quku/ArtistInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/ArtistInfo;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_digest"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_key"

    const-string v2, "artist"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_type"

    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->e:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "songlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-virtual {v0, v2, v3, v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcn/kuwo/base/bean/quku/AlbumInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_digest"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_key"

    const-string v2, "album"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_type"

    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->e:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "songlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-virtual {v0, v2, v3, v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lcn/kuwo/base/bean/quku/MvPlInfo;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lcn/kuwo/base/bean/quku/MvPlInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/MvPlInfo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_digest"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mvplaylist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/kuwo/ui/fragment/OnlineMVFragment;

    invoke-virtual {v0, v2, v3, v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6682\u65f6\u4e0d\u652f\u6301"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static jumpMV(Ljava/util/List;I)V
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcn/kuwo/ui/fragment/MvFragment;->playMV(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public static jumpToSearch()V
    .locals 4

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    const-string v1, "Search"

    const-class v2, Lcn/kuwo/ui/fragment/SearchFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    return-void
.end method

.method public static jumpToSearchResult(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcn/kuwo/ui/JumpUtils;->jumpToSearchResult(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static jumpToSearchResult(Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/kuwo/ui/JumpUtils;->jumpToSearchResult(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static jumpToSearchResult(Ljava/lang/String;ZIZ)V
    .locals 4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->e()Lcn/kuwo/mod/search/ISearchMgr;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/kuwo/mod/search/ISearchMgr;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/SearchLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/SearchLog$LogType;

    :goto_0
    invoke-static {v0, p0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/SearchLog$LogType;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_auto_play"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_play_count"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v1

    instance-of v1, v1, Lcn/kuwo/ui/fragment/SearchResultFragment;

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    :cond_0
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    const-string v2, "SearchResult"

    const-class v3, Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/SearchLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/SearchLog$LogType;

    goto :goto_0
.end method

.method public static jumpToSimilarSong(Lcn/kuwo/base/bean/Music;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u559c\u6b22\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\u7684\u4eba\u4e5f\u542c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_id"

    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "key_song_count"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_type"

    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->p:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v1

    instance-of v1, v1, Lcn/kuwo/ui/fragment/NowPlayingFragment;

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    :cond_0
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimilarSong]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/kuwo/ui/fragment/SimilarSongFragment;

    invoke-virtual {v1, v2, v3, v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    return-void
.end method

.method public static jumpToVioceSearchResult(Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/kuwo/ui/JumpUtils;->jumpToSearchResult(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static play(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getId()J

    move-result-wide v4

    const-string v1, ""

    const-string v1, ""

    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->d:Lcn/kuwo/mod/quku/OnlineType;

    const-string v2, "key_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "key_name"

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p0, Lcn/kuwo/base/bean/quku/SongListInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcn/kuwo/base/bean/quku/SongListInfo;

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/SongListInfo;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcn/kuwo/mod/quku/OnlineType;->d:Lcn/kuwo/mod/quku/OnlineType;

    :goto_0
    invoke-static {v4, v5, v2, v0}, Lcn/kuwo/mod/quku/OnlineExtra;->a(JLjava/lang/String;Lcn/kuwo/mod/quku/OnlineType;)Lcn/kuwo/mod/quku/OnlineExtra;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/quku/OnlineExtra;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/quku/OnlineUrlUtils;->a(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/kuwo/ui/JumpUtils$1;

    invoke-direct {v2, v0}, Lcn/kuwo/ui/JumpUtils$1;-><init>(Lcn/kuwo/mod/quku/OnlineExtra;)V

    invoke-static {v1, v0, v2}, Lcn/kuwo/mod/quku/OnlineTask;->get(Ljava/lang/String;Lcn/kuwo/mod/quku/OnlineExtra;Lcn/kuwo/mod/quku/OnRequestListener;)V

    :goto_1
    return-void

    :cond_0
    instance-of v0, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lcn/kuwo/base/bean/quku/ArtistInfo;

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/ArtistInfo;->b()Ljava/lang/String;

    move-result-object v2

    const-string v1, "artist"

    sget-object v0, Lcn/kuwo/mod/quku/OnlineType;->e:Lcn/kuwo/mod/quku/OnlineType;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;

    if-eqz v0, :cond_2

    check-cast p0, Lcn/kuwo/base/bean/quku/AlbumInfo;

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v2

    const-string v1, "album"

    sget-object v0, Lcn/kuwo/mod/quku/OnlineType;->e:Lcn/kuwo/mod/quku/OnlineType;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcn/kuwo/ui/JumpUtils;->jump(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto :goto_1
.end method
