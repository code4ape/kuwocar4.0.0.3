.class public Lcn/kuwo/base/image/deque/LIFOLinkedBlockingDeque;
.super Lcn/kuwo/base/image/deque/LinkedBlockingDeque;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
