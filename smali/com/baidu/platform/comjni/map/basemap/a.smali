.class public Lcom/baidu/platform/comjni/map/basemap/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/util/List;


# instance fields
.field private b:J

.field private c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/M;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/common/BaiduMapSDKException;

    const-string v1, "the version of map is not match with base"

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/common/BaiduMapSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/platform/comapi/NativeLoader;->getInstance()Lcom/baidu/platform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/M;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    new-instance v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    return-void
.end method

.method public static a(JIII)I
    .locals 2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->MapProc(JIII)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 14

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    const/16 v2, 0x10

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "cfg/a/ResPack.cfg"

    aput-object v2, v3, v1

    const-string v2, "cfg/idrres/baseindoormap.sty"

    aput-object v2, v3, v0

    const-string v2, "cfg/idrres/DVIndoor.cfg"

    aput-object v2, v3, v6

    const-string v2, "cfg/idrres/ResPack.cfg"

    aput-object v2, v3, v8

    const/4 v2, 0x4

    const-string v4, "cfg/h/DVHotcity.cfg"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "cfg/l/DVHotcity.cfg"

    aput-object v4, v3, v2

    const-string v2, "cfg/h/DVHotMap.cfg"

    aput-object v2, v3, v7

    const/4 v2, 0x7

    const-string v4, "cfg/l/DVHotMap.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "cfg/l/DVDirectory.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "cfg/l/DVVersion.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "cfg/h/DVDirectory.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "cfg/h/DVVersion.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0xc

    const-string v4, "cfg/a/mapstyle.sty"

    aput-object v4, v3, v2

    const/16 v2, 0xd

    const-string v4, "cfg/a/satellitestyle.sty"

    aput-object v4, v3, v2

    const/16 v2, 0xe

    const-string v4, "cfg/a/trafficstyle.sty"

    aput-object v4, v3, v2

    const/16 v2, 0xf

    const-string v4, "cfg/a/CustomIndex"

    aput-object v4, v3, v2

    new-array v4, v0, [Ljava/lang/String;

    const-string v2, "cfg/a/CustomIndex"

    aput-object v2, v4, v1

    const/16 v2, 0x10

    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "cfg/a/ResPack.rs"

    aput-object v2, v5, v1

    const-string v2, "cfg/idrres/baseindoormap.sty"

    aput-object v2, v5, v0

    const-string v2, "cfg/idrres/DVIndoor.cfg"

    aput-object v2, v5, v6

    const-string v2, "cfg/idrres/ResPackIndoorMap.rs"

    aput-object v2, v5, v8

    const/4 v2, 0x4

    const-string v6, "cfg/h/DVHotcity.cfg"

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-string v6, "cfg/l/DVHotcity.cfg"

    aput-object v6, v5, v2

    const-string v2, "cfg/h/DVHotMap.cfg"

    aput-object v2, v5, v7

    const/4 v2, 0x7

    const-string v6, "cfg/l/DVHotMap.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0x8

    const-string v6, "cfg/l/DVDirectory.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0x9

    const-string v6, "cfg/l/DVVersion.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0xa

    const-string v6, "cfg/h/DVDirectory.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0xb

    const-string v6, "cfg/h/DVVersion.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0xc

    const-string v6, "cfg/a/mapstyle.sty"

    aput-object v6, v5, v2

    const/16 v2, 0xd

    const-string v6, "cfg/a/satellitestyle.sty"

    aput-object v6, v5, v2

    const/16 v2, 0xe

    const-string v6, "cfg/a/trafficstyle.sty"

    aput-object v6, v5, v2

    const/16 v2, 0xf

    const-string v6, "cfg/a/CustomIndex"

    aput-object v6, v5, v2

    new-array v6, v0, [Ljava/lang/String;

    const-string v2, "cfg/a/CustomIndex"

    aput-object v2, v6, v1

    :try_start_1
    new-instance v7, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/ver.dat"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    invoke-virtual {v2, v9}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cfg/a/mapstyle.sty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_9

    move v2, v1

    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cfg/a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cfg/h"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cfg/l"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_6
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cfg/idrres"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    move v0, v1

    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_8

    aget-object v7, v4, v0

    aget-object v8, v6, v0

    invoke-static {v7, v8, p0}, Lcom/baidu/platform/comapi/AssetsLoadUtil;->copyFileFromAsset(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_0

    :goto_3
    array-length v0, v5

    if-ge v1, v0, :cond_0

    aget-object v0, v3, v1

    aget-object v2, v5, v1

    invoke-static {v0, v2, p0}, Lcom/baidu/platform/comapi/AssetsLoadUtil;->copyFileFromAsset(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    move v2, v0

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static b(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetMapCustomEnable(JZ)V

    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetMapControlMode(JI)I

    move-result v0

    return v0
.end method

.method public a(IILjava/lang/String;)J
    .locals 7

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->AddLayer(JIILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(II)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ScrPtToGeoPoint(JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IIII)Ljava/lang/String;
    .locals 9

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    int-to-long v4, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetNearlyObjID(JJIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnSchcityGet(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(JZ)V
    .locals 7

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowLayers(JJZ)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetMapStatus(JLandroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SaveScreenToLocal(JLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowSatelliteMap(JZ)V

    return-void
.end method

.method public a([Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    array-length v1, p1

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->addOverlayItems(J[Landroid/os/Bundle;I)V

    return-void
.end method

.method public a()Z
    .locals 4

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->Create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    iput-wide v2, v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->a:J

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetCallback(JLcom/baidu/platform/comjni/map/basemap/BaseMapCallback;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->CreateDuplicate(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    goto :goto_0
.end method

.method public a(IZ)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordReload(JIZ)Z

    move-result v0

    return v0
.end method

.method public a(IZI)Z
    .locals 7

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordStart(JIZI)Z

    move-result v0

    return v0
.end method

.method public a(J)Z
    .locals 5

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->LayersIsShow(JJ)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SwitchBaseIndoorMapFloor(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    invoke-virtual/range {v3 .. v20}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->Init(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Z

    move-result v2

    return v2
.end method

.method public a(ZZ)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordImport(JZZ)Z

    move-result v0

    return v0
.end method

.method public a([III)[I
    .locals 7

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetScreenBuf(J[III)[I

    move-result-object v0

    return-object v0
.end method

.method public b(II)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GeoPtToScrPoint(JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->UpdateLayers(JJ)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->setMapStatusLimits(JLandroid/os/Bundle;)V

    return-void
.end method

.method public b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowHotMap(JZ)V

    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->Release(J)I

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordAdd(JI)Z

    move-result v0

    return v0
.end method

.method public b(IZ)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordRemove(JIZ)Z

    move-result v0

    return v0
.end method

.method public b(IZI)Z
    .locals 7

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordSuspend(JIZI)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/os/Bundle;)F
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetZoomToBound(JLandroid/os/Bundle;)F

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    return-wide v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordGetAt(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowTrafficMap(JZ)V

    return-void
.end method

.method public c(J)Z
    .locals 5

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->cleanSDKTileDataCache(JJ)Z

    move-result v0

    return v0
.end method

.method public d(J)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ClearLayer(JJ)V

    return-void
.end method

.method public d(Z)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->enableDrawHouseHeight(JZ)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->updateSDKTile(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public e(J)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->getCompassPosition(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnPause(J)V

    return-void
.end method

.method public e(Z)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowBaseIndoorMap(JZ)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->addtileOverlay(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnResume(J)V

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->addOneOverlayItem(JLandroid/os/Bundle;)V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnBackground(J)V

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->updateOneOverlayItem(JLandroid/os/Bundle;)V

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnForeground(J)V

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->removeOneOverlayItem(JLandroid/os/Bundle;)V

    return-void
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ResetImageRes(J)V

    return-void
.end method

.method public j()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetMapStatus(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/os/Bundle;
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->getMapStatusLimits(J)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMapStatusLimits, maddr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bundle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public l()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->getDrawingMapStatus(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetBaiduHotMapCityInfo(J)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordGetAll(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnHotcityGet(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->PostStatInfo(J)V

    return-void
.end method

.method public q()Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->isDrawHouseHeightEnable(J)Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->clearHeatMapLayerCache(J)V

    return-void
.end method

.method public s()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v4, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->getfocusedBaseIndoorMapInfo(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ""

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "focusindoorid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "curfloor"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v3, "floorlist"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    new-instance v2, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    invoke-direct {v2, v1, v0, v4}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public t()Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->IsBaseIndoorMapMode(J)Z

    move-result v0

    return v0
.end method
