.class Lcn/kuwo/ui/fragment/MvFragment$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/kuwo/ui/fragment/MvFragment;->access$1502(Lcn/kuwo/ui/fragment/MvFragment;J)J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$400(Lcn/kuwo/ui/fragment/MvFragment;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$400(Lcn/kuwo/ui/fragment/MvFragment;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$1400(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$700(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$1600(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$1700(Lcn/kuwo/ui/fragment/MvFragment;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v2}, Lcn/kuwo/ui/fragment/MvFragment;->access$200(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v3}, Lcn/kuwo/ui/fragment/MvFragment;->access$1800(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcn/kuwo/ui/fragment/MvFragment;->loadMv(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;Z)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$1900(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2000(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    sget-object v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-static {v0, v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$2100(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2200(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    sget-object v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-static {v0, v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$2100(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2200(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2300(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto :goto_0

    :sswitch_a
    const-string v0, "MP4"

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v2}, Lcn/kuwo/ui/fragment/MvFragment;->access$1800(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    if-ne v2, v3, :cond_2

    const-string v0, "MP4L"

    :cond_2
    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v2}, Lcn/kuwo/ui/fragment/MvFragment;->access$2400(Lcn/kuwo/ui/fragment/MvFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/MvFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u662f\u5426\u5220\u9664<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v3}, Lcn/kuwo/ui/fragment/MvFragment;->access$200(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/Music;

    move-result-object v3

    iget-object v3, v3, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5220\u9664"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcn/kuwo/ui/fragment/MvFragment$10$1;

    invoke-direct {v5, p0}, Lcn/kuwo/ui/fragment/MvFragment$10$1;-><init>(Lcn/kuwo/ui/fragment/MvFragment$10;)V

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v2}, Lcn/kuwo/ui/fragment/MvFragment;->access$2500(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v3}, Lcn/kuwo/ui/fragment/MvFragment;->access$200(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/Music;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string v0, "\u5df2\u5b58\u5728\u66f4\u9ad8\u97f3\u8d28"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "\u5df2\u6dfb\u52a0\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, v6, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$download$DownloadState:[I

    invoke-virtual {v0}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "\u4e0b\u8f7d\u4efb\u52a1\u5df2\u6682\u505c"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v0

    invoke-interface {v0, v6}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->b(Lcn/kuwo/base/bean/DownloadTask;)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/MvFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u662f\u5426\u5220\u9664<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v3}, Lcn/kuwo/ui/fragment/MvFragment;->access$200(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/Music;

    move-result-object v3

    iget-object v3, v3, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5220\u9664"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcn/kuwo/ui/fragment/MvFragment$10$2;

    invoke-direct {v5, p0, v6}, Lcn/kuwo/ui/fragment/MvFragment$10$2;-><init>(Lcn/kuwo/ui/fragment/MvFragment$10;Lcn/kuwo/base/bean/DownloadTask;)V

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "\u4e0b\u8f7d\u4efb\u52a1\u5df2\u5f00\u59cb"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v0

    invoke-interface {v0, v6}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->a(Lcn/kuwo/base/bean/DownloadTask;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2600(Lcn/kuwo/ui/fragment/MvFragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2200(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2700(Lcn/kuwo/ui/fragment/MvFragment;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2800(Lcn/kuwo/ui/fragment/MvFragment;Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_c
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2600(Lcn/kuwo/ui/fragment/MvFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$2200(Lcn/kuwo/ui/fragment/MvFragment;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b0004 -> :sswitch_c
        0x7f0b0011 -> :sswitch_1
        0x7f0b0015 -> :sswitch_6
        0x7f0b0017 -> :sswitch_5
        0x7f0b0038 -> :sswitch_b
        0x7f0b003a -> :sswitch_c
        0x7f0b003b -> :sswitch_0
        0x7f0b003c -> :sswitch_a
        0x7f0b003d -> :sswitch_3
        0x7f0b003e -> :sswitch_2
        0x7f0b0041 -> :sswitch_9
        0x7f0b0044 -> :sswitch_8
        0x7f0b0045 -> :sswitch_7
        0x7f0b0046 -> :sswitch_4
        0x7f0b0049 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
