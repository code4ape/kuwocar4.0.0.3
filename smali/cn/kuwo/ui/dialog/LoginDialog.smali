.class public Lcn/kuwo/ui/dialog/LoginDialog;
.super Landroid/app/Dialog;


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;

.field private tvLogin:Landroid/widget/TextView;

.field private tvPassword:Landroid/widget/TextView;

.field private tvUsername:Landroid/widget/TextView;

.field private userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcn/kuwo/ui/dialog/LoginDialog$3;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/LoginDialog$3;-><init>(Lcn/kuwo/ui/dialog/LoginDialog;)V

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-direct {p0}, Lcn/kuwo/ui/dialog/LoginDialog;->setView()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcn/kuwo/ui/dialog/LoginDialog$3;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/LoginDialog$3;-><init>(Lcn/kuwo/ui/dialog/LoginDialog;)V

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-direct {p0}, Lcn/kuwo/ui/dialog/LoginDialog;->setView()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcn/kuwo/ui/dialog/LoginDialog$3;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/LoginDialog$3;-><init>(Lcn/kuwo/ui/dialog/LoginDialog;)V

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-direct {p0}, Lcn/kuwo/ui/dialog/LoginDialog;->setView()V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/dialog/LoginDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/dialog/LoginDialog;->login()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/dialog/LoginDialog;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private login()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->tvUsername:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->tvPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcn/kuwo/ui/dialog/LoginDialog;->tvPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u767b\u5f55\u3002\u3002\u3002"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-static {v3, v4}, Lcn/kuwo/mod/userinfo/UserInfoHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method private setView()V
    .locals 4

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060538

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcn/kuwo/ui/dialog/LoginDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b0032

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->tvLogin:Landroid/widget/TextView;

    const v0, 0x7f0b002f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->tvUsername:Landroid/widget/TextView;

    const v0, 0x7f0b0031

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->tvPassword:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->tvPassword:Landroid/widget/TextView;

    new-instance v1, Lcn/kuwo/ui/dialog/LoginDialog$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/dialog/LoginDialog$1;-><init>(Lcn/kuwo/ui/dialog/LoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog;->tvLogin:Landroid/widget/TextView;

    new-instance v1, Lcn/kuwo/ui/dialog/LoginDialog$2;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/dialog/LoginDialog$2;-><init>(Lcn/kuwo/ui/dialog/LoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/dialog/LoginDialog;->userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/dialog/LoginDialog;->userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method
