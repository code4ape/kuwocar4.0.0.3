.class public Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/LinkedList;ZLjava/lang/String;Ljava/lang/String;)Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->a:Ljava/util/LinkedList;

    iput-boolean p2, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->b:Z

    iput-object p3, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final call()V
    .locals 9

    const/4 v8, 0x6

    const/4 v6, 0x0

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v6

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;

    iget-object v0, v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v5, :cond_1

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageManager;->a()Lcn/kuwo/base/imageloader/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->d:Ljava/lang/String;

    iget-boolean v2, v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->d:Z

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/imageloader/ImageManager;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_1
    :goto_1
    iget-object v0, v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iget-boolean v1, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->b:Z

    iget-object v2, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->d:Ljava/lang/String;

    iget-object v4, v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->b:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lcn/kuwo/base/imageloader/ImageLoadListener;->onGetPicFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageManager;->a()Lcn/kuwo/base/imageloader/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->d:Ljava/lang/String;

    iget-boolean v2, v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->d:Z

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/imageloader/ImageManager;->b(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    :cond_3
    iput-object v6, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->a:Ljava/util/LinkedList;

    iput-object v6, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->c:Ljava/lang/String;

    iput-object v6, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->d:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->f()I

    move-result v0

    if-lt v0, v8, :cond_4

    :goto_2
    return-void

    :cond_4
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->g()[Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->f()I

    move-result v0

    if-lt v0, v8, :cond_5

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->g()[Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->f()I

    move-result v2

    aput-object p0, v0, v2

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->h()I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
