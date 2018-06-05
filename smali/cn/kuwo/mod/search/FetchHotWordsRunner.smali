.class public Lcn/kuwo/mod/search/FetchHotWordsRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile a:Z

.field public volatile b:I

.field private c:Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->b:I

    new-instance v0, Lcn/kuwo/mod/search/FetchHotWordsRunner$1;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/search/FetchHotWordsRunner$1;-><init>(Lcn/kuwo/mod/search/FetchHotWordsRunner;)V

    iput-object v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->c:Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/search/FetchHotWordsRunner;)Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->c:Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    const/4 v1, 0x2

    new-instance v4, Lcn/kuwo/mod/search/FetchHotWords;

    invoke-direct {v4}, Lcn/kuwo/mod/search/FetchHotWords;-><init>()V

    invoke-virtual {v4}, Lcn/kuwo/mod/search/FetchHotWords;->a()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/search/FetchHotWordsRunner;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, p1}, Lcn/kuwo/mod/search/FetchHotWords;->a(I)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a:Z

    if-nez v0, :cond_1

    if-nez v3, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a(ILjava/util/List;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a(ILjava/util/List;)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private a(ILjava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcn/kuwo/mod/search/FetchHotWordsRunner;->b:I

    invoke-direct {p0, v0}, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a(I)V

    :cond_0
    return-void
.end method
