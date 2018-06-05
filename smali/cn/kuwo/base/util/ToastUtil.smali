.class public Lcn/kuwo/base/util/ToastUtil;
.super Ljava/lang/Object;


# static fields
.field public static final BACK_TOAST:I = 0x4

.field public static final BRIGHTNESS:I = 0x6

.field public static final DEFAULT_TOAST:I = 0x0

.field public static final FAIL_TOAST:I = 0x2

.field public static final FORWARD_TOAST:I = 0x3

.field public static final SUCCESS_TOAST:I = 0x1

.field public static final VOLUME_TOAST:I = 0x5

.field private static inflater:Landroid/view/LayoutInflater;

.field private static final mainThreadId:J

.field private static progressToat:Landroid/widget/Toast;

.field private static specialToast:Landroid/widget/Toast;

.field private static toast:Landroid/widget/Toast;

.field private static toasts:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-object v2, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    sput-object v2, Lcn/kuwo/base/util/ToastUtil;->toasts:Landroid/widget/Toast;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/base/util/ToastUtil;->mainThreadId:J

    sput-object v2, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    sput-object v2, Lcn/kuwo/base/util/ToastUtil;->inflater:Landroid/view/LayoutInflater;

    sput-object v2, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/kuwo/base/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(III)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/kuwo/base/util/ToastUtil;->showProgressToast(III)V

    return-void
.end method

.method public static createView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->inflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcn/kuwo/base/util/ToastUtil;->inflater:Landroid/view/LayoutInflater;

    :cond_0
    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static show(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/util/ToastUtil$1;

    invoke-direct {v1, p0}, Lcn/kuwo/base/util/ToastUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static showDefault(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/util/ToastUtil$2;

    invoke-direct {v1, p0}, Lcn/kuwo/base/util/ToastUtil$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static showFail(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/util/ToastUtil$4;

    invoke-direct {v1, p0}, Lcn/kuwo/base/util/ToastUtil$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static showLightToast(II)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/util/ToastUtil$6;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/base/util/ToastUtil$6;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static showNormal(Ljava/lang/String;I)V
    .locals 3

    const-string v0, ""

    const-string v1, "key_pref_toast_show"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isMainActivityShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static showProgressToast(III)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    if-nez v0, :cond_2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/Toast;

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    sget-object v1, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v1, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    :cond_2
    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b009e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/uilib/RoundProgressBar;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/uilib/RoundProgressBar;->setMax(I)V

    invoke-virtual {v0, p0}, Lcn/kuwo/base/uilib/RoundProgressBar;->setProgress(I)V

    const v0, 0x7f0b009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showSpecialToast(Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, ""

    const-string v1, "key_pref_toast_show"

    invoke-static {v0, v1, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isMainActivityShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_2
    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_3
    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    if-nez v0, :cond_4

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/Toast;

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    sget-object v1, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v1, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    :cond_4
    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showSuccess(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/util/ToastUtil$3;

    invoke-direct {v1, p0}, Lcn/kuwo/base/util/ToastUtil$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method private static showToast(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, ""

    const-string v1, "key_pref_toast_show"

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isMainActivityShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->progressToat:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_2
    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->specialToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_3
    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_4

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    sget-object v0, Lcn/kuwo/base/util/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showVolumeToast(II)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/util/ToastUtil$5;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/base/util/ToastUtil$5;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
