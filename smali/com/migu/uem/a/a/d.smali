.class public final Lcom/migu/uem/a/a/d;
.super Lcom/migu/uem/a/f;

# interfaces
.implements Lcom/migu/uem/a/d/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/migu/uem/c/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/migu/uem/a/f;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "amberConfigWebAuto"

    invoke-static {v0}, Lcom/migu/uem/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/a/d;->h:Ljava/lang/String;

    const-string/jumbo v0, "https://uem.migu.cn:18088/udcc/UUID.html"

    iput-object v0, p0, Lcom/migu/uem/a/a/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/migu/uem/a/a/d;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/migu/uem/a/a/d;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/migu/uem/a/a/d;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/migu/uem/a/a/d;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "keyValue2"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/a/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/uem/a/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/a/d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/a/d;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/a/a/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/a/a/d;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/a/d;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/migu/uem/a/a/d;)Lcom/migu/uem/c/b;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/a/d;->i:Lcom/migu/uem/c/b;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "request url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/migu/uem/c/b;

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->b:Ljava/lang/String;

    sget-object v2, Lcom/migu/uem/a/d/b;->a:Lcom/migu/uem/a/d/b;

    invoke-direct {v0, v1, p0, v2}, Lcom/migu/uem/c/b;-><init>(Ljava/lang/String;Lcom/migu/uem/a/d/a;Lcom/migu/uem/a/d/b;)V

    iput-object v0, p0, Lcom/migu/uem/a/a/d;->i:Lcom/migu/uem/c/b;

    iget-object v0, p0, Lcom/migu/uem/a/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string/jumbo v1, "appKey is null"

    iget-object v2, p0, Lcom/migu/uem/a/a/d;->i:Lcom/migu/uem/c/b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/migu/uem/a/a/d;->a(ILjava/lang/String;Lcom/migu/uem/c/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/a/a/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x4

    const-string/jumbo v1, "channel is null"

    iget-object v2, p0, Lcom/migu/uem/a/a/d;->i:Lcom/migu/uem/c/b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/migu/uem/a/a/d;->a(ILjava/lang/String;Lcom/migu/uem/c/b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/migu/uem/a/a/d;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/migu/uem/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, -0x2

    const-string/jumbo v1, "upload data json is empty"

    iget-object v2, p0, Lcom/migu/uem/a/a/d;->i:Lcom/migu/uem/c/b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/migu/uem/a/a/d;->a(ILjava/lang/String;Lcom/migu/uem/c/b;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/uem/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload data = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->i:Lcom/migu/uem/c/b;

    const-string/jumbo v2, "appKey"

    iget-object v3, p0, Lcom/migu/uem/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/migu/uem/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->i:Lcom/migu/uem/c/b;

    const-string/jumbo v2, "deepLinkUID"

    iget-object v3, p0, Lcom/migu/uem/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/migu/uem/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->i:Lcom/migu/uem/c/b;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/migu/uem/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/migu/uem/a/a/e;

    invoke-direct {v0, p0}, Lcom/migu/uem/a/a/e;-><init>(Lcom/migu/uem/a/a/d;)V

    invoke-virtual {v0}, Lcom/migu/uem/a/a/e;->start()V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Lcom/migu/uem/c/b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/migu/uem/a/a/d;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/migu/uem/a/a/d;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/uem/comm/a;->a(Z)V

    return-void
.end method

.method public final a([BLcom/migu/uem/c/b;)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "http successful:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "sid"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "deeplinkid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "amber_dl_click"

    iget-object v3, p0, Lcom/migu/uem/a/a/d;->a:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/migu/uem/statistics/event/EventAction;->onEvent(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/migu/uem/a/a/d;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/uem/a/a/d;->e:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/migu/uem/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/migu/uem/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/migu/uem/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/uem/a/a/d;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/migu/uem/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/a/d;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/migu/uem/a/a/d;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/a/a/d;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/migu/uem/a/a/d;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/uem/comm/a;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
