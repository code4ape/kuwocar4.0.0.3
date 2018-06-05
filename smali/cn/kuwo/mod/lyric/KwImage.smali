.class public Lcn/kuwo/mod/lyric/KwImage;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;

.field private static d:I

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# instance fields
.field public a:Z

.field private c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ARTISTPIC_CACHE"

    sput-object v0, Lcn/kuwo/mod/lyric/KwImage;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcn/kuwo/mod/lyric/KwImage;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CacheMgr/ARTISTPIC_CACHE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/lyric/KwImage;->f:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/lyric/KwImage;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/KwImage;->a:Z

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/KwImage;->e:Z

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    const-string v1, "\u672a\u77e5\u6b4c\u624b"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u672a\u77e5\u4e13\u8f91"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const-string v1, "\u672a\u77e5\u6b4c\u624b"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "\u672a\u77e5\u4e13\u8f91"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcn/kuwo/base/bean/Music;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz p1, :cond_5

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "toFileName"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;[B)V
    .locals 6

    sget-object v0, Lcn/kuwo/mod/lyric/KwImage;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->mkdir(Ljava/lang/String;)Z

    sget-object v0, Lcn/kuwo/mod/lyric/KwImage;->g:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->mkdir(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/kuwo/mod/lyric/KwImage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/kuwo/mod/lyric/KwImage;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/kuwo/mod/lyric/KwImage;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcn/kuwo/base/util/KwFileUtils;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcn/kuwo/base/util/KwFileUtils;->fileMove(Ljava/lang/String;Ljava/lang/String;Z)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private a(Ljava/io/File;)[B
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private b([B)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    sget v0, Lcn/kuwo/base/util/DeviceUtils;->HEIGHT:I

    sget v3, Lcn/kuwo/base/util/DeviceUtils;->WIDTH:I

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-boolean v4, Lcn/kuwo/base/util/DeviceUtils;->LOWER_DEVICE:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const-string v6, "\u6b4c\u624b\u5927\u56fe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "picHeight\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  picWidth\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v6, v5

    int-to-float v7, v4

    div-float/2addr v6, v7

    int-to-float v7, v3

    int-to-float v8, v0

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_4

    mul-int/2addr v0, v5

    div-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_4
    float-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const-wide/high16 v10, -0x3fe8000000000000L    # -6.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpl-double v5, v6, v8

    if-lez v5, :cond_5

    mul-int/2addr v3, v4

    div-int v0, v3, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static d(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {p0, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    sget-object v2, Lcn/kuwo/mod/lyric/KwImage;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcn/kuwo/base/cache/CacheMgr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a([B)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcn/kuwo/base/util/StringUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {p0}, Lcn/kuwo/mod/lyric/KwImage;->b()Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcn/kuwo/mod/lyric/KwImage;->b([B)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {p1, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    invoke-direct {v1}, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->b:Z

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v3

    sget-object v4, Lcn/kuwo/mod/lyric/KwImage;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcn/kuwo/base/cache/CacheMgr;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v3

    sget-object v4, Lcn/kuwo/mod/lyric/KwImage;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcn/kuwo/base/cache/CacheMgr;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->b:Z

    :cond_2
    iget-object v2, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;
    .locals 10

    const-wide/16 v8, 0x3a98

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, p3, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v0, p3, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v4, p3, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    iget-object v5, p3, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v5}, Lcn/kuwo/base/util/UrlManagerUtils;->getSongSmallPicUrl(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v2}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    invoke-virtual {v2, v8, v9}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    iget-object v3, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {v3}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)J

    move-result-wide v4

    invoke-virtual {v2, v0}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {v2, v4, v5, v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;JLcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFullFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p3, Lcn/kuwo/base/bean/Music;->d:J

    iget-object v4, p3, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcn/kuwo/base/util/UrlManagerUtils;->getSongPicUrl(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v4, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    iget-object v5, p1, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v5}, Lcn/kuwo/base/util/UrlManagerUtils;->getSongSmallPicUrl(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFullFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->d:J

    iget-object v4, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcn/kuwo/base/util/UrlManagerUtils;->getSongPicUrl(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/String;

    iget-object v0, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;J)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "NO_PIC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/KwImage;->a:Z

    goto/16 :goto_0

    :cond_9
    const-string v0, "\\r\\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v2}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    invoke-virtual {v2, v8, v9}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    if-eqz v0, :cond_c

    array-length v3, v0

    if-eqz v3, :cond_c

    aget-object v3, v0, v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    aget-object v0, v0, v6

    invoke-static {v0}, Lcn/kuwo/base/util/CdnUtils;->translateImgUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {v2, v4, v5, v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;JLcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {v1, v4, v5}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;J)V

    iget-object v1, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    invoke-virtual {p0, p1, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;[B)V

    new-instance v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    invoke-direct {v1}, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;-><init>()V

    iget-object v0, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    iput-boolean v6, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->b:Z

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto :goto_2

    :cond_d
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;I)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;
    .locals 14

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/KwImage;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "ajh.tes"

    const-string v3, "downlaod cancel"

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "ajh.getPic"

    const-string v3, "readBackgroudFromNet invoke"

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v6, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    if-eqz p1, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/KwFileUtils;->getFullFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcn/kuwo/base/bean/Music;->d:J

    move-object/from16 v0, p3

    iget-object v7, v0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v4, v5, v7, v2}, Lcn/kuwo/base/util/UrlManagerUtils;->getSongPicUrl(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v3

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/KwFileUtils;->getFullFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcn/kuwo/base/bean/Music;->d:J

    iget-object v7, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v4, v5, v7, v2}, Lcn/kuwo/base/util/UrlManagerUtils;->getSongPicUrl(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    new-instance v4, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v4}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const-wide/16 v8, 0x3a98

    invoke-virtual {v4, v8, v9}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    invoke-static {v6}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)J

    move-result-wide v8

    const-string v5, "ajh.\u83b7\u53d6\u56fe\u7247url"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imageURL:  "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v2, 0x0

    invoke-static {v6, v8, v9, v4, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;JLcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)V

    move-object v2, v3

    goto :goto_0

    :cond_7
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, v4, Lcn/kuwo/base/http/HttpResult;->c:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v6, v8, v9}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;J)V

    const-string v2, "ajh.getPic"

    const-string v4, "url is null"

    invoke-static {v2, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const-string v4, "NO_PIC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v6, v8, v9}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;J)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/kuwo/mod/lyric/KwImage;->a:Z

    const-string v2, "ajh.getPic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no pic about "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_0

    :cond_9
    const-string v3, "\\r\\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    array-length v2, v7

    move/from16 v0, p4

    if-ge v2, v0, :cond_a

    array-length v0, v7

    move/from16 p4, v0

    :cond_a
    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/KwImage;->e:Z

    if-eqz v2, :cond_b

    const-string v2, "ajh.tes"

    const-string v3, "downlaod cancel"

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, v2

    move-object v2, v3

    :goto_3
    move/from16 v0, p4

    if-ge v4, v0, :cond_11

    array-length v3, v7

    if-ge v5, v3, :cond_11

    const-string v3, ""

    const-string v11, "key_pref_background"

    const/4 v12, 0x0

    invoke-static {v3, v11, v12}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    if-nez p2, :cond_c

    const-string v2, "hello"

    const-string v3, "downlaod cancel,no background option be"

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    iget-boolean v3, p0, Lcn/kuwo/mod/lyric/KwImage;->e:Z

    if-eqz v3, :cond_d

    const-string v2, "ajh.tes"

    const-string v3, "downlaod cancel"

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    if-eqz v7, :cond_10

    array-length v3, v7

    if-eqz v3, :cond_10

    aget-object v3, v7, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "ajh.getPic"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "i "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " urls["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v7, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcn/kuwo/base/crypt/MD5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "_"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v11, v7, v5

    invoke-static {v11}, Lcn/kuwo/base/crypt/MD5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ".kpg"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v3, Ljava/io/File;

    sget-object v12, Lcn/kuwo/mod/lyric/KwImage;->f:Ljava/lang/String;

    invoke-direct {v3, v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v12, v7, v5

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "ajh.getPic"

    const-string v12, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {v3, v12}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v3}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const-wide/16 v12, 0x3a98

    invoke-virtual {v3, v12, v13}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    aget-object v12, v7, v5

    invoke-static {v12}, Lcn/kuwo/base/util/CdnUtils;->translateImgUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v12

    if-eqz v12, :cond_f

    if-nez v4, :cond_e

    move-object v2, v3

    :cond_e
    add-int/lit8 v4, v4, 0x1

    invoke-static {v6, v8, v9}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;J)V

    iget-object v3, v3, Lcn/kuwo/base/http/HttpResult;->c:[B

    invoke-static {v11, v3}, Lcn/kuwo/mod/lyric/KwImage;->a(Ljava/lang/String;[B)V

    :cond_f
    move-object v3, v2

    move v2, v4

    const-string v4, "ajh.getPic"

    const-string v11, "\u6587\u4ef6\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v4, v11}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    move-object v2, v3

    :cond_10
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_3

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    const/4 v3, 0x0

    invoke-static {v6, v8, v9, v2, v3}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;JLcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)V

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/lyric/KwImage;->c(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    new-instance v3, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    invoke-direct {v3}, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;-><init>()V

    iget-object v2, v2, Lcn/kuwo/base/http/HttpResult;->c:[B

    iput-object v2, v3, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->b:Z

    move-object v2, v3

    goto/16 :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v2, 0x11

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    sget-object v3, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    if-ne v2, v3, :cond_5

    sget-object v2, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->b:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    if-ne v2, p2, :cond_3

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->filterForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->filterForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_ab.kpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "\u672a\u77e5\u6b4c\u624b"

    iget-object v3, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\u672a\u77e5\u4e13\u8f91"

    iget-object v3, p1, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->filterForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v0, ".kpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->filterForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v2, "\u672a\u77e5\u6b4c\u624b"

    iget-object v3, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "\u672a\u77e5\u4e13\u8f91"

    iget-object v3, p1, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->filterForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    sget-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->c:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    if-ne v0, p2, :cond_7

    const-string v0, "_big.kpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->filterForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    sget-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->d:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    if-ne v0, p2, :cond_8

    const-string v0, "_big_land.kpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_8
    const-string v0, "_big_pic.kpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/KwImage;->e:Z

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/kuwo/mod/lyric/ImageUtils;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/Music;[B)V
    .locals 6

    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {p1, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/lyric/KwImage;->b:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/base/cache/CacheCategoryNames;->c:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v2}, Lcn/kuwo/base/cache/CacheCategoryNames;->a()I

    move-result v2

    sget-object v3, Lcn/kuwo/base/cache/CacheCategoryNames;->c:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v3}, Lcn/kuwo/base/cache/CacheCategoryNames;->b()I

    move-result v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;IILjava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    return-void
.end method

.method public b(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    return-object v0
.end method

.method public b(Lcn/kuwo/base/bean/Music;[B)V
    .locals 1

    invoke-virtual {p0, p2}, Lcn/kuwo/mod/lyric/KwImage;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public c(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v0, "ajh.getPic"

    const-string v2, "readBackgrounFromLocal invoke"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/mod/lyric/KwImage;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->mkdir(Ljava/lang/String;)Z

    sget-object v0, Lcn/kuwo/mod/lyric/KwImage;->g:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->mkdir(Ljava/lang/String;)Z

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-static {p1, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/crypt/MD5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcn/kuwo/mod/lyric/KwImage;->f:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v5, Lcn/kuwo/mod/lyric/KwImage;->g:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1

    array-length v0, v6

    if-lez v0, :cond_1

    array-length v7, v6

    move v0, v3

    :goto_0
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "ajh.getpic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5728cache\u76ee\u5f55\u4e0b\u627e\u5230\u4e86 size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/kuwo/mod/lyric/KwImage;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v6, "backgroundChange"

    invoke-static {v0, v6, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Ljava/io/File;)[B

    move-result-object v0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x5

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v7

    sget-object v8, Lcn/kuwo/core/messagemgr/MessageID;->u:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v9, Lcn/kuwo/mod/lyric/KwImage$1;

    invoke-direct {v9, p0, p1, v6}, Lcn/kuwo/mod/lyric/KwImage$1;-><init>(Lcn/kuwo/mod/lyric/KwImage;Lcn/kuwo/base/bean/Music;I)V

    invoke-virtual {v7, v8, v9}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_2
    :goto_2
    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_5

    array-length v2, v6

    if-lez v2, :cond_5

    array-length v7, v6

    move v2, v3

    :goto_3
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    sget v0, Lcn/kuwo/mod/lyric/KwImage;->d:I

    add-int/lit8 v6, v0, 0x1

    sput v6, Lcn/kuwo/mod/lyric/KwImage;->d:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v0, v6

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Ljava/io/File;)[B

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    const-string v0, "ajh.getpic"

    const-string v2, "\u5728picture\u76ee\u5f55\u4e0b\u627e\u5230\u4e86"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v2, "backgroundChange"

    invoke-static {v0, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Ljava/io/File;)[B

    move-result-object v0

    :cond_6
    :goto_4
    if-eqz v0, :cond_9

    new-instance v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    invoke-direct {v1}, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;-><init>()V

    iput-boolean v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->b:Z

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    sget v0, Lcn/kuwo/mod/lyric/KwImage;->d:I

    const v2, 0x3fffffff    # 1.9999999f

    if-ne v0, v2, :cond_7

    sput v3, Lcn/kuwo/mod/lyric/KwImage;->d:I

    :cond_7
    :goto_5
    return-object v1

    :cond_8
    sget v0, Lcn/kuwo/mod/lyric/KwImage;->d:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcn/kuwo/mod/lyric/KwImage;->d:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Ljava/io/File;)[B

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v0, "ajh.getPic"

    const-string v2, "\u672a\u627e\u5230\u672c\u5730\u7f13\u5b58"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object v0, v1

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public e(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->fileReadBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/lyric/KwImage;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    sget-object v3, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    if-ne v2, v3, :cond_1

    sget-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->b:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->fileReadBytes(Ljava/lang/String;)[B

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    invoke-direct {v1}, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->b:Z

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    move-object v0, v1

    goto :goto_0
.end method
