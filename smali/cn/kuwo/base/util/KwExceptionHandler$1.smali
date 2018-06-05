.class final Lcn/kuwo/base/util/KwExceptionHandler$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/kuwo/base/util/KwExceptionHandler;->checkSendOfflineLog(Z)V

    return-void
.end method
