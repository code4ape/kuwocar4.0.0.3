.class Lcn/kuwo/kwmusiccar/App$2$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$1:Lcn/kuwo/kwmusiccar/App$2;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/App$2;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/App$2$1;->this$1:Lcn/kuwo/kwmusiccar/App$2;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/core/messagemgr/MessageManager;->b()V

    :try_start_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->b()V

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/DownloadProxy;->a()V

    :cond_0
    invoke-static {}, Lcn/kuwo/service/MainService;->f()V

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->d()V

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageManager;->a()Lcn/kuwo/base/imageloader/ImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/imageloader/ImageManager;->b()V

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/App$2$1;->this$1:Lcn/kuwo/kwmusiccar/App$2;

    iget-object v0, v0, Lcn/kuwo/kwmusiccar/App$2;->this$0:Lcn/kuwo/kwmusiccar/App;

    invoke-static {v0}, Lcn/kuwo/base/util/Umeng;->onAppExit(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    throw v0
.end method
