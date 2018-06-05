.class public Lcn/kuwo/ui/fragment/BaseOnlineFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;

# interfaces
.implements Lcn/kuwo/ui/StateUtils$OnScreenClickListener;


# static fields
.field public static final DATA_EMPTY:I = 0x3

.field public static final DATA_ERROR:I = 0x1

.field private static final DEFUALT_DIGEST:Ljava/lang/String; = "5"

.field private static final DEFUALT_ONLINE_TYPE:Lcn/kuwo/mod/quku/OnlineType;

.field public static final ERROR:I = 0x4

.field public static final NET_UNAVAILABLE:I = 0x2

.field public static final WIFI_ONLY:I = 0x5


# instance fields
.field private _onRequestListener:Lcn/kuwo/mod/quku/OnRequestListener;

.field private classify:Ljava/lang/String;

.field private count:I

.field private digest:Ljava/lang/String;

.field private id:J

.field private key:Ljava/lang/String;

.field private onlineName:Ljava/lang/String;

.field private onlineType:Lcn/kuwo/mod/quku/OnlineType;

.field private page:I

.field private playlistCount:I

.field rootInfo:Lcn/kuwo/base/bean/online/OnlineRootInfo;

.field private songCount:I

.field protected stateUtils:Lcn/kuwo/ui/StateUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcn/kuwo/mod/quku/OnlineType;->d:Lcn/kuwo/mod/quku/OnlineType;

    sput-object v0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->DEFUALT_ONLINE_TYPE:Lcn/kuwo/mod/quku/OnlineType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->count:I

    sget-object v0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->DEFUALT_ONLINE_TYPE:Lcn/kuwo/mod/quku/OnlineType;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onlineType:Lcn/kuwo/mod/quku/OnlineType;

    const-string v0, "5"

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->digest:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->playlistCount:I

    iput v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->songCount:I

    iput-object v2, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    iput-object v2, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->rootInfo:Lcn/kuwo/base/bean/online/OnlineRootInfo;

    new-instance v0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment$1;-><init>(Lcn/kuwo/ui/fragment/BaseOnlineFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->_onRequestListener:Lcn/kuwo/mod/quku/OnRequestListener;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/BaseOnlineFragment;)Lcn/kuwo/mod/quku/OnlineType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onlineType:Lcn/kuwo/mod/quku/OnlineType;

    return-object v0
.end method


# virtual methods
.method public getDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->digest:Ljava/lang/String;

    return-object v0
.end method

.method protected getOnlineId()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->id:J

    return-wide v0
.end method

.method public getOnlineName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onlineName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineType()Lcn/kuwo/mod/quku/OnlineType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onlineType:Lcn/kuwo/mod/quku/OnlineType;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->page:I

    return v0
.end method

.method protected hasMore()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->rootInfo:Lcn/kuwo/base/bean/online/OnlineRootInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->rootInfo:Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->b()Lcn/kuwo/base/bean/online/BaseOnlineSection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->b()I

    move-result v1

    iget v2, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->count:I

    iget v3, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->page:I

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected load()V
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->page:I

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->load(I)V

    return-void
.end method

.method protected load(I)V
    .locals 4

    iput p1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->page:I

    iget-wide v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->id:J

    iget-object v2, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->digest:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onlineType:Lcn/kuwo/mod/quku/OnlineType;

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/mod/quku/OnlineExtra;->a(JLjava/lang/String;Lcn/kuwo/mod/quku/OnlineType;)Lcn/kuwo/mod/quku/OnlineExtra;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/quku/OnlineExtra;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->classify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/quku/OnlineExtra;->a(Ljava/lang/String;)V

    iget v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->songCount:I

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/quku/OnlineExtra;->b(I)V

    iget v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->playlistCount:I

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/quku/OnlineExtra;->a(I)V

    iget v1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->count:I

    invoke-static {v0, p1, v1}, Lcn/kuwo/mod/quku/OnlineUrlUtils;->a(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->_onRequestListener:Lcn/kuwo/mod/quku/OnRequestListener;

    invoke-static {v1, v0, v2}, Lcn/kuwo/mod/quku/OnlineTask;->get(Ljava/lang/String;Lcn/kuwo/mod/quku/OnlineExtra;Lcn/kuwo/mod/quku/OnRequestListener;)V

    const-string v0, "\u827e\u8fe6\u53f7"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onFail(I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->hideLoadingMore()V

    iget v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->page:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->showEmpty()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->showServerError()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->showNetError()V

    goto :goto_0
.end method

.method protected onLoading()V
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->page:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->showLoading()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->showLoadingMore()V

    goto :goto_0
.end method

.method public onScreenClick()V
    .locals 0

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->load()V

    return-void
.end method

.method protected onSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->b()Lcn/kuwo/base/bean/online/BaseOnlineSection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->b()Lcn/kuwo/base/bean/online/BaseOnlineSection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onFail(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->hideLoadingMore()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->hideStateView()V

    iget v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->page:I

    const-string v0, "\u827e\u8fe6\u53f7"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->getKuwoBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v0, Lcn/kuwo/ui/StateUtils;

    invoke-direct {v0, p1, p0}, Lcn/kuwo/ui/StateUtils;-><init>(Landroid/view/View;Lcn/kuwo/ui/StateUtils$OnScreenClickListener;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    if-eqz v2, :cond_2

    const-string v0, "key_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "key_digest"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "key_type"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/quku/OnlineType;

    const-string v3, "key_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "classify"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_song_count"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->songCount:I

    const-string v7, "key_name"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onlineName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setOnlineKey(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setClassify(Ljava/lang/String;)V

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->DEFUALT_ONLINE_TYPE:Lcn/kuwo/mod/quku/OnlineType;

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "5"

    :cond_1
    invoke-virtual {p0, v4, v5}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setOnlineId(J)V

    invoke-virtual {p0, v1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setDigest(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setOnlineType(Lcn/kuwo/mod/quku/OnlineType;)V

    :cond_2
    return-void
.end method

.method protected setClassify(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->classify:Ljava/lang/String;

    return-void
.end method

.method protected setCount(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->count:I

    return-void
.end method

.method protected setDigest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->digest:Ljava/lang/String;

    return-void
.end method

.method protected setLoadingMoreEnable(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    new-instance v0, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment$2;-><init>(Lcn/kuwo/ui/fragment/BaseOnlineFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected setOnlineId(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->id:J

    return-void
.end method

.method protected setOnlineKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->key:Ljava/lang/String;

    return-void
.end method

.method protected setOnlineType(Lcn/kuwo/mod/quku/OnlineType;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onlineType:Lcn/kuwo/mod/quku/OnlineType;

    return-void
.end method
