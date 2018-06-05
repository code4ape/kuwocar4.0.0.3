.class final Lcn/kuwo/base/util/KwExceptionHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/util/KwExceptionHandler;->access$000()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/kuwo/base/util/KwExceptionHandler;->access$102(Z)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
