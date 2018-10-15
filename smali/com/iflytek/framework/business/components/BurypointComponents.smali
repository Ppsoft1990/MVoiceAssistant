.class public Lcom/iflytek/framework/business/components/BurypointComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "BurypointComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BurypointComponents"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method


# virtual methods
.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    const-string/jumbo v0, "BurypointComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onExec action = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, " params = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string/jumbo v0, "leadFlow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 32
    .local v8, "object":Lorg/json/JSONObject;
    const-string/jumbo v0, "scheme"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "deepLinkUID"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "deepLinkUID":Ljava/lang/String;
    const-string/jumbo v0, "downloadUrl"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "downloadUrl":Ljava/lang/String;
    const-string/jumbo v0, "params"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "param":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v7, "json":Lorg/json/JSONObject;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    const-string/jumbo v0, "errorCode"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    :goto_0
    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 48
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "deepLinkUID":Ljava/lang/String;
    .end local v4    # "downloadUrl":Ljava/lang/String;
    .end local v5    # "param":Ljava/lang/String;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "object":Lorg/json/JSONObject;
    :goto_1
    return-object v0

    .line 40
    .restart local v2    # "scheme":Ljava/lang/String;
    .restart local v3    # "deepLinkUID":Ljava/lang/String;
    .restart local v4    # "downloadUrl":Ljava/lang/String;
    .restart local v5    # "param":Ljava/lang/String;
    .restart local v7    # "json":Lorg/json/JSONObject;
    .restart local v8    # "object":Lorg/json/JSONObject;
    :cond_1
    invoke-static {}, Laoe;->a()Laoe;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/BurypointComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Laoe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "errorCode"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "deepLinkUID":Ljava/lang/String;
    .end local v4    # "downloadUrl":Ljava/lang/String;
    .end local v5    # "param":Ljava/lang/String;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 45
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BurypointComponents"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 54
    return-void
.end method
