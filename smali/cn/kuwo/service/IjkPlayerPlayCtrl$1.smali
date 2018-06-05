.class Lcn/kuwo/service/IjkPlayerPlayCtrl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/DownloadDelegate;


# instance fields
.field final synthetic a:Lcn/kuwo/service/IjkPlayerPlayCtrl;


# direct methods
.method constructor <init>(Lcn/kuwo/service/IjkPlayerPlayCtrl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DownloadDelegate_Finish(ILcn/kuwo/service/DownloadDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    if-ne p2, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v2}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e(Lcn/kuwo/service/IjkPlayerPlayCtrl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    iget-object v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v2}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->f(Lcn/kuwo/service/IjkPlayerPlayCtrl;)I

    move-result v2

    div-int v0, v2, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v1, v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->f(Lcn/kuwo/service/IjkPlayerPlayCtrl;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0, p3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayProxy$Status;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0, p3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->d:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getBufferPos()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/service/IjkPlayerPlayCtrl;)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v1, p2}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/DownloadDelegate$ErrorCode;)Lcn/kuwo/service/PlayDelegate$ErrorCode;

    move-result-object v1

    const-string v2, "DownloadDelegate_Finish : error!"

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public DownloadDelegate_Progress(IIIF)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d(Lcn/kuwo/service/IjkPlayerPlayCtrl;)I

    move-result v0

    if-ge v0, p3, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0, p3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I

    :cond_0
    invoke-static {}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "down progress, current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "totalLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v2}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e(Lcn/kuwo/service/IjkPlayerPlayCtrl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    div-int v0, p3, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v1, v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I

    :cond_1
    return-void
.end method

.method public DownloadDelegate_Start(ILjava/lang/String;Ljava/lang/String;IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V
    .locals 4

    invoke-static {}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "down start tempPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;->c:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    if-eq p7, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->l:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    const-string v2, "DownloadDelegate_Start URL is null!"

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/service/IjkPlayerPlayCtrl;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/service/DownloadDelegate$DataSrc;->c:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    if-ne p7, v0, :cond_1

    move-object p2, p3

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {p2}, Lcn/kuwo/service/downloader/DownCacheMgr;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->c(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    const-string v1, "aac"

    invoke-static {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0, p6}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0, p5}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0, p4}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->c(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0, p7}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/DownloadDelegate$DataSrc;)Lcn/kuwo/service/DownloadDelegate$DataSrc;

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/IjkPlayerPlayCtrl;J)J

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0, p3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->c(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-static {v0, p3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;->a:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0, p2}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
