.class public final Lauthcommon/ak;
.super Lauthcommon/ag;
.source "BindNewPhoneHttp.java"


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v2, "BD"

    invoke-static {}, Lcom/cmcc/migusso/auth/common/HostConfig;->getUserManagePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UserManage"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lauthcommon/ag;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lauthcommon/ak;->l:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/util/RSAUtil;->getInstance(Landroid/content/Context;)Lcom/cmcc/util/RSAUtil;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/ak;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcc/util/RSAUtil;->byPublicKeyEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ak;->m:Ljava/lang/String;

    iput-object p3, p0, Lauthcommon/ak;->n:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/util/RSAUtil;->getInstance(Landroid/content/Context;)Lcom/cmcc/util/RSAUtil;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/ak;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcc/util/RSAUtil;->byPublicKeyEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ak;->o:Ljava/lang/String;

    iput-object p4, p0, Lauthcommon/ak;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lauthcommon/ak;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lauthcommon/ak;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lauthcommon/ak;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lauthcommon/ak;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lauthcommon/ak;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v2, "BD"

    invoke-static {}, Lcom/cmcc/migusso/auth/common/HostConfig;->getUserManagePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UserManage"

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lauthcommon/ag;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lauthcommon/ak;->l:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/util/RSAUtil;->getInstance(Landroid/content/Context;)Lcom/cmcc/util/RSAUtil;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/ak;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcc/util/RSAUtil;->byPublicKeyEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ak;->m:Ljava/lang/String;

    iput-object p4, p0, Lauthcommon/ak;->n:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/util/RSAUtil;->getInstance(Landroid/content/Context;)Lcom/cmcc/util/RSAUtil;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/ak;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcc/util/RSAUtil;->byPublicKeyEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ak;->o:Ljava/lang/String;

    iput-object p5, p0, Lauthcommon/ak;->p:Ljava/lang/String;

    iput-object p3, p0, Lauthcommon/ak;->q:Ljava/lang/String;

    iput-object p6, p0, Lauthcommon/ak;->r:Ljava/lang/String;

    iput-object p7, p0, Lauthcommon/ak;->s:Ljava/lang/String;

    iput-object p8, p0, Lauthcommon/ak;->t:Ljava/lang/String;

    iput-object p9, p0, Lauthcommon/ak;->u:Ljava/lang/String;

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
    .locals 5

    iget-object v0, p0, Lauthcommon/ak;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lauthcommon/ak;->a:Landroid/content/Context;

    iget-object v1, p0, Lauthcommon/ak;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPersonalSecret(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lauthcommon/ak;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cmcc/util/AESUtil;->encryptSso(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lauthcommon/ak;->m:Ljava/lang/String;

    iget-object v1, p0, Lauthcommon/ak;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cmcc/util/AESUtil;->encryptSso(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ak;->o:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/ak;->e:Ljava/util/Map;

    const-string/jumbo v1, "BTID"

    iget-object v2, p0, Lauthcommon/ak;->u:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lauthcommon/ak;->e:Ljava/util/Map;

    const-string/jumbo v1, "encID"

    iget-object v2, p0, Lauthcommon/ak;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ak;->e:Ljava/util/Map;

    const-string/jumbo v1, "encmsisdnNew"

    iget-object v2, p0, Lauthcommon/ak;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ak;->e:Ljava/util/Map;

    const-string/jumbo v1, "validcode"

    iget-object v2, p0, Lauthcommon/ak;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ak;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lauthcommon/ak;->e:Ljava/util/Map;

    const-string/jumbo v1, "bindType"

    iget-object v2, p0, Lauthcommon/ak;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lauthcommon/ak;->e:Ljava/util/Map;

    const-string/jumbo v1, "accountType"

    iget-object v2, p0, Lauthcommon/ak;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ak;->e:Ljava/util/Map;

    const-string/jumbo v1, "accesstoken"

    iget-object v2, p0, Lauthcommon/ak;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ak;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lauthcommon/ak;->e:Ljava/util/Map;

    const-string/jumbo v1, "consumerkey"

    iget-object v2, p0, Lauthcommon/ak;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lauthcommon/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/ak;->b:Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/common/HostConfig;->getUserManagePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lauthcommon/ak;->l:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lauthcommon/bs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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

    :try_start_0
    iget-object v0, p0, Lauthcommon/ak;->k:Lorg/json/JSONObject;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lauthcommon/ak;->k:Lorg/json/JSONObject;

    const-string/jumbo v1, "sourceid"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lauthcommon/ak;->k:Lorg/json/JSONObject;

    const-string/jumbo v1, "request"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "resultCode"

    const-string/jumbo v2, "resultCode"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lauthcommon/ak;->k:Lorg/json/JSONObject;

    const-string/jumbo v2, "response"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/Map;)V
    .locals 4
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

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x18f4e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lauthcommon/ak;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resultCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "WWW-Authenticate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resultCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v2, 0x19323

    if-ne v2, v1, :cond_2

    const v1, 0x192c4

    invoke-virtual {p0, v1, v0}, Lauthcommon/ak;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const v2, 0x19456

    if-eq v2, v1, :cond_3

    const v2, 0x19457

    if-ne v2, v1, :cond_4

    :cond_3
    invoke-virtual {p0, v1, p1}, Lauthcommon/ak;->a(ILjava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, v0}, Lauthcommon/ak;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
