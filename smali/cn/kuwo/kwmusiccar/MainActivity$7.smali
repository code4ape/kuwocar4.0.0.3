.class Lcn/kuwo/kwmusiccar/MainActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/MainActivity;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity$7;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity$7;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/kwmusiccar/MainActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->setMainActivityStatus(I)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->exitApp()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
