.class public final Lcn/kuwo/core/modulemgr/ModMgr;
.super Ljava/lang/Object;


# static fields
.field static a:Lcn/kuwo/mod/playcontrol/IPlayControl;

.field private static b:Ljava/util/LinkedList;

.field private static c:Lcn/kuwo/mod/radio/IRadioMgr;

.field private static d:Lcn/kuwo/mod/lyric/ILyricsMgr;

.field private static e:Lcn/kuwo/mod/search/ISearchMgr;

.field private static f:Lcn/kuwo/mod/download/IDownloadMgr;

.field private static g:Lcn/kuwo/mod/localmgr/ILocalMgr;

.field private static h:Lcn/kuwo/mod/notification/INotificationMgr;

.field private static i:Lcn/kuwo/mod/push/IPushMgr;

.field private static j:Lcn/kuwo/mod/userinfo/IUserInfoMgr;

.field private static k:Lcn/kuwo/mod/vip/IVipMgr;

.field private static l:Lcn/kuwo/mod/list/IListMgr;

.field private static m:Lcn/kuwo/mod/list/ICloudMgr;

.field private static n:Lcn/kuwo/mod/mvcache/IMVCacheMgr;

.field private static o:Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;

.field private static p:Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

.field private static q:Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

.field private static r:Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

.field private static s:Lcn/kuwo/mod/mobilead/IAdMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->b:Ljava/util/LinkedList;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->c:Lcn/kuwo/mod/radio/IRadioMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->d:Lcn/kuwo/mod/lyric/ILyricsMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->a:Lcn/kuwo/mod/playcontrol/IPlayControl;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->e:Lcn/kuwo/mod/search/ISearchMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->f:Lcn/kuwo/mod/download/IDownloadMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->g:Lcn/kuwo/mod/localmgr/ILocalMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->h:Lcn/kuwo/mod/notification/INotificationMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->i:Lcn/kuwo/mod/push/IPushMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->j:Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->k:Lcn/kuwo/mod/vip/IVipMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->l:Lcn/kuwo/mod/list/IListMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->m:Lcn/kuwo/mod/list/ICloudMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->n:Lcn/kuwo/mod/mvcache/IMVCacheMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->o:Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->p:Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->q:Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->r:Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    sput-object v1, Lcn/kuwo/core/modulemgr/ModMgr;->s:Lcn/kuwo/mod/mobilead/IAdMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/kuwo/mod/radio/IRadioMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->c:Lcn/kuwo/mod/radio/IRadioMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/radio/RadioMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/radio/RadioMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->c:Lcn/kuwo/mod/radio/IRadioMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->c:Lcn/kuwo/mod/radio/IRadioMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->c:Lcn/kuwo/mod/radio/IRadioMgr;

    return-object v0
.end method

.method private static a(Lcn/kuwo/core/modulemgr/IModuleBase;)V
    .locals 1

    invoke-interface {p0}, Lcn/kuwo/core/modulemgr/IModuleBase;->a()V

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/core/modulemgr/IModuleBase;

    :try_start_0
    invoke-interface {v0}, Lcn/kuwo/core/modulemgr/IModuleBase;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public static c()Lcn/kuwo/mod/lyric/ILyricsMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->d:Lcn/kuwo/mod/lyric/ILyricsMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->d:Lcn/kuwo/mod/lyric/ILyricsMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->d:Lcn/kuwo/mod/lyric/ILyricsMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->d:Lcn/kuwo/mod/lyric/ILyricsMgr;

    return-object v0
.end method

.method public static d()Lcn/kuwo/mod/playcontrol/IPlayControl;
    .locals 2

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->a:Lcn/kuwo/mod/playcontrol/IPlayControl;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->a:Lcn/kuwo/mod/playcontrol/IPlayControl;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->a:Lcn/kuwo/mod/playcontrol/IPlayControl;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    :try_start_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->a:Lcn/kuwo/mod/playcontrol/IPlayControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->a:Lcn/kuwo/mod/playcontrol/IPlayControl;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e()Lcn/kuwo/mod/search/ISearchMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->e:Lcn/kuwo/mod/search/ISearchMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/search/SearchMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/search/SearchMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->e:Lcn/kuwo/mod/search/ISearchMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->e:Lcn/kuwo/mod/search/ISearchMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->e:Lcn/kuwo/mod/search/ISearchMgr;

    return-object v0
.end method

.method public static f()Lcn/kuwo/mod/download/IDownloadMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->f:Lcn/kuwo/mod/download/IDownloadMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/download/DownloadMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->f:Lcn/kuwo/mod/download/IDownloadMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->f:Lcn/kuwo/mod/download/IDownloadMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->f:Lcn/kuwo/mod/download/IDownloadMgr;

    return-object v0
.end method

.method public static g()Lcn/kuwo/mod/localmgr/ILocalMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->g:Lcn/kuwo/mod/localmgr/ILocalMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->g:Lcn/kuwo/mod/localmgr/ILocalMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->g:Lcn/kuwo/mod/localmgr/ILocalMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->g:Lcn/kuwo/mod/localmgr/ILocalMgr;

    return-object v0
.end method

.method public static h()Lcn/kuwo/mod/notification/INotificationMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->h:Lcn/kuwo/mod/notification/INotificationMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/notification/NotificationMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/notification/NotificationMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->h:Lcn/kuwo/mod/notification/INotificationMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->h:Lcn/kuwo/mod/notification/INotificationMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->h:Lcn/kuwo/mod/notification/INotificationMgr;

    return-object v0
.end method

.method public static i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->j:Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->j:Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->j:Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->j:Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    return-object v0
.end method

.method public static j()Lcn/kuwo/mod/vip/IVipMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->k:Lcn/kuwo/mod/vip/IVipMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/vip/VipMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/vip/VipMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->k:Lcn/kuwo/mod/vip/IVipMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->k:Lcn/kuwo/mod/vip/IVipMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->k:Lcn/kuwo/mod/vip/IVipMgr;

    return-object v0
.end method

.method public static k()Lcn/kuwo/mod/list/IListMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->l:Lcn/kuwo/mod/list/IListMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->l:Lcn/kuwo/mod/list/IListMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->l:Lcn/kuwo/mod/list/IListMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->l:Lcn/kuwo/mod/list/IListMgr;

    return-object v0
.end method

.method public static l()Lcn/kuwo/mod/list/ICloudMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->m:Lcn/kuwo/mod/list/ICloudMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/list/CloudMgrImpl;->c()Lcn/kuwo/mod/list/CloudMgrImpl;

    move-result-object v0

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->m:Lcn/kuwo/mod/list/ICloudMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->m:Lcn/kuwo/mod/list/ICloudMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->m:Lcn/kuwo/mod/list/ICloudMgr;

    return-object v0
.end method

.method public static m()Lcn/kuwo/mod/mvcache/IMVCacheMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->n:Lcn/kuwo/mod/mvcache/IMVCacheMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->n:Lcn/kuwo/mod/mvcache/IMVCacheMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->n:Lcn/kuwo/mod/mvcache/IMVCacheMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->n:Lcn/kuwo/mod/mvcache/IMVCacheMgr;

    return-object v0
.end method

.method public static n()Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->o:Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->o:Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->o:Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->o:Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;

    return-object v0
.end method

.method public static o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->p:Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->p:Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->p:Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->p:Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    return-object v0
.end method

.method public static p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->q:Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->q:Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->q:Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->q:Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    return-object v0
.end method

.method public static q()Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->r:Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->r:Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->r:Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->r:Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    return-object v0
.end method

.method public static r()Lcn/kuwo/mod/mobilead/IAdMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->s:Lcn/kuwo/mod/mobilead/IAdMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/mobilead/AdMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/mobilead/AdMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->s:Lcn/kuwo/mod/mobilead/IAdMgr;

    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->s:Lcn/kuwo/mod/mobilead/IAdMgr;

    invoke-static {v0}, Lcn/kuwo/core/modulemgr/ModMgr;->a(Lcn/kuwo/core/modulemgr/IModuleBase;)V

    :cond_0
    sget-object v0, Lcn/kuwo/core/modulemgr/ModMgr;->s:Lcn/kuwo/mod/mobilead/IAdMgr;

    return-object v0
.end method
