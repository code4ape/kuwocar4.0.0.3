.class Lcn/kuwo/base/uilib/KwWebView$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcn/kuwo/base/uilib/KwWebView;


# direct methods
.method constructor <init>(Lcn/kuwo/base/uilib/KwWebView;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/KwWebView$1;->this$0:Lcn/kuwo/base/uilib/KwWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
