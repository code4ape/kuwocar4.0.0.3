.class public abstract Lcn/kuwo/ui/adapter/BaseKuwoAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field private _onClickListener:Landroid/view/View$OnClickListener;

.field private onItemClickListener:Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$1;-><init>(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;)V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->_onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onItemClickListener:Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public abstract getItem(I)Ljava/lang/Object;
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 2

    iget-object v0, p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onItemClickListener:Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;

    return-void
.end method
