.class public Lcn/kuwo/base/util/KeyBoardUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncShowKeyboard(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    const/16 v1, 0x12c

    new-instance v2, Lcn/kuwo/base/util/KeyBoardUtils$1;

    invoke-direct {v2, p0}, Lcn/kuwo/base/util/KeyBoardUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method public static hideKeyboard()V
    .locals 1

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KeyBoardUtils;->hideKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public static hideKeyboard(Landroid/app/Activity;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

	
	invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0
	
	invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
	
    goto :goto_0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static setFocusAndOpenIme(Landroid/widget/EditText;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    const/16 v1, 0x12c

    new-instance v2, Lcn/kuwo/base/util/KeyBoardUtils$2;

    invoke-direct {v2, p0}, Lcn/kuwo/base/util/KeyBoardUtils$2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static showKeyboard(Landroid/view/View;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method
