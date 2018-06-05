.class Lcn/kuwo/ui/fragment/LocalMusicFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$8;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b003b -> :sswitch_0
        0x7f0b006b -> :sswitch_0
    .end sparse-switch
.end method
