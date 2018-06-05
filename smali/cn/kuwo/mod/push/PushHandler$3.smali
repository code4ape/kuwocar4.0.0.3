.class final Lcn/kuwo/mod/push/PushHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/mod/push/PushHandler$3;->a:Ljava/lang/String;

    iput p2, p0, Lcn/kuwo/mod/push/PushHandler$3;->b:I

    iput-wide p3, p0, Lcn/kuwo/mod/push/PushHandler$3;->c:J

    iput-object p5, p0, Lcn/kuwo/mod/push/PushHandler$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler$3;->a:Ljava/lang/String;

    iget v1, p0, Lcn/kuwo/mod/push/PushHandler$3;->b:I

    iget-wide v2, p0, Lcn/kuwo/mod/push/PushHandler$3;->c:J

    iget-object v4, p0, Lcn/kuwo/mod/push/PushHandler$3;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/kuwo/mod/push/PushHandler;->b(Ljava/lang/String;IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pushhandler"

    invoke-static {v1, v0}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utf-8"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/crypt/Base64Coder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://log.kuwo.cn/music.yl"

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/http/SimpleHttp;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Pushhandler"

    const-string v1, "\u63a8\u9001\u65e5\u5fd7\u53d1\u9001\u6210\u529f"

    invoke-static {v0, v1}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
