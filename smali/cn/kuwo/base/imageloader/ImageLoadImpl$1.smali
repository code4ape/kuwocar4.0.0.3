.class Lcn/kuwo/base/imageloader/ImageLoadImpl$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/kuwo/base/imageloader/ImageLoadImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/base/imageloader/ImageLoadImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$1;->a:Lcn/kuwo/base/imageloader/ImageLoadImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;

    if-nez v0, :cond_0

    const-string v0, "SmallPicCacheMgrImpl"

    const-string v1, "[handleMessage] invalid params"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;

    iget-object v1, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "SmallPicCacheMgrImpl"

    const-string v1, "[run] url is empty"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$1;->a:Lcn/kuwo/base/imageloader/ImageLoadImpl;

    invoke-static {v2, v1, v0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$1;->a:Lcn/kuwo/base/imageloader/ImageLoadImpl;

    iget-object v0, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->d:Lcn/kuwo/base/imageloader/ImageLoadListener;

    invoke-static {v2, v1, v0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$1;->a:Lcn/kuwo/base/imageloader/ImageLoadImpl;

    iget-object v0, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->c:[B

    invoke-static {v2, v1, v0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/lang/String;[B)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$1;->a:Lcn/kuwo/base/imageloader/ImageLoadImpl;

    invoke-static {v0, v1}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
