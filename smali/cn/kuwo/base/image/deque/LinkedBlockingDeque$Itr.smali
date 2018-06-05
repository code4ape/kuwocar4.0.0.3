.class Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Itr;
.super Lcn/kuwo/base/image/deque/LinkedBlockingDeque$AbstractItr;


# instance fields
.field final synthetic d:Lcn/kuwo/base/image/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcn/kuwo/base/image/deque/LinkedBlockingDeque;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Itr;->d:Lcn/kuwo/base/image/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$AbstractItr;-><init>(Lcn/kuwo/base/image/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/base/image/deque/LinkedBlockingDeque;Lcn/kuwo/base/image/deque/LinkedBlockingDeque$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Itr;-><init>(Lcn/kuwo/base/image/deque/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method a()Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Itr;->d:Lcn/kuwo/base/image/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method a(Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;)Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;
    .locals 1

    iget-object v0, p1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    return-object v0
.end method
