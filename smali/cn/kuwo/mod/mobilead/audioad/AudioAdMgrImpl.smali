.class public Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;


# static fields
.field private static a:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;


# instance fields
.field private b:Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;

.field private c:Z

.field private d:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/lang/String;

.field private g:Landroid/app/Dialog;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Lcn/kuwo/core/observers/ext/PlayControlObserver;

.field private l:Lcn/kuwo/core/observers/IListObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;-><init>()V

    sput-object v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->e:Ljava/util/HashMap;

    new-instance v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;-><init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->k:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    new-instance v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$2;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$2;-><init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->l:Lcn/kuwo/core/observers/IListObserver;

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->j:I

    return p1
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    const/16 v6, 0x32

    const-string v0, "AudioAdMgrImpl"

    const-string v1, "queryAuId"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->h:Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "\u7535\u53f0"

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AudioAdMgrImpl"

    const-string v1, "LIST_NAME_RADIO"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->h:Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v3

    iget v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->j:I

    add-int/lit8 v4, v3, -0x1

    if-gt v0, v4, :cond_3

    if-eqz p1, :cond_5

    iget v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->j:I

    :goto_2
    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v4

    iget-wide v4, v4, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->j:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_4

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-direct {p0, v2}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/UrlManagerUtils;->getAudioADRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAdMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v2, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;

    invoke-direct {v2, v0, p1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1, v2}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->j:I

    :goto_3
    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v4

    iget-object v5, v4, Lcn/kuwo/base/bean/Music;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-wide v4, v4, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->j:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const-string v0, "AudioAdMgrImpl"

    const-string v1, "rids.size()==0"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private a(I)Z
    .locals 12

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->r()Lcn/kuwo/mod/mobilead/IAdMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/mobilead/IAdMgr;->c()Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->c:Z

    if-eqz v3, :cond_3

    const-string v3, ""

    const-string v4, "audioad_heard_time"

    invoke-static {v3, v4, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->b()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    const-string v5, "\u827e\u8fe6\u53f7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lenth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "startPlayTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-le v3, v4, :cond_4

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->c:Z

    :cond_3
    const-string v3, ""

    const-string v4, "audioad_last_pop_date"

    const-string v5, "0000-00-00"

    invoke-static {v3, v4, v5}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v4}, Lcn/kuwo/base/util/KwDate;-><init>()V

    const-string v5, "AudioAdMgrImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastDate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "kwDate.today():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcn/kuwo/base/util/KwDate;->today()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcn/kuwo/base/util/KwDate;->today()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    const-string v4, "audioad_day_times"

    invoke-static {v3, v4, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->c()I

    move-result v4

    const-string v5, "AudioAdMgrImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "times:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "poptimes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v3, v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, ""

    const-string v6, "audioad_last_pop_time"

    invoke-static {v3, v6, v8, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2}, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->a()I

    move-result v2

    const-string v3, "AudioAdMgrImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nowTime-lasttime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v4, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "midTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v4, v6

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_4
    add-int v2, v3, p1

    const-string v3, ""

    const-string v5, "audioad_heard_time"

    invoke-static {v3, v5, v2, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    if-lt v2, v4, :cond_0

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->c:Z

    move v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v2, ""

    const-string v3, "audioad_day_times"

    invoke-static {v2, v3, v0, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    const-string v2, ""

    const-string v3, "audioad_last_pop_time"

    invoke-static {v2, v3, v8, v9, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    goto :goto_1
.end method

.method static synthetic a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->h:Z

    return v0
.end method

.method private b(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcn/kuwo/ui/fragment/NowPlayingFragment;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->r()Lcn/kuwo/mod/mobilead/IAdMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->a:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    invoke-virtual {p1}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/mobilead/IAdMgr;->a(Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->a(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->g:Landroid/app/Dialog;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->r()Lcn/kuwo/mod/mobilead/IAdMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->a:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    invoke-virtual {p1}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/mobilead/IAdMgr;->a(Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->b(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)V

    goto :goto_0
.end method

.method static synthetic b(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->i:Z

    return v0
.end method

.method static synthetic b(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->i:Z

    return p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;-><init>()V

    :cond_1
    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->f:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->d:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->d:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;

    invoke-virtual {v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a()V

    :cond_2
    const/4 v1, -0x1

    :try_start_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    new-instance v2, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;

    invoke-direct {v2}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;-><init>()V

    invoke-virtual {v2, p1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;I)V

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-static {v0, v2}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private e()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v0}, Lcn/kuwo/base/util/KwDate;-><init>()V

    const-string v1, ""

    const-string v2, "audioad_last_pop_date"

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwDate;->today()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "audioad_day_times"

    invoke-static {v0, v1, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, ""

    const-string v2, "audioad_day_times"

    invoke-static {v1, v2, v0, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, ""

    const-string v3, "audioad_last_pop_time"

    invoke-static {v2, v3, v0, v1, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;

    invoke-direct {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->k:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->l:Lcn/kuwo/core/observers/IListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public a(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;Ljava/util/HashMap;Z)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iput-boolean v6, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->h:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "AudioAdMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "\u7535\u53f0"

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-boolean v6, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->h:Z

    iget v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->j:I

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    const-string v0, "AudioAdMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCount "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "list.size()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-wide v4, v0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-wide v4, v0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->m:Ljava/lang/String;

    iget-wide v4, v0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->n:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iput-boolean v6, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->h:Z

    goto/16 :goto_0
.end method

.method public a(ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "\u827e\u8fe6\u53f7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  adId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;

    invoke-virtual {v3, v2}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->b(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)V

    invoke-direct {p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->e()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;

    invoke-virtual {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->d()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->k:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->l:Lcn/kuwo/core/observers/IListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AudioAdMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdFaild "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->h:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;

    invoke-virtual {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMediaPlayer;->b()Z

    move-result v0

    return v0
.end method
