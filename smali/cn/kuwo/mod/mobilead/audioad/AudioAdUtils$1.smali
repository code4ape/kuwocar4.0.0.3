.class final Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->b:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    iput-object p3, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->r()Lcn/kuwo/mod/mobilead/IAdMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;->b:Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;

    iget-object v2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->b:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v2}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/mobilead/IAdMgr;->a(Lcn/kuwo/mod/mobilead/IAdMgr$StatisticsType;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
