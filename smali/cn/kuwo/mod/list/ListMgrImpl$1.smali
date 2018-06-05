.class Lcn/kuwo/mod/list/ListMgrImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/util/KwTimer$Listener;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$1;->a:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$1;->a:Lcn/kuwo/mod/list/ListMgrImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z

    return-void
.end method
