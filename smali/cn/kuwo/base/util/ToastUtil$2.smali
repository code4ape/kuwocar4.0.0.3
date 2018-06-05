.class final Lcn/kuwo/base/util/ToastUtil$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/ToastUtil$2;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/util/ToastUtil$2;->val$content:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/base/util/ToastUtil;->showSpecialToast(Ljava/lang/String;I)V

    return-void
.end method
