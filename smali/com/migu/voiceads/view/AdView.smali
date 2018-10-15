.class public abstract Lcom/migu/voiceads/view/AdView;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/migu/voiceads/bussiness/b$a;


# static fields
.field private static w:Lorg/json/JSONObject;


# instance fields
.field private A:I

.field private B:Z

.field protected a:Landroid/content/Context;

.field protected b:Landroid/widget/RelativeLayout;

.field protected c:Landroid/app/Activity;

.field protected d:Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;

.field protected e:Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;

.field protected f:Lcom/migu/voiceads/a/a;

.field protected g:Lcom/migu/voiceads/a/e;

.field protected h:Lcom/migu/voiceads/bussiness/a$a;

.field protected i:Lcom/migu/voiceads/bussiness/a$c;

.field protected j:Lcom/migu/voiceads/bussiness/a$b;

.field protected k:Lcom/migu/voiceads/MIGUAdListener;

.field protected l:Lcom/migu/voiceads/bussiness/d;

.field protected m:Lcom/migu/voiceads/bussiness/b;

.field protected n:Landroid/os/HandlerThread;

.field protected o:Lcom/migu/voiceads/bussiness/c;

.field protected p:I

.field protected q:Z

.field r:Lcom/migu/voiceads/utils/j$a;

.field s:Lcom/migu/voiceads/utils/browser/f;

.field t:Lcom/migu/voiceads/utils/browser/webclient/b;

.field u:Lcom/migu/voiceads/utils/browser/webclient/a;

.field private v:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/view/AdView;->w:Lorg/json/JSONObject;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/migu/voiceads/bussiness/a$a;Lcom/migu/voiceads/bussiness/d;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, -0x3e7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/migu/voiceads/bussiness/a$c;->a:Lcom/migu/voiceads/bussiness/a$c;

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->i:Lcom/migu/voiceads/bussiness/a$c;

    sget-object v0, Lcom/migu/voiceads/bussiness/a$b;->a:Lcom/migu/voiceads/bussiness/a$b;

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->j:Lcom/migu/voiceads/bussiness/a$b;

    iput v2, p0, Lcom/migu/voiceads/view/AdView;->p:I

    iput-boolean v2, p0, Lcom/migu/voiceads/view/AdView;->q:Z

    iput v2, p0, Lcom/migu/voiceads/view/AdView;->v:I

    iput v1, p0, Lcom/migu/voiceads/view/AdView;->x:I

    iput v1, p0, Lcom/migu/voiceads/view/AdView;->y:I

    iput v1, p0, Lcom/migu/voiceads/view/AdView;->z:I

    iput v1, p0, Lcom/migu/voiceads/view/AdView;->A:I

    iput-boolean v2, p0, Lcom/migu/voiceads/view/AdView;->B:Z

    new-instance v0, Lcom/migu/voiceads/view/c;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/view/c;-><init>(Lcom/migu/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->r:Lcom/migu/voiceads/utils/j$a;

    new-instance v0, Lcom/migu/voiceads/view/d;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/view/d;-><init>(Lcom/migu/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->s:Lcom/migu/voiceads/utils/browser/f;

    new-instance v0, Lcom/migu/voiceads/view/e;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/view/e;-><init>(Lcom/migu/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->t:Lcom/migu/voiceads/utils/browser/webclient/b;

    new-instance v0, Lcom/migu/voiceads/view/f;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/view/f;-><init>(Lcom/migu/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->u:Lcom/migu/voiceads/utils/browser/webclient/a;

    iput-object p1, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/migu/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    iput-object p5, p0, Lcom/migu/voiceads/view/AdView;->l:Lcom/migu/voiceads/bussiness/d;

    new-instance v0, Lcom/migu/voiceads/a/e;

    invoke-direct {v0, p1}, Lcom/migu/voiceads/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    new-instance v0, Lcom/migu/voiceads/a/a;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-direct {v0, p1, v1, p3}, Lcom/migu/voiceads/a/a;-><init>(Landroid/content/Context;Lcom/migu/voiceads/bussiness/a$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    invoke-direct {p0}, Lcom/migu/voiceads/view/AdView;->q()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "adunitid"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "adw"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "adh"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "isboot"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ext"

    const-string/jumbo v2, "ext"

    invoke-virtual {v0, v2}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "context"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "context"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v1, "geo"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "geo"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "invalid appid!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/migu/voiceads/MIGUAdError;

    const v1, 0x1155d

    invoke-direct {v0, v1}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    throw v0

    :cond_3
    const-string/jumbo v1, "appid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/migu/voiceads/bussiness/a$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/migu/voiceads/view/AdView;->j:Lcom/migu/voiceads/bussiness/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/migu/voiceads/view/AdView;I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/view/AdView;->v:I

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/view/AdView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/voiceads/MIGUAdError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/migu/voiceads/view/AdView;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/view/AdView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/migu/voiceads/view/AdView;->u()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/migu/voiceads/view/AdView;)I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/view/AdView;->v:I

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    const-string/jumbo v1, "click GDT ad"

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v2, :cond_3

    const-string/jumbo v0, "installation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/c/t;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/migu/voiceads/utils/c/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/migu/voiceads/utils/c/t;->a(Lcom/migu/voiceads/a/a;)V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->a(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->m:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->b(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->n:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->c(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->o:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->d(Lorg/json/JSONArray;)V

    invoke-virtual {v0, p2}, Lcom/migu/voiceads/utils/c/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    const-string/jumbo v1, "GDT installation -- startRequest"

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/migu/voiceads/view/AdView;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->k:Lcom/migu/voiceads/MIGUAdListener;

    iget-object v4, p0, Lcom/migu/voiceads/view/AdView;->s:Lcom/migu/voiceads/utils/browser/f;

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/migu/voiceads/utils/browser/e;->a(Landroid/content/Context;Lcom/migu/voiceads/MIGUAdListener;Ljava/lang/String;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/utils/browser/f;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/migu/voiceads/utils/c/t;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/migu/voiceads/utils/c/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/migu/voiceads/utils/c/t;->a(Lcom/migu/voiceads/a/a;)V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->a(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->m:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->b(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->n:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->c(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->o:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/t;->d(Lorg/json/JSONArray;)V

    invoke-virtual {v0, p2}, Lcom/migu/voiceads/utils/c/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    const-string/jumbo v1, "GDT installation -- startRequest"

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

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

.method static synthetic c(Lcom/migu/voiceads/view/AdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/view/AdView;->s()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/voiceads/MIGUAdError;
        }
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/a/e;->a(Ljava/lang/String;)V

    const v0, 0x11238

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget v1, v1, Lcom/migu/voiceads/a/e;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget v2, v2, Lcom/migu/voiceads/a/e;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget v2, v2, Lcom/migu/voiceads/a/e;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    goto :goto_0
.end method

.method private q()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/migu/voiceads/view/AdView;->setScrollContainer(Z)V

    invoke-virtual {p0, v2}, Lcom/migu/voiceads/view/AdView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/migu/voiceads/view/AdView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/migu/voiceads/view/AdView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const-string/jumbo v0, "setAllowUniversalAccessFromFileURLs"

    invoke-direct {p0, v0}, Lcom/migu/voiceads/view/AdView;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p0, v2}, Lcom/migu/voiceads/view/AdView;->a(I)V

    new-instance v0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->t:Lcom/migu/voiceads/utils/browser/webclient/b;

    invoke-direct {v0, v1}, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;-><init>(Lcom/migu/voiceads/utils/browser/webclient/b;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->d:Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->d:Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/view/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->u:Lcom/migu/voiceads/utils/browser/webclient/a;

    invoke-direct {v0, v1}, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;-><init>(Lcom/migu/voiceads/utils/browser/webclient/a;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->e:Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->e:Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/view/AdView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/migu/voiceads/bussiness/b;

    invoke-direct {p0}, Lcom/migu/voiceads/view/AdView;->r()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/migu/voiceads/bussiness/b;-><init>(Landroid/os/Looper;Lcom/migu/voiceads/bussiness/b$a;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    new-instance v0, Lcom/migu/voiceads/bussiness/c;

    invoke-direct {v0}, Lcom/migu/voiceads/bussiness/c;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->o:Lcom/migu/voiceads/bussiness/c;

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->o:Lcom/migu/voiceads/bussiness/c;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->l:Lcom/migu/voiceads/bussiness/d;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/c;->a(Lcom/migu/voiceads/bussiness/d;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->m()V

    return-void
.end method

.method private r()Landroid/os/HandlerThread;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdView;->n:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->n:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private declared-synchronized s()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/migu/voiceads/bussiness/a$b;->b:Lcom/migu/voiceads/bussiness/a$b;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/view/AdView;->a(Lcom/migu/voiceads/bussiness/a$b;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->c:Landroid/app/Activity;

    new-instance v3, Lcom/migu/voiceads/view/i;

    invoke-direct {v3, p0, v0, v1}, Lcom/migu/voiceads/view/i;-><init>(Lcom/migu/voiceads/view/AdView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v2, 0x5

    const v3, 0x11561

    invoke-virtual {v1, v2, v3}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private t()V
    .locals 6

    invoke-direct {p0}, Lcom/migu/voiceads/view/AdView;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->d:Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

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
    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v2, v2, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/voiceads/utils/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "down_x"

    iget v5, p0, Lcom/migu/voiceads/view/AdView;->x:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "down_y"

    iget v5, p0, Lcom/migu/voiceads/view/AdView;->y:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "up_x"

    iget v5, p0, Lcom/migu/voiceads/view/AdView;->z:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "up_y"

    iget v5, p0, Lcom/migu/voiceads/view/AdView;->A:I

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

    invoke-virtual {p0, v2}, Lcom/migu/voiceads/view/AdView;->a(Ljava/lang/String;)V

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

.method private u()Z
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->j:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->l:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->m:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->n:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

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


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/view/AdView;->s()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/migu/voiceads/view/AdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(II)V
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "AdView setLayoutParam()"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    const-string/jumbo v1, "AdView setLayoutParam()"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/migu/voiceads/view/AdView;->d(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/migu/voiceads/MIGUAdError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    invoke-virtual {v0}, Lcom/migu/voiceads/MIGUAdError;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const v2, 0x1155b

    invoke-virtual {v1, v3, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/migu/voiceads/MIGUAdListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "====>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    if-nez p1, :cond_1

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "invalid MIGUAdListener!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Lcom/migu/voiceads/bussiness/a$c;->f:Lcom/migu/voiceads/bussiness/a$c;

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    invoke-virtual {v2}, Lcom/migu/voiceads/bussiness/b;->a()Lcom/migu/voiceads/bussiness/a$c;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/migu/voiceads/bussiness/a$c;->a:Lcom/migu/voiceads/bussiness/a$c;

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    invoke-virtual {v2}, Lcom/migu/voiceads/bussiness/b;->a()Lcom/migu/voiceads/bussiness/a$c;

    move-result-object v2

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/migu/voiceads/bussiness/a$c;->e:Lcom/migu/voiceads/bussiness/a$c;

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    invoke-virtual {v2}, Lcom/migu/voiceads/bussiness/b;->a()Lcom/migu/voiceads/bussiness/a$c;

    move-result-object v2

    if-eq v1, v2, :cond_2

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "ad is requesting, please retry a little later!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string/jumbo v1, "debug_mode"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/migu/voiceads/utils/k;->a(Z)V

    :goto_1
    iput-object p1, p0, Lcom/migu/voiceads/view/AdView;->k:Lcom/migu/voiceads/MIGUAdListener;

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->o:Lcom/migu/voiceads/bussiness/c;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/bussiness/c;->a(Lcom/migu/voiceads/MIGUAdListener;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/b;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/migu/voiceads/utils/k;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/migu/voiceads/MIGUAdSize;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/migu/voiceads/view/AdView;->b(Lcom/migu/voiceads/MIGUAdSize;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x5

    const v2, 0x1155a

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Incorrect ad size, please reset\uff01"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUAdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(I)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUAdSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->b(I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v9, v0, Lcom/migu/voiceads/a/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clickAd: platform_id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", adtype="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clickAd: platform_id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", adtype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "about:blank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid click url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/migu/voiceads/view/AdView;->u()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "redirect"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/migu/voiceads/view/AdView;->q:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->k:Lcom/migu/voiceads/MIGUAdListener;

    iget-object v4, p0, Lcom/migu/voiceads/view/AdView;->s:Lcom/migu/voiceads/utils/browser/f;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/migu/voiceads/utils/browser/e;->a(Landroid/content/Context;Lcom/migu/voiceads/MIGUAdListener;Ljava/lang/String;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/utils/browser/f;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "\u70b9\u51fb\u76d1\u63a7"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->k:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :goto_2
    const-string/jumbo v0, "redirect"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/migu/voiceads/view/AdView;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->k:Lcom/migu/voiceads/MIGUAdListener;

    invoke-interface {v0, p1}, Lcom/migu/voiceads/MIGUAdListener;->onAdClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "download"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "download_alert"

    invoke-virtual {v3, v0}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->c:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "clickAd: directDownload()"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start download by html url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "installation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "url_download_start"

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v2, v2, Lcom/migu/voiceads/a/e;->l:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "url_download_success"

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v2, v2, Lcom/migu/voiceads/a/e;->m:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "url_install_success"

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v2, v2, Lcom/migu/voiceads/a/e;->n:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v0, v0, Lcom/migu/voiceads/a/e;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string/jumbo v0, "package_name"

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v2, v2, Lcom/migu/voiceads/a/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    invoke-static {}, Lcom/migu/voiceads/utils/c/a;->a()Lcom/migu/voiceads/utils/c/a;

    move-result-object v2

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    invoke-virtual {v2, v0}, Lcom/migu/voiceads/utils/c/a;->a(Lcom/migu/voiceads/a/a;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    const-string/jumbo v1, "Installation -- startRequest"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    :try_start_1
    const-string/jumbo v0, "package_name"

    const-string/jumbo v2, "noPackage"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_6
    invoke-direct {p0, v9, p1}, Lcom/migu/voiceads/view/AdView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->k:Lcom/migu/voiceads/MIGUAdListener;

    invoke-interface {v0, v5}, Lcom/migu/voiceads/MIGUAdListener;->onAdClick(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->c:Landroid/app/Activity;

    new-instance v1, Lcom/migu/voiceads/view/g;

    invoke-direct {v1, p0}, Lcom/migu/voiceads/view/g;-><init>(Lcom/migu/voiceads/view/AdView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    sget-object v1, Lcom/migu/voiceads/bussiness/a$c;->e:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/b;->a(Lcom/migu/voiceads/bussiness/a$c;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->k()V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->j:Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/migu/voiceads/utils/a/a;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " successfully!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " successfully!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->c:Landroid/app/Activity;

    new-instance v1, Lcom/migu/voiceads/view/h;

    invoke-direct {v1, p0}, Lcom/migu/voiceads/view/h;-><init>(Lcom/migu/voiceads/view/AdView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract b(Lcom/migu/voiceads/MIGUAdSize;)Z
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->k:Lcom/migu/voiceads/MIGUAdListener;

    invoke-interface {v0}, Lcom/migu/voiceads/MIGUAdListener;->onAdClose()V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->i()V

    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 5

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "procMsgEnd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/migu/voiceads/MIGUAdError;

    invoke-direct {v1, v0}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    invoke-virtual {v1}, Lcom/migu/voiceads/MIGUAdError;->getErrorCode()I

    move-result v0

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->o:Lcom/migu/voiceads/bussiness/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/migu/voiceads/bussiness/c;->a(ILjava/lang/Object;)V

    const-string/jumbo v2, "Ad_Android_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "Ad_Android_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/migu/voiceads/MIGUAdError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/migu/voiceads/MIGUAdError;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "end :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/migu/voiceads/MIGUAdError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/migu/voiceads/MIGUAdError;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v2, v1, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const v1, 0x11303

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->h()V

    :cond_1
    return-void
.end method

.method protected d()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/migu/voiceads/bussiness/a$a;->a:Lcom/migu/voiceads/bussiness/a$a;

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->requestFocus()Z

    :cond_0
    invoke-virtual {p0, v2}, Lcom/migu/voiceads/view/AdView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/migu/voiceads/view/AdView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method protected declared-synchronized d(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/voiceads/MIGUAdError;

    const v1, 0x1155b

    invoke-direct {v0, v1}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    invoke-virtual {v2}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is requesting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/migu/voiceads/view/AdView;->w:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/a/d;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/migu/voiceads/view/AdView;->w:Lorg/json/JSONObject;

    :cond_1
    sget-object v0, Lcom/migu/voiceads/view/AdView;->w:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/view/AdView;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "send:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/voiceads/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/migu/voiceads/utils/f;->a([B)[B

    move-result-object v0

    new-instance v1, Lcom/migu/voiceads/utils/j;

    invoke-direct {v1}, Lcom/migu/voiceads/utils/j;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/migu/voiceads/utils/j;->b(I)V

    sget-object v2, Lcom/migu/voiceads/a/b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/migu/voiceads/utils/j;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->r:Lcom/migu/voiceads/utils/j$a;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/j;->a(Lcom/migu/voiceads/utils/j$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method protected e()I
    .locals 3

    const/16 v0, 0x3a98

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget v1, v1, Lcom/migu/voiceads/a/e;->q:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    mul-int/lit16 v0, v1, 0x3e8

    :cond_0
    return v0
.end method

.method protected f()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->g:Lcom/migu/voiceads/a/e;

    iget v1, v1, Lcom/migu/voiceads/a/e;->q:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x3

    const v2, 0x11238

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized h()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected i()V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method protected abstract l()V
.end method

.method protected m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->c()V

    return-void
.end method

.method protected declared-synchronized o()Lcom/migu/voiceads/bussiness/a$b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->j:Lcom/migu/voiceads/bussiness/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->f:Lcom/migu/voiceads/a/a;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    sget-object v2, Lcom/migu/voiceads/bussiness/a$a;->c:Lcom/migu/voiceads/bussiness/a$a;

    iget-object v3, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v2, v3}, Lcom/migu/voiceads/bussiness/a$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/migu/voiceads/bussiness/a$a;->b:Lcom/migu/voiceads/bussiness/a$a;

    iget-object v3, p0, Lcom/migu/voiceads/view/AdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v2, v3}, Lcom/migu/voiceads/bussiness/a$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "back_key_interception"

    invoke-virtual {v1, v2}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "back_key_enable"

    invoke-virtual {v1, v2}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/migu/voiceads/view/AdView;->l:Lcom/migu/voiceads/bussiness/d;

    invoke-interface {v1}, Lcom/migu/voiceads/bussiness/d;->a()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/migu/voiceads/view/AdView;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/migu/voiceads/view/AdView;->x:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/migu/voiceads/view/AdView;->y:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/migu/voiceads/view/AdView;->z:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/migu/voiceads/view/AdView;->A:I

    invoke-direct {p0}, Lcom/migu/voiceads/view/AdView;->t()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "onTouchEvent:ACTION_DOWN"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->d:Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    iput p2, p0, Lcom/migu/voiceads/view/AdView;->p:I

    return-void
.end method

.method protected p()Z
    .locals 3

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->o()Lcom/migu/voiceads/bussiness/a$b;

    move-result-object v0

    sget-object v1, Lcom/migu/voiceads/bussiness/a$b;->d:Lcom/migu/voiceads/bussiness/a$b;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAdPageFinished:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAdPageFinished:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v0, Lcom/migu/voiceads/bussiness/a$b;->d:Lcom/migu/voiceads/bussiness/a$b;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/view/AdView;->a(Lcom/migu/voiceads/bussiness/a$b;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/AdView;->k:Lcom/migu/voiceads/MIGUAdListener;

    invoke-interface {v0}, Lcom/migu/voiceads/MIGUAdListener;->onAdReceive()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
