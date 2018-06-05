.class public Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/mvdown/IMVDownloadMgr;


# static fields
.field private static g:Lcn/kuwo/base/bean/DownloadTask;

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcn/kuwo/base/bean/MusicList;

.field private c:Lcn/kuwo/base/bean/MusicList;

.field private d:I

.field private e:Z

.field private f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

.field private h:Lcn/kuwo/core/observers/ext/AppObserver;

.field private o:Lcn/kuwo/service/DownloadDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    const/4 v0, 0x1

    sput v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->i:I

    const/4 v0, 0x2

    sput v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j:I

    const/4 v0, 0x3

    sput v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->k:I

    const/4 v0, 0x4

    sput v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->l:I

    const/4 v0, 0x5

    sput v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->m:I

    const/4 v0, 0x6

    sput v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

    iput v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d:I

    iput-boolean v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->e:Z

    new-instance v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$1;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$1;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h:Lcn/kuwo/core/observers/ext/AppObserver;

    new-instance v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->o:Lcn/kuwo/service/DownloadDelegate;

    return-void
.end method

.method private a(J)Lcn/kuwo/base/bean/DownloadTask;
    .locals 7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/DownloadTask;

    iget-object v3, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v4, v3, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Lcn/kuwo/base/bean/DownloadTask;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/download/DownloadState;->a:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, p1, p2, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/mod/download/DownloadState;)Lcn/kuwo/base/bean/DownloadTask;

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

.method static synthetic a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/base/bean/MusicList;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    return-object p1
.end method

.method static synthetic a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    return-object v0
.end method

.method private a(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    if-ne v0, v1, :cond_0

    const-string v0, "MP4"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    if-ne v0, v1, :cond_1

    const-string v0, "MP4L"

    goto :goto_0

    :cond_1
    const-string v0, "MP4"

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MP4"

    goto :goto_0

    :cond_2
    const-string v0, "MP4L"

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MP4L"

    goto :goto_0

    :cond_3
    const-string v0, "MP4"

    goto :goto_0
.end method

.method static synthetic a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/Music;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3

    const-string v0, "download"

    const-string v1, "mvdownload_add_count"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->w:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$2;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$2;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;I)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->m()V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mvId"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "downState"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "downMessage"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cooperateName"

    const-string v3, "kuwo"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private b(J)Lcn/kuwo/base/bean/Music;
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->m()V

    return-void
.end method

.method static synthetic b(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method

.method static synthetic b(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/Music;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->e(Lcn/kuwo/base/bean/Music;)V

    return-void
.end method

.method private c(J)Lcn/kuwo/base/bean/DownloadTask;
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

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

.method static synthetic c(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method private c(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcn/kuwo/base/bean/DownloadTask;)Lcn/kuwo/base/bean/DownloadTask;
    .locals 0

    sput-object p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    return-object p0
.end method

.method private d(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x15

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method private final e(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 2

    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g(Lcn/kuwo/base/bean/DownloadTask;)V

    sget-object v0, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    iput-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h(Lcn/kuwo/base/bean/DownloadTask;)V

    :cond_0
    return-void
.end method

.method private e(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->n:I

    return v0
.end method

.method static synthetic f(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)I
    .locals 2

    iget v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d:I

    return v0
.end method

.method private f(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->d:Lcn/kuwo/service/DownloadProxy$DownType;

    iget-object v3, p1, Lcn/kuwo/base/bean/DownloadTask;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v4, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->o:Lcn/kuwo/service/DownloadDelegate;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    iput v0, p1, Lcn/kuwo/base/bean/DownloadTask;->a:I

    sput-object p1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    sget-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h(Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_0
.end method

.method private f(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->j(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g()I
    .locals 1

    sget v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j:I

    return v0
.end method

.method private g(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 3

    sget-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    if-eqz v0, :cond_0

    iget v0, p1, Lcn/kuwo/base/bean/DownloadTask;->a:I

    sget-object v1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    iget v1, v1, Lcn/kuwo/base/bean/DownloadTask;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    if-ne v0, v1, :cond_0

    const-string v0, "MVDownloadMgrImpl"

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

    iget v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d:I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/mod/notification/INotificationMgr;->b(Lcn/kuwo/base/bean/DownloadTask;)V

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->l()V

    return-void
.end method

.method private g(Lcn/kuwo/base/bean/Music;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->m:I

    return v0
.end method

.method private h(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 3

    iget v0, p1, Lcn/kuwo/base/bean/DownloadTask;->g:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->i(Lcn/kuwo/base/bean/DownloadTask;)V

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->w:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$7;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$7;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/mod/notification/INotificationMgr;->b(Lcn/kuwo/base/bean/DownloadTask;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/mod/notification/INotificationMgr;->c(Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_0
.end method

.method static synthetic i()I
    .locals 1

    sget v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->l:I

    return v0
.end method

.method private i(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 6

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v4, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->i:I

    const-string v5, ""

    sget-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$10;->a:[I

    iget-object v2, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-virtual {v2}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    const-string v0, "MVDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -->state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v0, Lcn/kuwo/base/bean/Music;->a:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget v4, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j:I

    goto :goto_1

    :pswitch_1
    sget v4, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j:I

    const-string v5, "\u4e0b\u8f7d\u5f00\u59cb"

    goto :goto_1

    :pswitch_2
    sget v4, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j:I

    goto :goto_1

    :pswitch_3
    sget v4, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->k:I

    goto :goto_1

    :pswitch_4
    sget v4, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->l:I

    const-string v5, "\u4e0b\u8f7d\u5931\u8d25"

    goto :goto_1

    :pswitch_5
    sget v4, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->m:I

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic j()Lcn/kuwo/base/bean/DownloadTask;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    return-object v0
.end method

.method private j(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->w:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$8;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$8;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/mod/notification/INotificationMgr;->a(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-object v2, v0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v3, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, v0, v2, v3}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/mod/download/DownloadState;)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private l()V
    .locals 6

    const/4 v2, 0x1

    const-string v0, "MVDownloadMgrImpl"

    const-string v1, "\u5f00\u59cb\u4e0b\u4e00\u4e2a\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d:I

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

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

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h(Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->j()Lcn/kuwo/mod/vip/IVipMgr;

    move-result-object v1

    iget-object v4, v0, Lcn/kuwo/base/bean/DownloadTask;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-interface {v1, v4}, Lcn/kuwo/mod/vip/IVipMgr;->a(Lcn/kuwo/service/DownloadProxy$Quality;)I

    move-result v1

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->e:Z

    if-nez v1, :cond_4

    iput-boolean v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->e:Z

    :cond_4
    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h(Lcn/kuwo/base/bean/DownloadTask;)V

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f(Lcn/kuwo/base/bean/DownloadTask;)V

    iget v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d:I

    goto :goto_0
.end method

.method private m()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->w:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$9;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$9;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;ILjava/lang/String;)I
    .locals 8

    if-nez p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    const-string v0, "MP4L"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v3, Lcn/kuwo/service/DownloadProxy$Quality;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    :goto_1
    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;->g:Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;

    const/4 v2, 0x0

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    if-ne v3, v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-static {v1, p1, v2, v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/MusicList;I)V

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    iget-wide v4, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_9

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    invoke-virtual {v3}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v0

    iget-object v2, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v2}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v2

    if-le v0, v2, :cond_7

    sget-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    if-eqz v0, :cond_5

    sget-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v4, v0, Lcn/kuwo/base/bean/Music;->a:J

    iget-wide v6, p1, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    sget-object v2, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    iget v2, v2, Lcn/kuwo/base/bean/DownloadTask;->a:I

    invoke-virtual {v0, v2}, Lcn/kuwo/service/DownloadProxy;->a(I)V

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->f()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v2, v0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f(Lcn/kuwo/base/bean/Music;)V

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    iput-object v0, v1, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    iput-object p2, v1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcn/kuwo/base/bean/Music;->u:J

    const-string v0, ""

    iput-object v0, v1, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcn/kuwo/base/bean/Music;->t:J

    sget-object v6, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->d:Lcn/kuwo/service/DownloadProxy$DownType;

    iget-object v4, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->o:Lcn/kuwo/service/DownloadDelegate;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    iput v0, v6, Lcn/kuwo/base/bean/DownloadTask;->a:I

    :cond_1
    :goto_3
    const-string v0, "MVDownloadMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u66ff\u6362\u65f6music obj id is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/kuwo/base/bean/Music;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p2, v1, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    :goto_4
    iput-object p2, v1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcn/kuwo/base/bean/Music;->u:J

    const-string v0, ""

    iput-object v0, v1, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcn/kuwo/base/bean/Music;->t:J

    iget-wide v4, v1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-direct {p0, v4, v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c(J)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iput p3, v0, Lcn/kuwo/base/bean/DownloadTask;->g:I

    iput-object p4, v0, Lcn/kuwo/base/bean/DownloadTask;->h:Ljava/lang/String;

    iget-object v2, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v4, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    if-eq v2, v4, :cond_2

    sget-object v2, Lcn/kuwo/mod/download/DownloadState;->a:Lcn/kuwo/mod/download/DownloadState;

    iput-object v2, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    :cond_2
    const/4 v2, 0x0

    iput v2, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    iput-object v3, v0, Lcn/kuwo/base/bean/DownloadTask;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    sget-wide v4, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a:J

    invoke-virtual {v2, v1, v4, v5}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b(Lcn/kuwo/base/bean/Music;J)I

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->l()V

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h(Lcn/kuwo/base/bean/DownloadTask;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcn/kuwo/service/DownloadProxy$Quality;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_5
    iget-wide v4, v1, Lcn/kuwo/base/bean/Music;->u:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f(Lcn/kuwo/base/bean/Music;)V

    goto :goto_3

    :cond_6
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    iput-object v0, v1, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-wide v0, v1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(J)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v2, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    if-ne v1, v2, :cond_8

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/base/bean/DownloadTask;)V

    :cond_8
    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_9
    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b(J)Lcn/kuwo/base/bean/Music;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v0, v5, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    if-ne v0, v1, :cond_a

    const-string v0, "MP4"

    iget-object v1, v5, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v0, v5, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    :cond_a
    :goto_5
    invoke-direct {p0, v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v5, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v0}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v0

    invoke-virtual {v3}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_b
    const-string v0, "MP4L"

    iget-object v1, v5, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v0, v5, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_5

    :cond_c
    const-wide/16 v0, 0x0

    iput-wide v0, v5, Lcn/kuwo/base/bean/Music;->u:J

    iget-object v0, v5, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    iput-object v0, p1, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    :cond_d
    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->f()Lcn/kuwo/base/bean/Music;

    move-result-object v2

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcn/kuwo/base/bean/Music;->a(J)V

    iput-object p2, v2, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    iput-object p2, v2, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v4

    iput p3, v4, Lcn/kuwo/base/bean/DownloadTask;->g:I

    iput-object p4, v4, Lcn/kuwo/base/bean/DownloadTask;->h:Ljava/lang/String;

    iput-object v2, v4, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v0, v4, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iput-object v3, v0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v0, v4, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcn/kuwo/base/bean/Music;->t:J

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->m()Lcn/kuwo/mod/mvcache/IMVCacheMgr;

    move-result-object v0

    invoke-interface {v0, v2, p2}, Lcn/kuwo/mod/mvcache/IMVCacheMgr;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v6, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/base/bean/DownloadTask;Lcn/kuwo/base/bean/Music;)V

    invoke-static {v6, v0}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    :goto_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(I)V

    invoke-direct {p0, v4}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h(Lcn/kuwo/base/bean/DownloadTask;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, v5, v2, v4}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_6
.end method

.method public a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a()Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    invoke-virtual {v0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    invoke-virtual {v0}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->k()V

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 1

    sget-object v0, Lcn/kuwo/mod/download/DownloadState;->a:Lcn/kuwo/mod/download/DownloadState;

    iput-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h(Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->l()V

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/list/MusicListInner;->add(Lcn/kuwo/base/bean/Music;)Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c(Lcn/kuwo/base/bean/Music;)J

    iget-object v0, p2, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;

    invoke-direct {v0, p0, p2}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/Music;)V

    invoke-static {p2, v0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/http/IHttpNotify;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->l()V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b(Lcn/kuwo/base/bean/Music;)I

    invoke-static {}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a()Lcn/kuwo/base/imageloader/AsyncImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/base/cache/CacheCategoryNames;->f:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a(Ljava/lang/String;Lcn/kuwo/base/cache/CacheCategoryNames;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a()Lcn/kuwo/base/imageloader/AsyncImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/base/cache/CacheCategoryNames;->f:Lcn/kuwo/base/cache/CacheCategoryNames;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a(Ljava/lang/String;Lcn/kuwo/base/cache/CacheCategoryNames;Lcn/kuwo/base/imageloader/ImageLoadListener;Z)V

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    iget-object v0, v2, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->d(I)Lcn/kuwo/base/bean/Music;

    invoke-direct {p0, v2}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->e(Lcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3, p2}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(JLjava/lang/String;)I

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->m()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "download"

    const-string v1, "mvdownload_add_count"

    invoke-static {v0, v1, v2, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public b(Lcn/kuwo/base/bean/DownloadTask;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->e(Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->l()V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    iget-wide v4, p1, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x15

    invoke-static {v3}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method public c(Lcn/kuwo/base/bean/DownloadTask;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "MVDownloadMgrImpl"

    const-string v1, "\u4e0b\u8f7d\uff1adeleteTask"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcn/kuwo/base/bean/DownloadTask;->a:I

    invoke-direct {p0, p1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g(Lcn/kuwo/base/bean/DownloadTask;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    iget-object v2, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v2

    const/4 v0, -0x1

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c:Lcn/kuwo/base/bean/MusicList;

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/MusicListInner;->d(I)Lcn/kuwo/base/bean/Music;

    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f(Lcn/kuwo/base/bean/Music;)V

    :cond_1
    sget-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    iget v0, v0, Lcn/kuwo/base/bean/DownloadTask;->a:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g:Lcn/kuwo/base/bean/DownloadTask;

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(JLjava/lang/String;)I

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->l()V

    invoke-direct {p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->m()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->e(Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
