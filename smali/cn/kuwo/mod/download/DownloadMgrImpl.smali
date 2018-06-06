.class public Lcn/kuwo/mod/download/DownloadMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/download/IDownloadMgr;
.implements Lcn/kuwo/service/DownloadDelegate;


# static fields
.field private static e:Lcn/kuwo/base/bean/DownloadTask;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcn/kuwo/base/bean/MusicList;

.field private c:Lcn/kuwo/base/bean/MusicList;

.field private d:I

.field private f:Z

.field private g:Lcn/kuwo/core/observers/ext/AppObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    iput v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->d:I

    iput-boolean v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->f:Z

    new-instance v0, Lcn/kuwo/mod/download/DownloadMgrImpl$2;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/download/DownloadMgrImpl$2;-><init>(Lcn/kuwo/mod/download/DownloadMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->g:Lcn/kuwo/core/observers/ext/AppObserver;

    return-void
.end method

.method private a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Lcn/kuwo/base/bean/DownloadTask;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/download/DownloadState;->a:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, p1, p2, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/mod/download/DownloadState;)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/mod/download/DownloadState;)Lcn/kuwo/base/bean/DownloadTask;
    .locals 6

    new-instance v0, Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {v0}, Lcn/kuwo/base/bean/DownloadTask;-><init>()V

    iput-object p1, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iput-object p2, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object p3, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    const/4 v1, 0x0

    iput v1, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    iput-object p2, v0, Lcn/kuwo/base/bean/DownloadTask;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->t:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->u:J

    long-to-float v1, v2

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->t:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    :cond_0
    return-object v0
.end method

.method private a(J)Lcn/kuwo/base/bean/Music;
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    const-string v0, "download"

    const-string v1, "download_add_count"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->f:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/download/DownloadMgrImpl$1;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/download/DownloadMgrImpl$1;-><init>(Lcn/kuwo/mod/download/DownloadMgrImpl;I)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method private b(J)Lcn/kuwo/base/bean/DownloadTask;
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final c(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 2

    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/download/DownloadMgrImpl;->e(Lcn/kuwo/base/bean/DownloadTask;)V

    sget-object v0, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    iput-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, p1}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f(Lcn/kuwo/base/bean/DownloadTask;)V

    :cond_0
    return-void
.end method

.method private d(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 6

    const-string v0, "DownloadMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5411\u7f13\u5b58\u6a21\u5757\u53d1\u6d88\u606f\u5f00\u59cb\u4e0b\u8f7d,\u5f53\u524d\u6b4c\u66f2\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    iget-object v3, p1, Lcn/kuwo/base/bean/DownloadTask;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    iput v0, p1, Lcn/kuwo/base/bean/DownloadTask;->a:I

    sput-object p1, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/lyric/ILyricsMgr;->a(Lcn/kuwo/base/bean/Music;)V

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-object v2, v0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v3, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, v0, v2, v3}, Lcn/kuwo/mod/download/DownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/mod/download/DownloadState;)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 3

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    if-eqz v0, :cond_0

    iget v0, p1, Lcn/kuwo/base/bean/DownloadTask;->a:I

    sget-object v1, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget v1, v1, Lcn/kuwo/base/bean/DownloadTask;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    if-ne v0, v1, :cond_0

    const-string v0, "DownloadMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5411\u7f13\u5b58\u6a21\u5757\u53d1\u6d88\u606f\u505c\u6b62\u7f13\u5b58,\u5f53\u524d\u6b4c\u66f2\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    iget v1, p1, Lcn/kuwo/base/bean/DownloadTask;->a:I

    invoke-virtual {v0, v1}, Lcn/kuwo/service/DownloadProxy;->a(I)V

    iget v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->d:I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/mod/notification/INotificationMgr;->b(Lcn/kuwo/base/bean/DownloadTask;)V

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6

    const/4 v2, 0x1

    const-string v0, "DownloadMgrImpl"

    const-string v1, "\u5f00\u59cb\u4e0b\u4e00\u4e2a\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->d:I

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/DownloadTask;

    iget-object v4, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v5, Lcn/kuwo/mod/download/DownloadState;->a:Lcn/kuwo/mod/download/DownloadState;

    if-ne v4, v5, :cond_2

    if-eqz v1, :cond_3

    sget-object v4, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    iput-object v4, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f(Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->j()Lcn/kuwo/mod/vip/IVipMgr;

    move-result-object v1

    iget-object v4, v0, Lcn/kuwo/base/bean/DownloadTask;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-interface {v1, v4}, Lcn/kuwo/mod/vip/IVipMgr;->a(Lcn/kuwo/service/DownloadProxy$Quality;)I

    move-result v1

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->f:Z

    if-nez v1, :cond_4

    iput-boolean v2, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->f:Z

    :cond_4
    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f(Lcn/kuwo/base/bean/DownloadTask;)V

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->d(Lcn/kuwo/base/bean/DownloadTask;)V

    iget v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->d:I

    goto :goto_0
.end method

.method private f(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->f:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/download/DownloadMgrImpl$3;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/download/DownloadMgrImpl$3;-><init>(Lcn/kuwo/mod/download/DownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/mod/notification/INotificationMgr;->b(Lcn/kuwo/base/bean/DownloadTask;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/mod/notification/INotificationMgr;->c(Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_0
.end method

.method private g(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->f:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/download/DownloadMgrImpl$4;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/download/DownloadMgrImpl$4;-><init>(Lcn/kuwo/mod/download/DownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/mod/notification/INotificationMgr;->a(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method


# virtual methods
.method public final DownloadDelegate_Finish(ILcn/kuwo/service/DownloadDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget v0, v0, Lcn/kuwo/base/bean/DownloadTask;->a:I

    if-ne v0, p1, :cond_1

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    if-ne p2, v0, :cond_3

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->t:J

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->u:J

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->e:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "download.unfinish"

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->b(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->u:J

    iput-wide v2, v1, Lcn/kuwo/base/bean/Music;->u:J

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/base/bean/Music$LocalFileState;->b:Lcn/kuwo/base/bean/Music$LocalFileState;

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->q:Lcn/kuwo/base/bean/Music$LocalFileState;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    :cond_0
    iget-object v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->u:J

    iput-wide v2, v1, Lcn/kuwo/base/bean/Music;->u:J

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/base/bean/Music$LocalFileState;->b:Lcn/kuwo/base/bean/Music$LocalFileState;

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->q:Lcn/kuwo/base/bean/Music$LocalFileState;

    const-string v2, "download.finish"

    invoke-interface {v0, v2, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    :goto_0
    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    sget-object v1, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->d:I

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f(Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-direct {p0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f()V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    sget-object v2, Lcn/kuwo/base/bean/Music$LocalFileState;->b:Lcn/kuwo/base/bean/Music$LocalFileState;

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->q:Lcn/kuwo/base/bean/Music$LocalFileState;

    const-string v1, "download.finish"

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;I)I

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f(Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_1
.end method

.method public final DownloadDelegate_Progress(IIIF)V
    .locals 4

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget v0, v0, Lcn/kuwo/base/bean/DownloadTask;->a:I

    if-ne v0, p1, :cond_1

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    int-to-long v2, p3

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->u:J

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iput p4, v0, Lcn/kuwo/base/bean/DownloadTask;->d:F

    if-eqz p2, :cond_0

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    int-to-float v1, p3

    int-to-float v2, p2

    div-float/2addr v1, v2

    iput v1, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    sget-object v1, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->a(Lcn/kuwo/base/bean/Music;)V

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->g(Lcn/kuwo/base/bean/DownloadTask;)V

    :cond_1
    return-void
.end method

.method public final DownloadDelegate_Start(ILjava/lang/String;Ljava/lang/String;IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V
    .locals 4

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget v0, v0, Lcn/kuwo/base/bean/DownloadTask;->a:I

    if-ne v0, p1, :cond_0

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    int-to-long v2, p4

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->t:J

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-static {p6}, Lcn/kuwo/service/DownloadProxy$Quality;->a(I)Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    sget-object v1, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->a(Lcn/kuwo/base/bean/Music;)V

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f(Lcn/kuwo/base/bean/DownloadTask;)V

    :cond_0
    return-void
.end method

.method public final a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;Z)I
    .locals 11

    const/4 v10, 0x1

    const/4 v0, -0x1

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, -0x3

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object v2, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    invoke-virtual {p2}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v2

    iget-object v3, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v3}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_1

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    if-eqz v0, :cond_5

    sget-object v0, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v0, Lcn/kuwo/base/bean/Music;->a:J

    iget-wide v4, p1, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget v2, v2, Lcn/kuwo/base/bean/DownloadTask;->a:I

    invoke-virtual {v0, v2}, Lcn/kuwo/service/DownloadProxy;->a(I)V

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    sget-object v2, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v2}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;)V

    iput-object p2, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-wide v8, v1, Lcn/kuwo/base/bean/Music;->u:J

    const-string v0, ""

    iput-object v0, v1, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    iput-wide v8, v1, Lcn/kuwo/base/bean/Music;->t:J

    sget-object v7, Lcn/kuwo/mod/download/DownloadMgrImpl;->e:Lcn/kuwo/base/bean/DownloadTask;

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

	const-string v2, "==DownloadMgrImpl======"
	
	invoke-static {v2, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	invoke-virtual {v3},Lcn/kuwo/service/DownloadProxy$Quality;->toString()Ljava/lang/String;
	
	move-result-object v2
	
	invoke-static {v2, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    iput v0, v7, Lcn/kuwo/base/bean/DownloadTask;->a:I

    :cond_3
    :goto_1
    const-string v0, "DownloadMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66ff\u6362\u65f6music obj id is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/kuwo/base/bean/Music;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

	invoke-static {v2, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-wide v8, v1, Lcn/kuwo/base/bean/Music;->u:J

    const-string v0, ""

    iput-object v0, v1, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    iput-wide v8, v1, Lcn/kuwo/base/bean/Music;->t:J

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-direct {p0, v2, v3}, Lcn/kuwo/mod/download/DownloadMgrImpl;->b(J)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v3, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    if-eq v2, v3, :cond_4

    sget-object v2, Lcn/kuwo/mod/download/DownloadState;->a:Lcn/kuwo/mod/download/DownloadState;

    iput-object v2, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    :cond_4
    const/4 v2, 0x0

    iput v2, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    iput-object p2, v0, Lcn/kuwo/base/bean/DownloadTask;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->a(Lcn/kuwo/base/bean/Music;)V

    invoke-direct {p0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f()V

    invoke-direct {p0, v10}, Lcn/kuwo/mod/download/DownloadMgrImpl;->a(I)V

    move v0, v6

    goto/16 :goto_0

    :cond_5
    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->u:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_3

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;)V

    goto :goto_1

    :cond_6
    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/download/DownloadMgrImpl;->a(J)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v1, v0, v2}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v1}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v1

    invoke-virtual {p2}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_7

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_7
    iput-wide v8, v0, Lcn/kuwo/base/bean/Music;->u:J

    :cond_8
    if-eqz p3, :cond_9

    iput-boolean v6, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->f:Z

    :cond_9
    invoke-direct {p0, p1, p2}, Lcn/kuwo/mod/download/DownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iput-object p2, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iput-wide v8, v0, Lcn/kuwo/base/bean/Music;->t:J

    invoke-direct {p0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f()V

    invoke-direct {p0, v10}, Lcn/kuwo/mod/download/DownloadMgrImpl;->a(I)V

    move v0, v6

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->g:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->f:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-direct {p0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->e()V

    return-void
.end method

.method public final a(Lcn/kuwo/base/bean/DownloadTask;Z)V
    .locals 2

    const-string v0, "DownloadMgrImpl"

    const-string v1, "\u4e0b\u8f7d\uff1astartTask"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->f:Z

    :cond_0
    sget-object v0, Lcn/kuwo/mod/download/DownloadState;->a:Lcn/kuwo/mod/download/DownloadState;

    iput-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, p1}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f(Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-direct {p0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f()V

    return-void
.end method

.method public final a(Lcn/kuwo/base/bean/DownloadTask;)Z
    .locals 3

    const-string v0, "DownloadMgrImpl"

    const-string v1, "\u4e0b\u8f7d\uff1adeleteTask"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/kuwo/mod/download/DownloadMgrImpl;->e(Lcn/kuwo/base/bean/DownloadTask;)V

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->b(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)Z

    invoke-direct {p0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f()V

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/util/List;Lcn/kuwo/service/DownloadProxy$Quality;)Z
    .locals 8

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/Music;->a()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    iget-object v5, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    iget-wide v6, v0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v5, v6, v7}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-wide v4, v0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-direct {p0, v4, v5}, Lcn/kuwo/mod/download/DownloadMgrImpl;->a(J)Lcn/kuwo/base/bean/Music;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v5

    sget-object v6, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v5, v4, v6}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v4}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v4

    invoke-virtual {p2}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_0

    :cond_1
    invoke-direct {p0, v0, p2}, Lcn/kuwo/mod/download/DownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v4

    iget-object v5, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v5

    iget-object v6, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v6}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    move-result v0

    iget-object v5, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v5, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    iput-object v0, v4, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v0, v4, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iput-object p2, v0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v0, v4, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcn/kuwo/base/bean/Music;->t:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f()V

    invoke-direct {p0, v1}, Lcn/kuwo/mod/download/DownloadMgrImpl;->a(I)V

    if-lez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "download"

    const-string v1, "download_add_count"

    invoke-static {v0, v1, v2, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->g:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public final b(Lcn/kuwo/base/bean/DownloadTask;)Z
    .locals 2

    const-string v0, "DownloadMgrImpl"

    const-string v1, "\u4e0b\u8f7d\uff1apauseTask"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/kuwo/mod/download/DownloadMgrImpl;->c(Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-direct {p0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->f()V

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    const-string v0, "DownloadMgrImpl"

    const-string v1, "\u4e0b\u8f7d\uff1apauseAllTasks"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->c(Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
