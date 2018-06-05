.class Lcn/kuwo/ui/fragment/NowPlayingFragment$3;
.super Lcn/kuwo/core/observers/ext/ListObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/NowPlayingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment$3;->this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/ListObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment$3;->this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->access$200(Lcn/kuwo/ui/fragment/NowPlayingFragment;)V

    return-void
.end method
