.class public Lcom/migu/voiceads/bussiness/videoad/a;
.super Lcom/migu/voiceads/MIGUVideoAdDataRef;


# instance fields
.field protected a:Lcom/migu/voiceads/a/a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lorg/json/JSONArray;

.field public g:Lorg/json/JSONArray;

.field public h:Lorg/json/JSONArray;

.field public i:Lorg/json/JSONArray;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field private n:Landroid/content/Context;

.field private o:Lorg/json/JSONObject;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;Lcom/migu/voiceads/a/a;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/migu/voiceads/MIGUVideoAdDataRef;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    iput-boolean v1, p0, Lcom/migu/voiceads/bussiness/videoad/a;->p:Z

    iput-boolean v1, p0, Lcom/migu/voiceads/bussiness/videoad/a;->q:Z

    iput-object p2, p0, Lcom/migu/voiceads/bussiness/videoad/a;->n:Landroid/content/Context;

    iput-object p3, p0, Lcom/migu/voiceads/bussiness/videoad/a;->a:Lcom/migu/voiceads/a/a;

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    iput-boolean p4, p0, Lcom/migu/voiceads/bussiness/videoad/a;->q:Z

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "adtype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "landing_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "start_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->f:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "middle_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->g:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "over_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->h:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "click_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->i:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "admark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "admarkflag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "adownerflag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "adowner"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 9

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/videoad/a;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "about:blank"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid click url: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "redirect"

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/videoad/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->q:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/videoad/a;->a:Lcom/migu/voiceads/a/a;

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-static/range {v0 .. v8}, Lcom/migu/voiceads/utils/browser/e;->a(Landroid/content/Context;Lcom/migu/voiceads/MIGUAdListener;Ljava/lang/String;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/utils/browser/f;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "download"

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/videoad/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->a:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "download_alert"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getAdMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getAdMarkFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAdOwner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getAdOwnerFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->q:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "redirect"

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v3, "adtype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v2, "landing_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "about:blank"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "Ad_Android_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid click url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onClicked(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->i:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/videoad/a;->i:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/videoad/a;->a()V

    :cond_0
    return-void
.end method

.method public onExposured(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->n:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "VideoAdNativeData"

    const-string/jumbo v1, "\u66dd\u5149\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->p:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v1, "impr_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->p:Z

    const-string/jumbo v0, "VideoAdNativeData"

    const-string/jumbo v1, "\u66dd\u5149\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/videoad/a;->o:Lorg/json/JSONObject;

    const-string/jumbo v2, "impr_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method public onMiddle()V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->g:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/videoad/a;->g:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public onOver()V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->h:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/videoad/a;->h:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/a;->f:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/videoad/a;->f:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method
