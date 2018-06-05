.class public Lcn/kuwo/base/imageloader/AsyncImageLoader;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcn/kuwo/base/imageloader/AsyncImageLoader;


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Lcn/kuwo/base/imageloader/ImageLoadImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/imageloader/AsyncImageLoader;

    invoke-direct {v0}, Lcn/kuwo/base/imageloader/AsyncImageLoader;-><init>()V

    sput-object v0, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a:Lcn/kuwo/base/imageloader/AsyncImageLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader;->b:Ljava/util/HashMap;

    iput-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader;->c:Lcn/kuwo/base/imageloader/ImageLoadImpl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader;->b:Ljava/util/HashMap;

    new-instance v0, Lcn/kuwo/base/imageloader/ImageLoadImpl;

    invoke-direct {v0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader;->c:Lcn/kuwo/base/imageloader/ImageLoadImpl;

    return-void
.end method

.method private a(Lcn/kuwo/base/bean/MusicList;ZZ)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    invoke-virtual {p1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v3

    invoke-virtual {v3}, Lcn/kuwo/base/bean/Music;->a()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_a

    invoke-virtual {p1, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    move-object v1, v0

    :goto_3
    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcn/kuwo/mod/lyric/KwImage;->d(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageManager;->a()Lcn/kuwo/base/imageloader/ImageManager;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Lcn/kuwo/base/imageloader/ImageManager;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {p1, v3}, Lcn/kuwo/base/bean/MusicList;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageManager;->a()Lcn/kuwo/base/imageloader/ImageManager;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Lcn/kuwo/base/imageloader/ImageManager;->b(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    :cond_5
    new-instance v3, Lcn/kuwo/mod/lyric/KwImage;

    invoke-direct {v3}, Lcn/kuwo/mod/lyric/KwImage;-><init>()V

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v3, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)V

    sget-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->a:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    invoke-virtual {v3, v1, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_6

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageManager;->a()Lcn/kuwo/base/imageloader/ImageManager;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lcn/kuwo/base/imageloader/ImageManager;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_7

    invoke-virtual {p1, v4}, Lcn/kuwo/base/bean/MusicList;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageManager;->a()Lcn/kuwo/base/imageloader/ImageManager;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lcn/kuwo/base/imageloader/ImageManager;->b(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    :cond_7
    sget-object v0, Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;->b:Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;

    invoke-virtual {v3, v1, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/KwImage$PIC_TYPE;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p2, :cond_8

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageManager;->a()Lcn/kuwo/base/imageloader/ImageManager;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Lcn/kuwo/base/imageloader/ImageManager;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_9

    invoke-virtual {p1, v1}, Lcn/kuwo/base/bean/MusicList;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageManager;->a()Lcn/kuwo/base/imageloader/ImageManager;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Lcn/kuwo/base/imageloader/ImageManager;->b(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6

    :cond_9
    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto/16 :goto_3

    :cond_b
    move-object v0, v2

    goto/16 :goto_2
.end method

.method static synthetic a(Lcn/kuwo/base/imageloader/AsyncImageLoader;Lcn/kuwo/base/bean/MusicList;ZZ)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a(Lcn/kuwo/base/bean/MusicList;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcn/kuwo/base/imageloader/AsyncImageLoader;
    .locals 1

    sget-object v0, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a:Lcn/kuwo/base/imageloader/AsyncImageLoader;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/base/imageloader/AsyncImageLoader;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader;->b:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/kuwo/base/cache/CacheCategoryNames;Lcn/kuwo/base/imageloader/ImageLoadListener;Z)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader;->c:Lcn/kuwo/base/imageloader/ImageLoadImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Ljava/lang/String;Lcn/kuwo/base/cache/CacheCategoryNames;Lcn/kuwo/base/imageloader/ImageLoadListener;Ljava/lang/Object;ZZ)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcn/kuwo/base/cache/CacheCategoryNames;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v2

    invoke-virtual {p2}, Lcn/kuwo/base/cache/CacheCategoryNames;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcn/kuwo/base/cache/CacheMgr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v2

    invoke-virtual {p2}, Lcn/kuwo/base/cache/CacheCategoryNames;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcn/kuwo/base/cache/CacheMgr;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
