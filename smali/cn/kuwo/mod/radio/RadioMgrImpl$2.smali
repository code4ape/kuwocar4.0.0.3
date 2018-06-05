.class Lcn/kuwo/mod/radio/RadioMgrImpl$2;
.super Lcn/kuwo/core/observers/ext/PlayControlObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/radio/RadioMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/radio/RadioMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$2;->a:Lcn/kuwo/mod/radio/RadioMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IPlayControlObserver_Play(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$2;->a:Lcn/kuwo/mod/radio/RadioMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/radio/RadioMgrImpl;->b(Lcn/kuwo/mod/radio/RadioMgrImpl;)V

    return-void
.end method
