.class Lcn/kuwo/base/image/ListImageLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcn/kuwo/base/image/ListImageLoader;


# direct methods
.method constructor <init>(Lcn/kuwo/base/image/ListImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/image/ListImageLoader$1;->a:Lcn/kuwo/base/image/ListImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ListImageLoader$1;->a:Lcn/kuwo/base/image/ListImageLoader;

    invoke-virtual {v0, p2}, Lcn/kuwo/base/image/ListImageLoader;->a(I)V

    return-void
.end method
