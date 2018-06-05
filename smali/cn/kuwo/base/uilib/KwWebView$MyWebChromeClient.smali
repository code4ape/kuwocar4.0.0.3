.class Lcn/kuwo/base/uilib/KwWebView$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic this$0:Lcn/kuwo/base/uilib/KwWebView;


# direct methods
.method private constructor <init>(Lcn/kuwo/base/uilib/KwWebView;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/KwWebView$MyWebChromeClient;->this$0:Lcn/kuwo/base/uilib/KwWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/base/uilib/KwWebView;Lcn/kuwo/base/uilib/KwWebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/base/uilib/KwWebView$MyWebChromeClient;-><init>(Lcn/kuwo/base/uilib/KwWebView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method
