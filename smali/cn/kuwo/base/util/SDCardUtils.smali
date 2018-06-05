.class public Lcn/kuwo/base/util/SDCardUtils;
.super Ljava/lang/Object;


# static fields
.field private static final MNT:Ljava/lang/String; = "/mnt"

.field public static final SDCARD_EXTERNAL:Ljava/lang/String; = "external"

.field public static final SDCARD_INTERNAL:Ljava/lang/String; = "internal"

.field public static final SDCARD_USB:Ljava/lang/String; = "usb"

.field private static final STORAGE:Ljava/lang/String; = "/storage"

.field private static volatile avaliable:Z

.field private static files:Ljava/util/List;

.field private static volatile mounted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/util/SDCardUtils;->mounted:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcn/kuwo/base/util/SDCardUtils;->mounted:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcn/kuwo/base/util/SDCardUtils;->avaliable:Z

    return p0
.end method

.method protected static checkSDCardMount14(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getVolumeState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public static getSDCardInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getVolumePaths"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    move v0, v1

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_0

    aget-object v1, v2, v0

    new-instance v4, Lcn/kuwo/base/util/SDCardInfo;

    invoke-direct {v4}, Lcn/kuwo/base/util/SDCardInfo;-><init>()V

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/kuwo/base/util/SDCardInfo;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcn/kuwo/base/util/SDCardInfo;->setMountPoint(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcn/kuwo/base/util/SDCardUtils;->checkSDCardMount14(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/util/SDCardInfo;->setMounted(Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static getScanRootFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getScanRootFiles()Ljava/util/List;
    .locals 4

    sget-object v0, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->getScanRootFile()Ljava/io/File;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_4

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/SDCardUtils;->getSDCardInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/util/SDCardInfo;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcn/kuwo/base/util/SDCardInfo;->getMountPoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getDirsExHidden(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    :cond_2
    :goto_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/udisk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getDirsExHidden(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    if-eqz v1, :cond_3

    sget-object v1, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget-object v0, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getDirsExHidden(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/util/SDCardUtils;->files:Ljava/util/List;

    goto :goto_2
.end method

.method public static init()V
    .locals 3

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcn/kuwo/base/util/SDCardUtils;->avaliable:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    new-instance v2, Lcn/kuwo/base/util/SDCardUtils$1;

    invoke-direct {v2}, Lcn/kuwo/base/util/SDCardUtils$1;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcn/kuwo/kwmusiccar/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static isAvaliable()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/util/SDCardUtils;->avaliable:Z

    return v0
.end method
