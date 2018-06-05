.class Lcn/kuwo/base/imageloader/ImageLoadImpl$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/kuwo/base/imageloader/ImageLoadImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$2;->b:Lcn/kuwo/base/imageloader/ImageLoadImpl;

    iput-object p2, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;

    iget-object v1, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;

    iget-object v0, v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    const/4 v1, 0x0

    iget-object v4, v4, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->b:Ljava/lang/Object;

    move-object v5, v3

    invoke-interface/range {v0 .. v5}, Lcn/kuwo/base/imageloader/ImageLoadListener;->onGetPicFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    return-void
.end method
