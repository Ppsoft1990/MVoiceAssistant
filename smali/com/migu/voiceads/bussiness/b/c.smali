.class public Lcom/migu/voiceads/bussiness/b/c;
.super Lcom/migu/voiceads/MIGUHtmlAdDataRef;


# instance fields
.field protected a:Lcom/migu/voiceads/a/a;

.field private b:Lcom/migu/voiceads/a/e;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/migu/voiceads/a/e;Landroid/content/Context;Lcom/migu/voiceads/a/a;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/migu/voiceads/MIGUHtmlAdDataRef;-><init>()V

    const-string/jumbo v0, "HtmlData"

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/migu/voiceads/bussiness/b/c;->e:Z

    iput-boolean v1, p0, Lcom/migu/voiceads/bussiness/b/c;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iput-object p2, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/migu/voiceads/bussiness/b/c;->a:Lcom/migu/voiceads/a/a;

    iput-boolean p4, p0, Lcom/migu/voiceads/bussiness/b/c;->f:Z

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    const-string/jumbo v2, "click GDT ad"

    invoke-static {v0, v2, v4}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/b/c;->a:Lcom/migu/voiceads/a/a;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v4, :cond_3

    const-string/jumbo v0, "installation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/c/t;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/migu/voiceads/utils/c/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/migu/voiceads/utils/c/t;->a(Lcom/migu/voiceads/a/a;)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->a(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->m:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->b(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->n:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->c(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->o:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->d(Lorg/json/JSONArray;)V

    invoke-virtual {v0, p2}, Lcom/migu/voiceads/utils/c/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    const-string/jumbo v1, "GDT installation -- startRequest"

    invoke-static {v0, v1, v4}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/b/c;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    move-object v2, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-static/range {v0 .. v8}, Lcom/migu/voiceads/utils/browser/e;->a(Landroid/content/Context;Lcom/migu/voiceads/MIGUAdListener;Ljava/lang/String;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/utils/browser/f;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/migu/voiceads/utils/c/t;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/migu/voiceads/utils/c/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/migu/voiceads/utils/c/t;->a(Lcom/migu/voiceads/a/a;)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->a(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->m:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->b(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->n:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->c(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->o:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->d(Lorg/json/JSONArray;)V

    invoke-virtual {v0, p2}, Lcom/migu/voiceads/utils/c/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    const-string/jumbo v1, "GDT installation -- startRequest"

    invoke-static {v0, v1, v4}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

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

.method private c()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v2, v0, Lcom/migu/voiceads/a/e;->p:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v3, v3, Lcom/migu/voiceads/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/b/c;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/b/c;->a:Lcom/migu/voiceads/a/a;

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-static/range {v0 .. v8}, Lcom/migu/voiceads/utils/browser/e;->a(Landroid/content/Context;Lcom/migu/voiceads/MIGUAdListener;Ljava/lang/String;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/utils/browser/f;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "download"

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->a:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "download_alert"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->j:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->l:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->m:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->n:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->o:Lorg/json/JSONArray;

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

.method private e()V
    .locals 6

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v2, v2, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/voiceads/utils/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "down_x"

    const/16 v5, -0x3e7

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "down_y"

    const/16 v5, -0x3e7

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "up_x"

    const/16 v5, -0x3e7

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "up_y"

    const/16 v5, -0x3e7

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

    iput-object v2, p0, Lcom/migu/voiceads/bussiness/b/c;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v3, v3, Lcom/migu/voiceads/a/e;->d:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/migu/voiceads/bussiness/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

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


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->d:Ljava/lang/String;

    const-string/jumbo v1, "\u66dd\u5149\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/bussiness/b/c;->e:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->j:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/migu/voiceads/bussiness/b/c;->e:Z

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->d:Ljava/lang/String;

    const-string/jumbo v1, "\u66dd\u5149\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->j:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/b/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_0
    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/b/c;->c()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/b/c;->e()V

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

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

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/b/c;->f:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "redirect"

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v2, v2, Lcom/migu/voiceads/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->g:Ljava/lang/String;

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

.method public getMa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/c;->b:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
