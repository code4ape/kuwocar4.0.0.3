.class public Lcn/kuwo/mod/skin/SkinMgr;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static j:Lcn/kuwo/mod/skin/SkinMgr;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/res/Resources;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:Lcn/kuwo/mod/skin/SkinPack;

.field private h:Z

.field private i:Lcn/kuwo/mod/skin/SkinPack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/kuwo/mod/skin/SkinMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/skin/SkinMgr;->a:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/mod/skin/SkinMgr;

    invoke-direct {v0}, Lcn/kuwo/mod/skin/SkinMgr;-><init>()V

    sput-object v0, Lcn/kuwo/mod/skin/SkinMgr;->j:Lcn/kuwo/mod/skin/SkinMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->b:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->h:Z

    return-void
.end method

.method public static b()Lcn/kuwo/mod/skin/SkinMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/skin/SkinMgr;->j:Lcn/kuwo/mod/skin/SkinMgr;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "skin"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v5, v2

    :goto_0
    if-eqz v5, :cond_3

    array-length v2, v5

    if-lez v2, :cond_3

    array-length v6, v5

    move v3, v0

    move-object v4, v1

    move-object v2, v1

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v0, v5, v3

    sget-object v1, Lcn/kuwo/mod/skin/SkinMgr;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "skin/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "skin.conf"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x200

    new-array v2, v2, [B

    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    sget-object v2, Lcn/kuwo/mod/skin/SkinMgr;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v2, v1

    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcn/kuwo/mod/skin/SkinMgr;->b(Lcn/kuwo/mod/skin/SkinPack;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v4, v1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    move-object v5, v1

    goto/16 :goto_0

    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/skin/SkinParser;->a(Ljava/lang/String;)Lcn/kuwo/mod/skin/SkinPack;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_6
    throw v0

    :catch_4
    move-exception v1

    goto :goto_6

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    move-object v1, v4

    goto :goto_4
.end method

.method private b(Lcn/kuwo/mod/skin/SkinPack;)Z
    .locals 12

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcn/kuwo/mod/skin/SkinPack;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xd

    invoke-static {v3}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/skin/SkinMgr;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skinPathName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skin/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcn/kuwo/mod/skin/SkinPack;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v3, v0, v5}, Lcn/kuwo/base/util/KwFileUtils;->fileWrite(Ljava/io/File;Ljava/io/InputStream;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_4

    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v3, "skin.conf"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "skin.conf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Lcn/kuwo/base/util/KwFileUtils;->fileWrite(Ljava/io/File;Ljava/io/InputStream;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/mod/skin/SkinPack;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/mod/skin/SkinPack;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v1, v4

    if-lez v1, :cond_2

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v7, v6, v8}, Lcn/kuwo/base/util/KwFileUtils;->fileWrite(Ljava/io/File;Ljava/io/InputStream;Z)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    :goto_3
    sget-object v2, Lcn/kuwo/mod/skin/SkinMgr;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method private c(Lcn/kuwo/mod/skin/SkinPack;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/skin/SkinPack;->e()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xd

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/skin/SkinMgr;->g:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v1}, Lcn/kuwo/mod/skin/SkinPack;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/skin/SkinMgr;->g:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v1}, Lcn/kuwo/mod/skin/SkinPack;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private d()V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->g:Lcn/kuwo/mod/skin/SkinPack;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/skin/SkinMgr;->c(Lcn/kuwo/mod/skin/SkinPack;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/skin/SkinMgr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->e:Ljava/lang/String;

    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/kuwo/mod/skin/SkinMgr;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->f()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v2, v0, v3, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcn/kuwo/mod/skin/SkinMgr;->d:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->l:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/skin/SkinMgr$1;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/skin/SkinMgr$1;-><init>(Lcn/kuwo/mod/skin/SkinMgr;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->d:Landroid/content/res/Resources;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private e()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->d:Landroid/content/res/Resources;

    return-object v0
.end method

.method private f()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcn/kuwo/mod/skin/SkinPack;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->g:Lcn/kuwo/mod/skin/SkinPack;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x1

    iput-object p1, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    new-instance v0, Lcn/kuwo/mod/skin/SkinPack;

    invoke-direct {v0}, Lcn/kuwo/mod/skin/SkinPack;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->i:Lcn/kuwo/mod/skin/SkinPack;

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->i:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/skin/SkinPack;->setType(I)V

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->i:Lcn/kuwo/mod/skin/SkinPack;

    const-string v1, "\u9ed8\u8ba4\u76ae\u80a4"

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/skin/SkinPack;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->f:Ljava/util/List;

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->f:Ljava/util/List;

    iget-object v1, p0, Lcn/kuwo/mod/skin/SkinMgr;->i:Lcn/kuwo/mod/skin/SkinPack;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcn/kuwo/mod/skin/SkinMgr;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcn/kuwo/mod/skin/SkinMgr;->c(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcn/kuwo/mod/skin/SkinMgr;->h:Z

    const-string v0, "DEFULAT_SKIN_PATH"

    :try_start_0
    const-class v1, Lcn/kuwo/kwmusiccar/BuildConfig;

    const-string v2, "defaultSkinPath"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v2, Lcn/kuwo/kwmusiccar/BuildConfig;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "skin"

    const-string v2, "key_skin_path"

    invoke-static {v1, v2, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "DEFULAT_SKIN_PATH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->i:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/skin/SkinMgr;->a(Lcn/kuwo/mod/skin/SkinPack;)Z

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->d()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v0}, Lcn/kuwo/mod/skin/SkinPack;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/skin/SkinMgr;->a(Lcn/kuwo/mod/skin/SkinPack;)Z

    goto :goto_1
.end method

.method public a(Lcn/kuwo/mod/skin/SkinPack;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->g:Lcn/kuwo/mod/skin/SkinPack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->g:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/skin/SkinPack;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcn/kuwo/mod/skin/SkinMgr;->g:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {p1}, Lcn/kuwo/mod/skin/SkinPack;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "skin"

    const-string v1, "key_skin_path"

    const-string v2, "DEFULAT_SKIN_PATH"

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :goto_0
    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->d()V

    :cond_1
    return v3

    :cond_2
    const-string v0, "skin"

    const-string v1, "key_skin_path"

    iget-object v2, p0, Lcn/kuwo/mod/skin/SkinMgr;->g:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v2}, Lcn/kuwo/mod/skin/SkinPack;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->e()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->e()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Lcn/kuwo/mod/skin/SkinMgr;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v2, v3, :cond_2

    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->e()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->e()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public c(I)I
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->c:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->e()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->e()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    iget-object v3, p0, Lcn/kuwo/mod/skin/SkinMgr;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcn/kuwo/mod/skin/SkinMgr;->e()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr;->f:Ljava/util/List;

    return-object v0
.end method
