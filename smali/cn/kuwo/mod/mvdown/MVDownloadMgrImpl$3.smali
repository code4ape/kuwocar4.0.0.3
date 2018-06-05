.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/Music;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/base/bean/DownloadTask;

.field final synthetic d:Lcn/kuwo/base/bean/Music;

.field final synthetic e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/base/bean/DownloadTask;Lcn/kuwo/base/bean/Music;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->a:Lcn/kuwo/base/bean/Music;

    iput-object p3, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    iput-object p5, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->d:Lcn/kuwo/base/bean/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->a:Lcn/kuwo/base/bean/Music;

    invoke-static {v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/kuwo/base/util/KwFileUtils;->fileMove(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuwo/base/bean/Music;->u:J

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->u:J

    iput-wide v2, v1, Lcn/kuwo/base/bean/Music;->t:J

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcn/kuwo/base/bean/DownloadTask;->e:F

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    sget-object v2, Lcn/kuwo/mod/download/DownloadState;->e:Lcn/kuwo/mod/download/DownloadState;

    iput-object v2, v1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iput-object v0, v1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(Lcn/kuwo/base/bean/Music;)J

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c()Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/base/bean/MusicList;

    const-string v0, "task"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    iget-object v2, v2, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->\u7f13\u5b58\u8f6c\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3$1;

    invoke-direct {v1, p0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3$1;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->d:Lcn/kuwo/base/bean/Music;

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->a:Lcn/kuwo/base/bean/Music;

    iget-object v3, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_0
.end method
