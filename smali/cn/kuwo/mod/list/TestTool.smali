.class public Lcn/kuwo/mod/list/TestTool;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Z)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "Test Case Error"

    const-string v1, "\u51fa\u73b0\u9519\u8bef\u4e86"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
