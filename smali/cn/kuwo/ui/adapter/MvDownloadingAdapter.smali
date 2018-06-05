.class public Lcn/kuwo/ui/adapter/MvDownloadingAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private downloadTasks:Ljava/util/List;

.field private listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

.field onClickListener:Landroid/view/View$OnClickListener;

.field private onItemDeleteClickListener:Lcn/kuwo/ui/adapter/MvDownloadingAdapter$OnItemDeleteClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->downloadTasks:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    new-instance v0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$1;-><init>(Lcn/kuwo/ui/adapter/MvDownloadingAdapter;)V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->context:Landroid/content/Context;

    new-instance v0, Lcn/kuwo/base/image/ListImageLoader;

    invoke-direct {v0}, Lcn/kuwo/base/image/ListImageLoader;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    return-void
.end method

.method static synthetic access$700(Lcn/kuwo/ui/adapter/MvDownloadingAdapter;)Lcn/kuwo/ui/adapter/MvDownloadingAdapter$OnItemDeleteClickListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->onItemDeleteClickListener:Lcn/kuwo/ui/adapter/MvDownloadingAdapter$OnItemDeleteClickListener;

    return-object v0
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/base/bean/DownloadTask;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->downloadTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/DownloadTask;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->getItem(I)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->downloadTasks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->downloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->getItem(I)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    check-cast p1, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$000(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$100(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$200(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$200(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$300(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$300(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v1, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$2;->$SwitchMap$cn$kuwo$mod$download$DownloadState:[I

    iget-object v2, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-virtual {v2}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$600(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    iget-object v3, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->context:Landroid/content/Context;

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget-object v0, v0, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcn/kuwo/base/image/ListImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u6682\u505c\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$500(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;->access$400(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02007d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->context:Landroid/content/Context;

    const v2, 0x7f04000e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter$MvDownloadingViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setOnItemDeleteClickListener(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$OnItemDeleteClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->onItemDeleteClickListener:Lcn/kuwo/ui/adapter/MvDownloadingAdapter$OnItemDeleteClickListener;

    return-void
.end method

.method public update()V
    .locals 1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->downloadTasks:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->notifyDataSetChanged()V

    return-void
.end method
