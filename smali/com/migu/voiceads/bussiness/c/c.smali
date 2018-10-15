.class public Lcom/migu/voiceads/bussiness/c/c;
.super Lcom/migu/voiceads/MIGUNativeAdDataRef;


# instance fields
.field protected a:Lcom/migu/voiceads/a/a;

.field private b:Lorg/json/JSONObject;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lorg/json/JSONArray;

.field private g:Lorg/json/JSONArray;

.field private h:Lorg/json/JSONArray;

.field private i:Lorg/json/JSONArray;

.field private j:Lorg/json/JSONArray;

.field private k:Lorg/json/JSONArray;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Landroid/view/View;

.field private r:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;Lcom/migu/voiceads/a/a;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, -0x3e7

    invoke-direct {p0}, Lcom/migu/voiceads/MIGUNativeAdDataRef;-><init>()V

    const-string/jumbo v0, "NativeData"

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->d:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/migu/voiceads/bussiness/c/c;->e:Z

    iput v1, p0, Lcom/migu/voiceads/bussiness/c/c;->l:I

    iput v1, p0, Lcom/migu/voiceads/bussiness/c/c;->m:I

    iput v1, p0, Lcom/migu/voiceads/bussiness/c/c;->n:I

    iput v1, p0, Lcom/migu/voiceads/bussiness/c/c;->o:I

    iput-object v3, p0, Lcom/migu/voiceads/bussiness/c/c;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/migu/voiceads/bussiness/c/c;->q:Landroid/view/View;

    iput-boolean v2, p0, Lcom/migu/voiceads/bussiness/c/c;->r:Z

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/migu/voiceads/bussiness/c/c;->a:Lcom/migu/voiceads/a/a;

    iput-boolean p4, p0, Lcom/migu/voiceads/bussiness/c/c;->r:Z

    const-string/jumbo v0, "landing_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/bussiness/c/c;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/c/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "click_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v2, "click_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_0
    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/c/c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/bussiness/c/c;I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/bussiness/c/c;->l:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    const-string/jumbo v2, "click GDT ad"

    invoke-static {v0, v2, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->a:Lcom/migu/voiceads/a/a;

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->g:Lorg/json/JSONArray;

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v2, v3, :cond_3

    const-string/jumbo v2, "installation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/migu/voiceads/utils/c/t;

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/migu/voiceads/utils/c/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->a(Lcom/migu/voiceads/a/a;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->h:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->a(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->i:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->b(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->j:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->c(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->k:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->d(Lorg/json/JSONArray;)V

    invoke-virtual {v1, p2}, Lcom/migu/voiceads/utils/c/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    const-string/jumbo v1, "GDT installation -- startRequest"

    invoke-static {v0, v1, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "redirect"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/migu/voiceads/bussiness/c/c;->r:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/c/c;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {p0}, Lcom/migu/voiceads/bussiness/c/c;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/migu/voiceads/bussiness/c/c;->getSubTitle()Ljava/lang/String;

    move-result-object v8

    move-object v2, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v8}, Lcom/migu/voiceads/utils/browser/e;->a(Landroid/content/Context;Lcom/migu/voiceads/MIGUAdListener;Ljava/lang/String;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/utils/browser/f;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/migu/voiceads/utils/c/t;

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/migu/voiceads/utils/c/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->a(Lcom/migu/voiceads/a/a;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->h:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->a(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->i:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->b(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->j:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->c(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->k:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/t;->d(Lorg/json/JSONArray;)V

    invoke-virtual {v1, p2}, Lcom/migu/voiceads/utils/c/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    const-string/jumbo v1, "GDT installation -- startRequest"

    invoke-static {v0, v1, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Invalid adtype of platform 12!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Invalid click url of platform 12!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "impr_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->f:Lorg/json/JSONArray;

    const-string/jumbo v0, "click_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->g:Lorg/json/JSONArray;

    const-string/jumbo v0, "inst_downstart_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->h:Lorg/json/JSONArray;

    const-string/jumbo v0, "inst_downsucc_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->i:Lorg/json/JSONArray;

    const-string/jumbo v0, "inst_installstart_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->k:Lorg/json/JSONArray;

    const-string/jumbo v0, "inst_installsucc_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->j:Lorg/json/JSONArray;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/bussiness/c/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/c/c;->e:Z

    return v0
.end method

.method private b()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v2, "landing_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v4, "adtype"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/c/c;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/c/c;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {p0}, Lcom/migu/voiceads/bussiness/c/c;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/migu/voiceads/bussiness/c/c;->getSubTitle()Ljava/lang/String;

    move-result-object v8

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v8}, Lcom/migu/voiceads/utils/browser/e;->a(Landroid/content/Context;Lcom/migu/voiceads/MIGUAdListener;Ljava/lang/String;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/utils/browser/f;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "download"

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v3, "adtype"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->a:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "download_alert"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/migu/voiceads/bussiness/c/c;I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/bussiness/c/c;->m:I

    return-void
.end method

.method static synthetic b(Lcom/migu/voiceads/bussiness/c/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/c/c;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/migu/voiceads/bussiness/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/c/c;->d()V

    return-void
.end method

.method static synthetic c(Lcom/migu/voiceads/bussiness/c/c;I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/bussiness/c/c;->n:I

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->f:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->g:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->h:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->i:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->j:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->k:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->g:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->g:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/voiceads/utils/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "down_x"

    iget v5, p0, Lcom/migu/voiceads/bussiness/c/c;->l:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "down_y"

    iget v5, p0, Lcom/migu/voiceads/bussiness/c/c;->m:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "up_x"

    iget v5, p0, Lcom/migu/voiceads/bussiness/c/c;->n:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "up_y"

    iget v5, p0, Lcom/migu/voiceads/bussiness/c/c;->o:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/migu/voiceads/utils/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&s="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v4, "adtype"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/migu/voiceads/bussiness/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/m;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/j$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/migu/voiceads/bussiness/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/c/c;->a()V

    return-void
.end method

.method static synthetic d(Lcom/migu/voiceads/bussiness/c/c;I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/bussiness/c/c;->o:I

    return-void
.end method


# virtual methods
.method public getAdMark()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "admark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "admark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdMarkFlag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "admarkflag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "admarkflag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public getAdOwner()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "adowner"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "adowner"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdOwnerFlag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "adownerflag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "adownerflag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "icon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "icon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/c/c;->r:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "redirect"

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v3, "adtype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->p:Ljava/lang/String;

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

.method public getSubTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "sub_title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "sub_title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/c/c;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->q:Landroid/view/View;

    new-instance v1, Lcom/migu/voiceads/bussiness/c/d;

    invoke-direct {v1, p0}, Lcom/migu/voiceads/bussiness/c/d;-><init>(Lcom/migu/voiceads/bussiness/c/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onClicked(IIIILandroid/view/View;)V
    .locals 1

    if-eqz p5, :cond_0

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/c/c;->e:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/migu/voiceads/bussiness/c/c;->l:I

    iput p2, p0, Lcom/migu/voiceads/bussiness/c/c;->m:I

    iput p3, p0, Lcom/migu/voiceads/bussiness/c/c;->n:I

    iput p4, p0, Lcom/migu/voiceads/bussiness/c/c;->o:I

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/c/c;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/c/c;->a()V

    goto :goto_0
.end method

.method public onExposured(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/migu/voiceads/utils/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->d:Ljava/lang/String;

    const-string/jumbo v3, "\u66dd\u5149\u5931\u8d25"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isAppBackground:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isSreenLocked:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/migu/voiceads/utils/a;->b(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/c/c;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "VISIBLE:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isShown:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isInScreen:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/c/c;->c:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/migu/voiceads/bussiness/c/c;->e:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v2, "impr_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/migu/voiceads/bussiness/c/c;->e:Z

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/c;->d:Ljava/lang/String;

    const-string/jumbo v1, "\u66dd\u5149\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/c/c;->b:Lorg/json/JSONObject;

    const-string/jumbo v2, "impr_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/voiceads/utils/a/a;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    goto :goto_1
.end method
