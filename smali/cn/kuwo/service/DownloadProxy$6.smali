.class Lcn/kuwo/service/DownloadProxy$6;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/DownloadProxy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/DownloadProxy;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/DownloadProxy$6;->a:Lcn/kuwo/service/DownloadProxy;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    invoke-static {}, Lcn/kuwo/service/downloader/DownloadMgr;->a()V

    const/4 v0, 0x7

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*.dat"

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwFileUtils;->getFilesClassic(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/kuwo/service/downloader/DownCacheMgr;->h(Ljava/lang/String;)Lcn/kuwo/service/DownloadProxy$DownType;

    move-result-object v4

    sget-object v5, Lcn/kuwo/service/DownloadProxy$DownType;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/io/File;)I

    move-result v4

    sget-object v5, Lcn/kuwo/service/DownloadProxy$DownType;->b:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-static {v3, v5, v4}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/io/File;Lcn/kuwo/service/DownloadProxy$DownType;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcn/kuwo/service/DownloadProxy$DownType;->d:Lcn/kuwo/service/DownloadProxy$DownType;

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->k(Ljava/lang/String;)V

    invoke-static {v3}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    return-void
.end method
