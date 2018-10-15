.class public Lcom/migu/voiceads/a/e;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lorg/json/JSONArray;

.field public k:Lorg/json/JSONArray;

.field public l:Lorg/json/JSONArray;

.field public m:Lorg/json/JSONArray;

.field public n:Lorg/json/JSONArray;

.field public o:Lorg/json/JSONArray;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Lorg/json/JSONObject;

.field private x:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/migu/voiceads/a/e;->x:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/migu/voiceads/a/e;->a:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/a/e;->j:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/a/e;->a(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/a/e;->a(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/a/e;->l:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/a/e;->a(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/a/e;->m:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/a/e;->a(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/a/e;->n:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/a/e;->a(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/a/e;->o:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/a/e;->a(Lorg/json/JSONArray;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/migu/voiceads/a/e;->q:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->u:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->w:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/voiceads/MIGUAdError;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reponse:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/a/e;->a()V

    const-string/jumbo v1, "rc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/migu/voiceads/a/e;->a:I

    const-string/jumbo v1, "info_en"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->b:Ljava/lang/String;

    const-string/jumbo v1, "info_cn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->c:Ljava/lang/String;

    const-string/jumbo v1, "adtype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->d:Ljava/lang/String;

    const-string/jumbo v1, "mat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->e:Ljava/lang/String;

    const-string/jumbo v1, "ma"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->f:Ljava/lang/String;

    const-string/jumbo v1, "ma_enc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->g:Ljava/lang/String;

    const-string/jumbo v1, "impr_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->j:Lorg/json/JSONArray;

    const-string/jumbo v1, "click_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    const-string/jumbo v1, "landingUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->p:Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->h:Ljava/lang/String;

    const-string/jumbo v1, "need_send"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->i:Ljava/lang/String;

    const-string/jumbo v1, "inst_downstart_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->l:Lorg/json/JSONArray;

    const-string/jumbo v1, "inst_downsucc_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->m:Lorg/json/JSONArray;

    const-string/jumbo v1, "inst_installsucc_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->n:Lorg/json/JSONArray;

    const-string/jumbo v1, "dur"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/migu/voiceads/a/e;->q:I

    const-string/jumbo v1, "close_icon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->r:Ljava/lang/String;

    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->s:Ljava/lang/String;

    const-string/jumbo v1, "css_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->t:Ljava/lang/String;

    const-string/jumbo v1, "platform_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->v:Ljava/lang/String;

    const-string/jumbo v1, "js_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->u:Ljava/lang/String;

    const-string/jumbo v1, "target"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->w:Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/migu/voiceads/a/e;->g:Ljava/lang/String;

    const-string/jumbo v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/a/e;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/migu/voiceads/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/a/e;->f:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "Ad_Android_SDK"

    iget-object v1, p0, Lcom/migu/voiceads/a/e;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/migu/voiceads/a/e;->w:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Invalid response data!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/migu/voiceads/MIGUAdError;

    const v1, 0x11364

    invoke-direct {v0, v1}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    throw v0
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0

    return-void
.end method
