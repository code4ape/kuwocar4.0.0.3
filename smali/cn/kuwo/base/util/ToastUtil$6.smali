.class final Lcn/kuwo/base/util/ToastUtil$6;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic val$max:I

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/util/ToastUtil$6;->val$progress:I

    iput p2, p0, Lcn/kuwo/base/util/ToastUtil$6;->val$max:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget v0, p0, Lcn/kuwo/base/util/ToastUtil$6;->val$progress:I

    iget v1, p0, Lcn/kuwo/base/util/ToastUtil$6;->val$max:I

    const v2, 0x7f02004e

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/util/ToastUtil;->access$100(III)V

    return-void
.end method
