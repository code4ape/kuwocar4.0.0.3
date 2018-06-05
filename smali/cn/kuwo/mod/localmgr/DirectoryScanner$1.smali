.class Lcn/kuwo/mod/localmgr/DirectoryScanner$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcn/kuwo/base/natives/NativeScannerManager;->getInstance()Lcn/kuwo/base/natives/NativeScannerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/natives/NativeScannerManager;->stopScan()Z

    return-void
.end method
