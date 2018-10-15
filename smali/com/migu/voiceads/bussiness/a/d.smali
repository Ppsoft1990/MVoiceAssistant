.class public Lcom/migu/voiceads/bussiness/a/d;
.super Lcom/migu/voiceads/MIGUBootScreenAdDataItemRef;


# instance fields
.field protected a:Lcom/migu/voiceads/a/a;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/os/Bundle;

.field private d:Lorg/json/JSONObject;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/migu/voiceads/bussiness/a/c;

.field private i:Landroid/view/View;

.field private j:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/bussiness/a/c;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/migu/voiceads/MIGUBootScreenAdDataItemRef;-><init>()V

    const-string/jumbo v0, "BootScreenData"

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->f:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/migu/voiceads/bussiness/a/d;->g:Z

    iput-object v1, p0, Lcom/migu/voiceads/bussiness/a/d;->i:Landroid/view/View;

    iput-object v1, p0, Lcom/migu/voiceads/bussiness/a/d;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/migu/voiceads/bussiness/a/d;->c:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/migu/voiceads/bussiness/a/d;->j:Z

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/migu/voiceads/bussiness/a/d;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/migu/voiceads/bussiness/a/d;->a:Lcom/migu/voiceads/a/a;

    iput-object p4, p0, Lcom/migu/voiceads/bussiness/a/d;->h:Lcom/migu/voiceads/bussiness/a/c;

    iput-object p5, p0, Lcom/migu/voiceads/bussiness/a/d;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/migu/voiceads/bussiness/a/d;->c:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/migu/voiceads/bussiness/a/d;->j:Z

    return-void
.end method

.method private a()V
    .locals 3

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/a/d;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "click_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v2, "click_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->f:Ljava/lang/String;

    const-string/jumbo v1, "\u70b9\u51fb\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/a/d;->b()V

    return-void
.end method

.method private b()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v2, "landing_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "about:blank"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v4, "adtype"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/a/d;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/a/d;->a:Lcom/migu/voiceads/a/a;

    iget-object v5, p0, Lcom/migu/voiceads/bussiness/a/d;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/migu/voiceads/bussiness/a/d;->c:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/migu/voiceads/bussiness/a/d;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/migu/voiceads/bussiness/a/d;->getSubTitle()Ljava/lang/String;

    move-result-object v8

    move-object v4, v1

    invoke-static/range {v0 .. v8}, Lcom/migu/voiceads/utils/browser/e;->a(Landroid/content/Context;Lcom/migu/voiceads/MIGUAdListener;Ljava/lang/String;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/utils/browser/f;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "download"

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v3, "adtype"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->a:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "download_alert"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getAdMark()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/migu/voiceads/bussiness/a/d;->getAdMarkFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "admarkpath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "admarkpath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "admark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "admark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdMarkFlag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "admarkflag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

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

    invoke-virtual {p0}, Lcom/migu/voiceads/bussiness/a/d;->getAdOwnerFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "adownerpath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "adownerpath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "adowner"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "adowner"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdOwnerFlag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "adownerflag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "adownerflag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public getClickURL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "click_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "click_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "icon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

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

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImprURL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "impr_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "impr_url"

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

    iget-boolean v0, p0, Lcom/migu/voiceads/bussiness/a/d;->j:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "redirect"

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v3, "adtype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

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

.method public getSubTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "sub_title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

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

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

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
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/a/d;->a()V

    return-void
.end method

.method public onExposured(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/migu/voiceads/utils/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/d;->e:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/d;->f:Ljava/lang/String;

    const-string/jumbo v3, "\u66dd\u5149\u5931\u8d25"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/d;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isAppBackground:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/migu/voiceads/bussiness/a/d;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/d;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isSreenLocked:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/migu/voiceads/bussiness/a/d;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/migu/voiceads/utils/a;->b(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/d;->f:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->f:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isInScreen:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/a/d;->e:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/migu/voiceads/bussiness/a/d;->g:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v2, "impr_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/migu/voiceads/bussiness/a/d;->g:Z

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/d;->f:Ljava/lang/String;

    const-string/jumbo v1, "\u66dd\u5149\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/d;->d:Lorg/json/JSONObject;

    const-string/jumbo v2, "impr_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    goto :goto_1
.end method
