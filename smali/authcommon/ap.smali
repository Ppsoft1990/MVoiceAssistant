.class public final Lauthcommon/ap;
.super Lauthcommon/ag;
.source "CustomNameAssignHttp.java"


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v2, "QG"

    invoke-static {}, Lcom/cmcc/migusso/auth/common/HostConfig;->getUserManagePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UserManage"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lauthcommon/ag;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/ap;->a:Landroid/content/Context;

    invoke-static {v0}, Lauthcommon/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ap;->l:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/ap;->a:Landroid/content/Context;

    invoke-static {v0}, Lauthcommon/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ap;->m:Ljava/lang/String;

    invoke-static {}, Lauthcommon/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ap;->n:Ljava/lang/String;

    invoke-static {}, Lauthcommon/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ap;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 3

    iget-object v0, p0, Lauthcommon/ap;->e:Ljava/util/Map;

    const-string/jumbo v1, "ostype"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ap;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lauthcommon/ap;->e:Ljava/util/Map;

    const-string/jumbo v1, "imei"

    iget-object v2, p0, Lauthcommon/ap;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lauthcommon/ap;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lauthcommon/ap;->e:Ljava/util/Map;

    const-string/jumbo v1, "imsi"

    iget-object v2, p0, Lauthcommon/ap;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lauthcommon/ap;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lauthcommon/ap;->e:Ljava/util/Map;

    const-string/jumbo v1, "mac"

    iget-object v2, p0, Lauthcommon/ap;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lauthcommon/ap;->e:Ljava/util/Map;

    const-string/jumbo v1, "pseudouniqueid"

    iget-object v2, p0, Lauthcommon/ap;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected final a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string/jumbo v0, "resultCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const v0, 0x18f4e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lauthcommon/ap;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "resultCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resultCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x19258

    if-eq v0, v4, :cond_3

    const-string/jumbo v0, "WWW-Authenticate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lauthcommon/ap;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Query-Result"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "customerid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lauthcommon/ap;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/cmcc/util/RSAUtil;->getInstance(Landroid/content/Context;)Lcom/cmcc/util/RSAUtil;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/cmcc/util/RSAUtil;->byPrivateKeyDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "deviceid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "deviceidtype"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    :goto_1
    iget-object v3, p0, Lauthcommon/ap;->f:Lauthcommon/ae$a;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "resultCode"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "customerid"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "deviceid"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "deviceidtype"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/ap;->f:Lauthcommon/ae$a;

    invoke-interface {v0, v3}, Lauthcommon/ae$a;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v7

    invoke-virtual {v3}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method
