.class final Lo/fp;
.super Ljava/lang/Object;
.source "AuthImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

.field private synthetic f:Lo/fh;


# direct methods
.method constructor <init>(Lo/fh;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 0

    iput-object p1, p0, Lo/fp;->f:Lo/fh;

    iput-object p2, p0, Lo/fp;->a:Landroid/app/Activity;

    iput-object p3, p0, Lo/fp;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/fp;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/fp;->d:Ljava/lang/String;

    iput-object p6, p0, Lo/fp;->e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v9, 0x0

    const v8, 0x18f9f

    new-instance v0, Lcom/alipay/sdk/app/AuthTask;

    iget-object v1, p0, Lo/fp;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/AuthTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lo/fp;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/AuthTask;->authV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v0, "resultStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "9000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    const-string/jumbo v4, "auth_code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v0, v2, v1

    aget-object v3, v2, v1

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lo/fs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "alipay_system_oauth_token_response"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lo/fp;->f:Lo/fh;

    iget-object v1, p0, Lo/fp;->c:Ljava/lang/String;

    iget-object v2, p0, Lo/fp;->d:Ljava/lang/String;

    const-string/jumbo v5, "ALIPAY"

    invoke-static {}, Lo/fs;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lo/fp;->e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static/range {v0 .. v7}, Lo/fh;->a(Lo/fh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "\u6388\u6743\u5931\u8d25"

    invoke-static {v8, v0}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/fp;->e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-interface {v1, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lo/fp;->f:Lo/fh;

    invoke-static {v0}, Lo/fh;->h(Lo/fh;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "16"

    const-string/jumbo v2, "\u6388\u6743\u53d6\u6d88"

    invoke-static {v0, v1, v9, v8, v2}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    const-string/jumbo v0, "\u6388\u6743\u5931\u8d25"

    invoke-static {v8, v0}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/fp;->e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-interface {v1, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lo/fp;->f:Lo/fh;

    invoke-static {v0}, Lo/fh;->h(Lo/fh;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "16"

    const-string/jumbo v2, "\u6388\u6743\u53d6\u6d88"

    invoke-static {v0, v1, v9, v8, v2}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method
