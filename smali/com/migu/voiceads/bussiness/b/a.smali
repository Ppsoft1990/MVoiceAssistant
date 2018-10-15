.class public Lcom/migu/voiceads/bussiness/b/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Lorg/json/JSONObject;


# instance fields
.field protected a:Lcom/migu/voiceads/a/a;

.field protected b:Landroid/content/Context;

.field c:Lcom/migu/voiceads/utils/j$a;

.field private e:Lcom/migu/voiceads/a/e;

.field private f:Lcom/migu/voiceads/MIGUHtmlAdListener;

.field private g:Lcom/migu/voiceads/bussiness/b/d;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/bussiness/b/a;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/migu/voiceads/MIGUHtmlAdListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/bussiness/b/a;->h:Z

    new-instance v0, Lcom/migu/voiceads/bussiness/b/b;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/bussiness/b/b;-><init>(Lcom/migu/voiceads/bussiness/b/a;)V

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->c:Lcom/migu/voiceads/utils/j$a;

    new-instance v0, Lcom/migu/voiceads/a/a;

    sget-object v1, Lcom/migu/voiceads/bussiness/a$a;->a:Lcom/migu/voiceads/bussiness/a$a;

    invoke-direct {v0, p1, v1, p2}, Lcom/migu/voiceads/a/a;-><init>(Landroid/content/Context;Lcom/migu/voiceads/bussiness/a$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->a:Lcom/migu/voiceads/a/a;

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/b/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/migu/voiceads/bussiness/b/a;->f:Lcom/migu/voiceads/MIGUHtmlAdListener;

    new-instance v0, Lcom/migu/voiceads/a/e;

    invoke-direct {v0, p1}, Lcom/migu/voiceads/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->e:Lcom/migu/voiceads/a/e;

    new-instance v0, Lcom/migu/voiceads/bussiness/b/d;

    invoke-direct {v0}, Lcom/migu/voiceads/bussiness/b/d;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->g:Lcom/migu/voiceads/bussiness/b/d;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->g:Lcom/migu/voiceads/bussiness/b/d;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/a;->f:Lcom/migu/voiceads/MIGUHtmlAdListener;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/b/d;->a(Lcom/migu/voiceads/MIGUHtmlAdListener;)V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/bussiness/b/a;)Lcom/migu/voiceads/bussiness/b/d;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->g:Lcom/migu/voiceads/bussiness/b/d;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->a:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "adunitid"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "adw"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "adh"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "isboot"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ts"

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ext"

    const-string/jumbo v2, "ext"

    invoke-virtual {v0, v2}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "js_call_native"

    const-string/jumbo v2, "1"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "geo"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "geo"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v1, "context"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "context"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->b:Landroid/content/Context;

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

.method static synthetic a(Lcom/migu/voiceads/bussiness/b/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/voiceads/MIGUAdError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/migu/voiceads/bussiness/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/voiceads/MIGUAdError;
        }
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->e:Lcom/migu/voiceads/a/e;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/a/e;->a(Ljava/lang/String;)V

    const v0, 0x11238

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/a;->e:Lcom/migu/voiceads/a/e;

    iget v1, v1, Lcom/migu/voiceads/a/e;->a:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/migu/voiceads/bussiness/b/c;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/a;->e:Lcom/migu/voiceads/a/e;

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/b/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/b/a;->a:Lcom/migu/voiceads/a/a;

    iget-boolean v4, p0, Lcom/migu/voiceads/bussiness/b/a;->h:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/migu/voiceads/bussiness/b/c;-><init>(Lcom/migu/voiceads/a/e;Landroid/content/Context;Lcom/migu/voiceads/a/a;Z)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/a;->g:Lcom/migu/voiceads/bussiness/b/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/migu/voiceads/bussiness/b/d;->a(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->g:Lcom/migu/voiceads/bussiness/b/d;

    const/4 v1, 0x1

    new-instance v2, Lcom/migu/voiceads/MIGUAdError;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/b/a;->e:Lcom/migu/voiceads/a/e;

    iget v3, v3, Lcom/migu/voiceads/a/e;->a:I

    invoke-direct {v2, v3}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b/d;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/migu/voiceads/utils/n;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/a;->f:Lcom/migu/voiceads/MIGUHtmlAdListener;

    new-instance v2, Lcom/migu/voiceads/MIGUAdError;

    const v3, 0x1155b

    invoke-direct {v2, v3}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/migu/voiceads/MIGUHtmlAdListener;->onAdFailed(Lcom/migu/voiceads/MIGUAdError;)V

    :cond_0
    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/migu/voiceads/bussiness/a$a;->a:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/b/a;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {v3}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/migu/voiceads/bussiness/a$a;->a:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is requesting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/migu/voiceads/bussiness/b/a;->d:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/migu/voiceads/a/d;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    sput-object v1, Lcom/migu/voiceads/bussiness/b/a;->d:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/migu/voiceads/bussiness/b/a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lcom/migu/voiceads/bussiness/b/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "batch_cnt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "send:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/migu/voiceads/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->c:Lcom/migu/voiceads/utils/j$a;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/j;->a(Lcom/migu/voiceads/utils/j$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b/a;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/bussiness/b/a;->h:Z

    return-void
.end method
