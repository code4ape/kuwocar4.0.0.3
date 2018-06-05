.class final Lcn/kuwo/ui/dialog/DialogUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/dialog/DialogUtils$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p2, p0, Lcn/kuwo/ui/dialog/DialogUtils$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/ui/dialog/DialogUtils$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcn/kuwo/ui/dialog/DialogUtils$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcn/kuwo/ui/dialog/DialogUtils$1;->val$dialog:Landroid/app/Dialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/dialog/DialogUtils$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcn/kuwo/ui/dialog/DialogUtils$1;->val$dialog:Landroid/app/Dialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/kuwo/ui/dialog/DialogUtils$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcn/kuwo/ui/dialog/DialogUtils$1;->val$dialog:Landroid/app/Dialog;

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b0076 -> :sswitch_0
        0x7f0b009b -> :sswitch_1
        0x7f0b009c -> :sswitch_2
    .end sparse-switch
.end method
