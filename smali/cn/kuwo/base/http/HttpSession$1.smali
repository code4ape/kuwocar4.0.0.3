.class Lcn/kuwo/base/http/HttpSession$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/http/HttpSession$notifyType;

.field final synthetic b:I

.field final synthetic c:Lcn/kuwo/base/http/HttpSession;


# direct methods
.method constructor <init>(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpSession$notifyType;I)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iput-object p2, p0, Lcn/kuwo/base/http/HttpSession$1;->a:Lcn/kuwo/base/http/HttpSession$notifyType;

    iput p3, p0, Lcn/kuwo/base/http/HttpSession$1;->b:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget-boolean v0, v0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/base/http/HttpSession$2;->a:[I

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession$1;->a:Lcn/kuwo/base/http/HttpSession$notifyType;

    invoke-virtual {v2}, Lcn/kuwo/base/http/HttpSession$notifyType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget-object v0, v0, Lcn/kuwo/base/http/HttpSession;->x:Lcn/kuwo/base/http/IHttpNotify;

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget v3, p0, Lcn/kuwo/base/http/HttpSession$1;->b:I

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget-object v4, v4, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-interface {v0, v2, v3, v4}, Lcn/kuwo/base/http/IHttpNotify;->IHttpNotifyStart(Lcn/kuwo/base/http/HttpSession;ILcn/kuwo/base/http/HttpResult;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget-object v0, v0, Lcn/kuwo/base/http/HttpSession;->x:Lcn/kuwo/base/http/IHttpNotify;

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget-object v3, v3, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-interface {v0, v2, v3}, Lcn/kuwo/base/http/IHttpNotify;->IHttpNotifyFailed(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget-object v0, v0, Lcn/kuwo/base/http/HttpSession;->x:Lcn/kuwo/base/http/IHttpNotify;

    iget-object v2, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget-object v3, p0, Lcn/kuwo/base/http/HttpSession$1;->c:Lcn/kuwo/base/http/HttpSession;

    iget-object v3, v3, Lcn/kuwo/base/http/HttpSession;->z:Lcn/kuwo/base/http/HttpResult;

    invoke-interface {v0, v2, v3}, Lcn/kuwo/base/http/IHttpNotify;->IHttpNotifyFinish(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
