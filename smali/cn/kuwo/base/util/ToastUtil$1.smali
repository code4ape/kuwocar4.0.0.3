.class final Lcn/kuwo/base/util/ToastUtil$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/ToastUtil$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/ToastUtil$1;->val$content:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->access$000(Ljava/lang/String;)V

    return-void
.end method
