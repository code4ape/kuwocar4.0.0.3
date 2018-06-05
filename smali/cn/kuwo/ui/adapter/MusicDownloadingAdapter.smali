.class public Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private downloadTasks:Ljava/util/List;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onItemDeleteListener:Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$OnItemDeleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->downloadTasks:Ljava/util/List;

    new-instance v0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$1;-><init>(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;)V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$700(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;)Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$OnItemDeleteListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->onItemDeleteListener:Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$OnItemDeleteListener;

    return-object v0
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/base/bean/DownloadTask;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->downloadTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/DownloadTask;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->getItem(I)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->downloadTasks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->downloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 7

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->getItem(I)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    check-cast p1, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    if-ge p2, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$000(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$100(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$200(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$300(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$300(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v2, v1, Lcn/kuwo/base/bean/DownloadTask;->e:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$300(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$600(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$600(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$2;->$SwitchMap$cn$kuwo$mod$download$DownloadState:[I

    iget-object v2, v1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-virtual {v2}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$300(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v1, v1, Lcn/kuwo/base/bean/DownloadTask;->e:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$300(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6682\u505c\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->context:Landroid/content/Context;

    const v2, 0x7f04000c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$MusicDownloadingViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setOnItemDeleteListener(Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$OnItemDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->onItemDeleteListener:Lcn/kuwo/ui/adapter/MusicDownloadingAdapter$OnItemDeleteListener;

    return-void
.end method

.method public update()V
    .locals 1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->f()Lcn/kuwo/mod/download/IDownloadMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/download/IDownloadMgr;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->downloadTasks:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->notifyDataSetChanged()V

    return-void
.end method
