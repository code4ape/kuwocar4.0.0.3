.class final Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;
.super Lcn/kuwo/base/uilib/IKwJavaScript;


# instance fields
.field final synthetic this$0:Lcn/kuwo/base/uilib/KwWebView;


# direct methods
.method constructor <init>(Lcn/kuwo/base/uilib/KwWebView;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;->this$0:Lcn/kuwo/base/uilib/KwWebView;

    invoke-direct {p0}, Lcn/kuwo/base/uilib/IKwJavaScript;-><init>()V

    return-void
.end method


# virtual methods
.method public jsCallNative(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcn/kuwo/base/uilib/KwWebView;->access$100()Lcn/kuwo/base/uilib/KwWebActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/uilib/KwWebView;->access$100()Lcn/kuwo/base/uilib/KwWebActionListener;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;->this$0:Lcn/kuwo/base/uilib/KwWebView;

    invoke-static {v2}, Lcn/kuwo/base/uilib/KwWebView;->access$200(Lcn/kuwo/base/uilib/KwWebView;)Lcn/kuwo/base/uilib/KwWebView;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcn/kuwo/base/uilib/KwWebActionListener;->onJsCallNative(Lorg/json/JSONObject;Lcn/kuwo/base/uilib/KwWebView;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;->this$0:Lcn/kuwo/base/uilib/KwWebView;

    invoke-static {v1}, Lcn/kuwo/base/uilib/KwWebView;->access$300(Lcn/kuwo/base/uilib/KwWebView;)Lcn/kuwo/base/uilib/KwWebActionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;->this$0:Lcn/kuwo/base/uilib/KwWebView;

    invoke-static {v1}, Lcn/kuwo/base/uilib/KwWebView;->access$300(Lcn/kuwo/base/uilib/KwWebView;)Lcn/kuwo/base/uilib/KwWebActionListener;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/uilib/KwWebView$KwJavaScriptInterface;->this$0:Lcn/kuwo/base/uilib/KwWebView;

    invoke-static {v2}, Lcn/kuwo/base/uilib/KwWebView;->access$200(Lcn/kuwo/base/uilib/KwWebView;)Lcn/kuwo/base/uilib/KwWebView;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcn/kuwo/base/uilib/KwWebActionListener;->onJsCallNative(Lorg/json/JSONObject;Lcn/kuwo/base/uilib/KwWebView;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "KwWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsCallNative Json\u683c\u5f0f\u9519\u8bef : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
