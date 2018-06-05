.class Lcn/kuwo/mod/list/CloudTest$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/CloudTest;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/CloudTest;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudTest$1;->a:Lcn/kuwo/mod/list/CloudTest;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudTest$1;->a:Lcn/kuwo/mod/list/CloudTest;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudTest;->a(Lcn/kuwo/mod/list/CloudTest;)Lcn/kuwo/mod/list/CloudTest$TestCase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudTest$1;->a:Lcn/kuwo/mod/list/CloudTest;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudTest;->a(Lcn/kuwo/mod/list/CloudTest;)Lcn/kuwo/mod/list/CloudTest$TestCase;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/list/CloudTest$TestCase;->b()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudTest$1;->a:Lcn/kuwo/mod/list/CloudTest;

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudTest$1;->a:Lcn/kuwo/mod/list/CloudTest;

    invoke-static {v1}, Lcn/kuwo/mod/list/CloudTest;->a(Lcn/kuwo/mod/list/CloudTest;)Lcn/kuwo/mod/list/CloudTest$TestCase;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/list/CloudTest$TestCase;->a(Lcn/kuwo/mod/list/CloudTest$TestCase;)Lcn/kuwo/mod/list/CloudTest$TestCase;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/CloudTest;->a(Lcn/kuwo/mod/list/CloudTest;Lcn/kuwo/mod/list/CloudTest$TestCase;)Lcn/kuwo/mod/list/CloudTest$TestCase;

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudTest$1;->a:Lcn/kuwo/mod/list/CloudTest;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudTest;->a(Lcn/kuwo/mod/list/CloudTest;)Lcn/kuwo/mod/list/CloudTest$TestCase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudTest$1;->a:Lcn/kuwo/mod/list/CloudTest;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudTest;->a(Lcn/kuwo/mod/list/CloudTest;)Lcn/kuwo/mod/list/CloudTest$TestCase;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/list/CloudTest$TestCase;->a()V

    :cond_1
    return-void
.end method
