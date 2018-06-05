.class Lcn/kuwo/base/image/ListImageLoader$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field final synthetic a:Lcn/kuwo/base/image/ListImageLoader;


# direct methods
.method constructor <init>(Lcn/kuwo/base/image/ListImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/image/ListImageLoader$2;->a:Lcn/kuwo/base/image/ListImageLoader;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ListImageLoader$2;->a:Lcn/kuwo/base/image/ListImageLoader;

    invoke-virtual {v0, p2}, Lcn/kuwo/base/image/ListImageLoader;->a(I)V

    return-void
.end method
