.class Lcn/kuwo/ui/fragment/MvDownloadedFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvDownloadedFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvDownloadedFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvDownloadedFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvDownloadedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 1

    check-cast p1, Lcn/kuwo/ui/adapter/LocalMvAdapter;

    invoke-virtual {p1}, Lcn/kuwo/ui/adapter/LocalMvAdapter;->getMusics()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/kuwo/ui/fragment/MvFragment;->playMV(Ljava/util/List;I)V

    return-void
.end method
