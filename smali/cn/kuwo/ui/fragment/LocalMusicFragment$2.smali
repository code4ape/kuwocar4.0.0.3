.class Lcn/kuwo/ui/fragment/LocalMusicFragment$2;
.super Lcn/kuwo/core/observers/ext/ListObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$2;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/ListObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IListObserver_changeName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/kuwo/core/observers/ext/ListObserver;->IListObserver_changeName(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$2;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$000(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    return-void
.end method

.method public IListObserver_deleteList(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/ListObserver;->IListObserver_deleteList(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$2;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$000(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    return-void
.end method

.method public IListObserver_initComplete()V
    .locals 0

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/ListObserver;->IListObserver_initComplete()V

    return-void
.end method

.method public IListObserver_insertList(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/ListObserver;->IListObserver_insertList(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$2;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$000(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    return-void
.end method

.method public IListObserver_insertOverflow(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/ListObserver;->IListObserver_insertOverflow(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$2;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$000(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    return-void
.end method

.method public IListObserver_loadComplete()V
    .locals 1

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/ListObserver;->IListObserver_loadComplete()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$2;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$000(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    return-void
.end method

.method public IListObserver_startLoad()V
    .locals 0

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/ListObserver;->IListObserver_startLoad()V

    return-void
.end method

.method public IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcn/kuwo/core/observers/ext/ListObserver;->IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$2;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$000(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    return-void
.end method
