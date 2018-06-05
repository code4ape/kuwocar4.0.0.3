.class public final Lcn/kuwo/service/DownloadProxy;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;


# direct methods
.method protected constructor <init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/service/DownloadProxy;->a:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I
    .locals 6

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isOpenCopyRight()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownType;->d:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->d:Lcn/kuwo/service/DownloadProxy$DownGroup;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/DownloadProxy$DownGroup;)Lcn/kuwo/service/downloader/DownloadMgr;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->a:Lcn/kuwo/service/DownloadProxy$DownGroup;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/DownloadProxy$DownGroup;)Lcn/kuwo/service/downloader/DownloadMgr;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcn/kuwo/service/DownloadProxy$DownGroup;Ljava/lang/String;Ljava/lang/String;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I
    .locals 6

    invoke-static {p1}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/DownloadProxy$DownGroup;)Lcn/kuwo/service/downloader/DownloadMgr;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Ljava/lang/String;Ljava/lang/String;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 4

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/DownloadProxy;->a:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/DownloadProxy$6;

    invoke-direct {v2, p0}, Lcn/kuwo/service/DownloadProxy$6;-><init>(Lcn/kuwo/service/DownloadProxy;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const/4 v0, 0x7

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*.song"

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwFileUtils;->getFilesClassic(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    invoke-static {p1}, Lcn/kuwo/service/downloader/DownloadMgr;->a(I)V

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/DownloadProxy;->a:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/DownloadProxy$4;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/service/DownloadProxy$4;-><init>(Lcn/kuwo/service/DownloadProxy;Lcn/kuwo/base/bean/Music;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/DownloadProxy;->a:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/DownloadProxy$3;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/service/DownloadProxy$3;-><init>(Lcn/kuwo/service/DownloadProxy;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Z
    .locals 1

    invoke-static {p1, p2}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Z

    move-result v0

    return v0
.end method
