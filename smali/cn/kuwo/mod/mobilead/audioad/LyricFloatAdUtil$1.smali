.class Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    invoke-static {v0}, Lcn/kuwo/base/util/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "ad_id"

    iget-object v2, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "media"

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    invoke-static {v1}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "media_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "jump_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    invoke-static {v1}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "file_path"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Z)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "image"

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    invoke-static {v1}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$1;->c:Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "img_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_1
.end method
