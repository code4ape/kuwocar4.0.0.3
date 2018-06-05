.class public Lcn/kuwo/ui/adapter/KuwoLocalAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->items:Ljava/util/List;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->getItem(I)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 8

    const v1, 0x7f020056

    const v0, 0x7f020054

    const/4 v7, 0x1

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->getItem(I)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v5

    const/4 v3, 0x0

    const-string v4, ""

    const v2, 0x7f02008b

    invoke-virtual {v5}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getType()I

    move-result v6

    if-ne v6, v7, :cond_6

    invoke-virtual {v5}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getMusicList()Lcn/kuwo/base/bean/MusicList;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v6

    sget-object v7, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    if-ne v6, v7, :cond_5

    const-string v2, "\u672c\u5730\u97f3\u4e50"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v3

    :goto_0
    move v2, v0

    move-object v0, v4

    :cond_0
    :goto_1
    invoke-static {p1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalViewHolder;->access$000(Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalViewHolder;->access$100(Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalViewHolder;->access$200(Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    const-string v0, "usb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "disk"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f020057

    move-object v1, v3

    goto :goto_0

    :cond_3
    const-string v0, "sd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    move-object v1, v3

    goto :goto_0

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_0

    :cond_5
    sget-object v1, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$1;->$SwitchMap$cn$kuwo$base$bean$ListType:[I

    invoke-virtual {v5}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v5

    invoke-virtual {v5}, Lcn/kuwo/base/bean/ListType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    move v0, v2

    move-object v1, v3

    goto :goto_0

    :pswitch_0
    move-object v1, v3

    goto :goto_0

    :pswitch_1
    move v0, v2

    move-object v1, v3

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020081

    move-object v1, v3

    goto :goto_0

    :pswitch_3
    move v0, v2

    move-object v1, v3

    goto :goto_0

    :pswitch_4
    move v0, v2

    move-object v1, v3

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_7
    move-object v0, v4

    goto :goto_1

    :pswitch_5
    const v2, 0x7f020091

    move-object v0, v4

    goto :goto_1

    :pswitch_6
    const v2, 0x7f02007f

    move-object v0, v4

    goto :goto_1

    :pswitch_7
    const v2, 0x7f020076

    const-string v0, "\u5df2\u6253\u5f00"

    const-string v3, ""

    const-string v4, "download_when_play_setting_enable"

    invoke-static {v3, v4, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "\u5df2\u5173\u95ed"

    goto/16 :goto_1

    :pswitch_8
    move-object v0, v4

    goto/16 :goto_1

    :pswitch_9
    const v2, 0x7f02007c

    move-object v0, v4

    goto/16 :goto_1

    :pswitch_a
    const v2, 0x7f020080

    move-object v0, v4

    goto/16 :goto_1

    :pswitch_b
    const v2, 0x7f020082

    move-object v0, v4

    goto/16 :goto_1

    :pswitch_c
    const v2, 0x7f020083

    invoke-static {}, Lcn/kuwo/mod/userinfo/UserInfoHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_1

    :pswitch_d
    const v2, 0x7f02008c

    move-object v0, v4

    goto/16 :goto_1

    :pswitch_e
    const v2, 0x7f020090

    move-object v0, v4

    goto/16 :goto_1

    :pswitch_f
    const v2, 0x7f020077

    move-object v0, v4

    goto/16 :goto_1

    :cond_9
    move v0, v2

    move-object v1, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    iget-object v0, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->context:Landroid/content/Context;

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalViewHolder;

    invoke-direct {v1, v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->items:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->notifyDataSetChanged()V

    return-void
.end method
