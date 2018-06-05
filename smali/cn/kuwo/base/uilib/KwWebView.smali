.class public Lcn/kuwo/base/uilib/KwWebView;
.super Landroid/webkit/WebView;


# static fields
.field private static mPublicListener:Lcn/kuwo/base/uilib/KwWebActionListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPrivateListener:Lcn/kuwo/base/uilib/KwWebActionListener;

.field private mWebview:Lcn/kuwo/base/uilib/KwWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, "KwWebView"

    iput-object v0, p0, Lcn/kuwo/base/uilib/KwWebView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/uilib/KwWebView;->mWebview:Lcn/kuwo/base/uilib/KwWebView;

    invoke-direct {p0}, Lcn/kuwo/base/uilib/KwWebView;->initWebView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "KwWebView"

    iput-object v0, p0, Lcn/kuwo/base/uilib/KwWebView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/uilib/KwWebView;->mWebview:Lcn/kuwo/base/uilib/KwWebView;

    invoke-direct {p0}, Lcn/kuwo/base/uilib/KwWebView;->initWebView()V

    return-void
.end method

.method static synthetic access$100()Lcn/kuwo/base/uilib/KwWebActionListener;
    .locals 1

    sget-object v0, Lcn/kuwo/base/uilib/KwWebView;->mPublicListener:Lcn/kuwo/base/uilib/KwWebActionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/base/uilib/KwWebView;)Lcn/kuwo/base/uilib/KwWebView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/KwWebView;->mWebview:Lcn/kuwo/base/uilib/KwWebView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/base/uilib/KwWebView;)Lcn/kuwo/base/uilib/KwWebActionListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/KwWebView;->mPrivateListener:Lcn/kuwo/base/uilib/KwWebActionListener;

    return-object v0
.end method

.method private disableRedirect()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/uilib/KwWebView$1;

    invoke-direct {v0, p0}, Lcn/kuwo/base/uilib/KwWebView$1;-><init>(Lcn/kuwo/base/uilib/KwWebView;)V

    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/KwWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private disableSelection()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/uilib/KwWebView$2;

    invoke-direct {v0, p0}, Lcn/kuwo/base/uilib/KwWebView$2;-><init>(Lcn/kuwo/base/uilib/KwWebView;)V

    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/KwWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/base/uilib/KwWebView$MyWebChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/kuwo/base/uilib/KwWebView$MyWebChromeClient;-><init>(Lcn/kuwo/base/uilib/KwWebView;Lcn/kuwo/base/uilib/KwWebView$1;)V

    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/KwWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KwWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KwWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-direct {p0}, Lcn/kuwo/base/uilib/KwWebView;->disableSelection()V

    invoke-direct {p0}, Lcn/kuwo/base/uilib/KwWebView;->disableRedirect()V

    invoke-virtual {p0, v2}, Lcn/kuwo/base/uilib/KwWebView;->setScrollBarStyle(I)V

    iput-object p0, p0, Lcn/kuwo/base/uilib/KwWebView;->mWebview:Lcn/kuwo/base/uilib/KwWebView;

    new-instance v0, Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;

    invoke-direct {v0, p0}, Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;-><init>(Lcn/kuwo/base/uilib/KwWebView;)V

    const-string v1, "kwmusichd"

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/uilib/KwWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;

    invoke-direct {v0, p0}, Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;-><init>(Lcn/kuwo/base/uilib/KwWebView;)V

    const-string v1, "KuwoInterface"

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/uilib/KwWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static setGlobalWebActionListener(Lcn/kuwo/base/uilib/KwWebActionListener;)V
    .locals 0

    sput-object p0, Lcn/kuwo/base/uilib/KwWebView;->mPublicListener:Lcn/kuwo/base/uilib/KwWebActionListener;

    return-void
.end method


# virtual methods
.method public nativeCallJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/base/uilib/KwWebView;->nativeCallJavascript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nativeCallJavascript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\'"

    const-string v1, "&#39;"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/base/uilib/KwWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public navigateBack()V
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KwWebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/uilib/KwWebView;->goBack()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-le p1, p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public setWebActionListener(Lcn/kuwo/base/uilib/KwWebActionListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/KwWebView;->mPrivateListener:Lcn/kuwo/base/uilib/KwWebActionListener;

    return-void
.end method
