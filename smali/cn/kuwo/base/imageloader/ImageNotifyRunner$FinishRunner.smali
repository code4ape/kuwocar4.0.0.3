.class public Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field private a:Lcn/kuwo/base/imageloader/ImageLoadListener;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/base/imageloader/ImageLoadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iput-boolean p2, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->b:Z

    iput-object p3, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final call()V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x0

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iget-boolean v1, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->b:Z

    iget-object v2, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->e:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lcn/kuwo/base/imageloader/ImageLoadListener;->onGetPicFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iput-object v5, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->c:Ljava/lang/String;

    iput-object v5, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->d:Ljava/lang/String;

    iput-object v5, p0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->e:Ljava/lang/Object;

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c()I

    move-result v0

    if-lt v0, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->d()[Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c()I

    move-result v0

    if-lt v0, v6, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->d()[Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c()I

    move-result v2

    aput-object p0, v0, v2

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->e()I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
