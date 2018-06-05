.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;ILcn/kuwo/service/DownloadDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iput p2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->a:I

    iput-object p3, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->b:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    iput-object p4, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget v0, v0, Lcn/kuwo/base/bean/DownloadTask;->a:I

    iget v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->b:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->t:J

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->u:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->e:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->c:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/MusicList;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v1, v1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->c(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v1, v1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v1, v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/Music;)V

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->u:J

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->u:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v1, v1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    move-result-object v1

    sget-wide v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b(Lcn/kuwo/base/bean/Music;J)I

    :goto_0
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->e(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->g(Lcn/kuwo/base/bean/Music;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->d(Lcn/kuwo/base/bean/DownloadTask;)Lcn/kuwo/base/bean/DownloadTask;

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V

    :goto_1
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)I

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(Lcn/kuwo/base/bean/Music;)J

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v1, v1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->c()Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/base/bean/MusicList;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;->d:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_1
.end method
