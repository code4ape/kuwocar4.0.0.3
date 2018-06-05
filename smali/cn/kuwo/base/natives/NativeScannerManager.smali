.class public Lcn/kuwo/base/natives/NativeScannerManager;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static volatile _instance:Lcn/kuwo/base/natives/NativeScannerManager;

.field private static volatile loaded:Z

.field private static obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "kwframeV7"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/natives/NativeScannerManager;->loaded:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-boolean v0, Lcn/kuwo/base/natives/NativeScannerManager;->loaded:Z

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "kwframe"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/natives/NativeScannerManager;->loaded:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    const-string v0, "NativeScannerManager"

    sput-object v0, Lcn/kuwo/base/natives/NativeScannerManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/natives/NativeScannerManager;->_instance:Lcn/kuwo/base/natives/NativeScannerManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuwo/base/natives/NativeScannerManager;->obj:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "kwframe"

    invoke-static {v0}, Lcn/kuwo/base/natives/NativeLibLoadHelper;->load(Ljava/lang/String;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/kuwo/base/natives/NativeScannerManager;
    .locals 2

    sget-object v0, Lcn/kuwo/base/natives/NativeScannerManager;->_instance:Lcn/kuwo/base/natives/NativeScannerManager;

    if-nez v0, :cond_1

    sget-object v1, Lcn/kuwo/base/natives/NativeScannerManager;->obj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/kuwo/base/natives/NativeScannerManager;->_instance:Lcn/kuwo/base/natives/NativeScannerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/natives/NativeScannerManager;

    invoke-direct {v0}, Lcn/kuwo/base/natives/NativeScannerManager;-><init>()V

    sput-object v0, Lcn/kuwo/base/natives/NativeScannerManager;->_instance:Lcn/kuwo/base/natives/NativeScannerManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/kuwo/base/natives/NativeScannerManager;->_instance:Lcn/kuwo/base/natives/NativeScannerManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public native addObserver(Lcn/kuwo/base/natives/NativeScannerInterface;)V
.end method

.method public native getDirSize(Ljava/lang/String;Z)J
.end method

.method public native removeObserver()V
.end method

.method public native startScan(Ljava/util/List;Lcn/kuwo/base/natives/NativeScannerFilter;)Z
.end method

.method public native stopScan()Z
.end method
