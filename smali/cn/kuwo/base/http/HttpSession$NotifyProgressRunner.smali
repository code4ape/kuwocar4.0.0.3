.class Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field a:I

.field b:I

.field c:[B

.field d:I

.field final synthetic e:Lcn/kuwo/base/http/HttpSession;


# direct methods
.method constructor <init>(Lcn/kuwo/base/http/HttpSession;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->e:Lcn/kuwo/base/http/HttpSession;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II[BI)Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;
    .locals 0

    iput p1, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->a:I

    iput p2, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->b:I

    iput-object p3, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->c:[B

    iput p4, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->d:I

    return-object p0
.end method

.method public call()V
    .locals 7

    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->e:Lcn/kuwo/base/http/HttpSession;

    iget-boolean v0, v0, Lcn/kuwo/base/http/HttpSession;->p:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->e:Lcn/kuwo/base/http/HttpSession;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->e:Lcn/kuwo/base/http/HttpSession;

    iget-object v0, v0, Lcn/kuwo/base/http/HttpSession;->x:Lcn/kuwo/base/http/IHttpNotify;

    iget-object v1, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->e:Lcn/kuwo/base/http/HttpSession;

    iget v2, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->a:I

    iget v3, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->b:I

    iget-object v4, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->c:[B

    iget v5, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->d:I

    invoke-interface/range {v0 .. v5}, Lcn/kuwo/base/http/IHttpNotify;->IHttpNotifyProgress(Lcn/kuwo/base/http/HttpSession;II[BI)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/http/HttpSession$NotifyProgressRunner;->c:[B

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
