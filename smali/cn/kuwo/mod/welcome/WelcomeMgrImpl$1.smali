.class Lcn/kuwo/mod/welcome/WelcomeMgrImpl$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/welcome/WelcomeMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/welcome/WelcomeMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/welcome/WelcomeMgrImpl$1;->a:Lcn/kuwo/mod/welcome/WelcomeMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/welcome/WelcomeMgrImpl$1;->a:Lcn/kuwo/mod/welcome/WelcomeMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/welcome/WelcomeMgrImpl;->c()V

    return-void
.end method
