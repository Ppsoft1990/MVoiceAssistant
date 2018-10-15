.class public Lcom/migu/voiceads/bussiness/a/e;
.super Ljava/lang/Object;


# static fields
.field private static d:Lorg/json/JSONObject;


# instance fields
.field protected a:Lcom/migu/voiceads/a/a;

.field protected b:Landroid/content/Context;

.field c:Lcom/migu/voiceads/utils/j$a;

.field private e:Lcom/migu/voiceads/a/c;

.field private f:Lcom/migu/voiceads/bussiness/a/c;

.field private volatile g:Ljava/lang/Boolean;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Landroid/os/Bundle;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/bussiness/a/e;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/bussiness/a/c;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->g:Ljava/lang/Boolean;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/migu/voiceads/bussiness/a/e;->h:J

    iput-object v3, p0, Lcom/migu/voiceads/bussiness/a/e;->i:Ljava/lang/String;

    iput-object v3, p0, Lcom/migu/voiceads/bussiness/a/e;->j:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/migu/voiceads/bussiness/a/e;->k:Z

    new-instance v0, Lcom/migu/voiceads/bussiness/a/f;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/bussiness/a/f;-><init>(Lcom/migu/voiceads/bussiness/a/e;)V

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->c:Lcom/migu/voiceads/utils/j$a;

    iput-object p2, p0, Lcom/migu/voiceads/bussiness/a/e;->a:Lcom/migu/voiceads/a/a;

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/a/e;->b:Landroid/content/Context;

    new-instance v0, Lcom/migu/voiceads/a/c;

    invoke-direct {v0, p1}, Lcom/migu/voiceads/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->e:Lcom/migu/voiceads/a/c;

    iput-object p3, p0, Lcom/migu/voiceads/bussiness/a/e;->f:Lcom/migu/voiceads/bussiness/a/c;

    iput-boolean p4, p0, Lcom/migu/voiceads/bussiness/a/e;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/bussiness/a/e;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->a:Lcom/migu/voiceads/a/a;

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

    invoke-direct {p0}, Lcom/migu/voiceads/bussiness/a/e;->a()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->b:Landroid/content/Context;

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

.method static synthetic a(Lcom/migu/voiceads/bussiness/a/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/voiceads/MIGUAdError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/migu/voiceads/bussiness/a/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/migu/voiceads/bussiness/a/e;)Lcom/migu/voiceads/bussiness/a/c;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->f:Lcom/migu/voiceads/bussiness/a/c;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/voiceads/MIGUAdError;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/e;->e:Lcom/migu/voiceads/a/c;

    invoke-virtual {v1, p1}, Lcom/migu/voiceads/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/e;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x11238

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/e;->e:Lcom/migu/voiceads/a/c;

    iget v2, v2, Lcom/migu/voiceads/a/c;->a:I

    if-ne v1, v2, :cond_2

    new-instance v9, Lcom/migu/voiceads/bussiness/a/b;

    invoke-direct {v9}, Lcom/migu/voiceads/bussiness/a/b;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v8, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->e:Lcom/migu/voiceads/a/c;

    iget-object v0, v0, Lcom/migu/voiceads/a/c;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v8, v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->e:Lcom/migu/voiceads/a/c;

    iget-object v0, v0, Lcom/migu/voiceads/a/c;->g:Lorg/json/JSONArray;

    iput-object v0, v9, Lcom/migu/voiceads/bussiness/a/b;->b:Lorg/json/JSONArray;

    iput-object v10, v9, Lcom/migu/voiceads/bussiness/a/b;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->f:Lcom/migu/voiceads/bussiness/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/migu/voiceads/bussiness/a/c;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lcom/migu/voiceads/MIGUAdError;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/e;->f:Lcom/migu/voiceads/bussiness/a/c;

    invoke-virtual {v1, v11, v0}, Lcom/migu/voiceads/bussiness/a/c;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/migu/voiceads/bussiness/a/d;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/e;->e:Lcom/migu/voiceads/a/c;

    iget-object v1, v1, Lcom/migu/voiceads/a/c;->f:Lorg/json/JSONArray;

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/e;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/a/e;->a:Lcom/migu/voiceads/a/a;

    iget-object v4, p0, Lcom/migu/voiceads/bussiness/a/e;->f:Lcom/migu/voiceads/bussiness/a/c;

    iget-object v5, p0, Lcom/migu/voiceads/bussiness/a/e;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/migu/voiceads/bussiness/a/e;->j:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/migu/voiceads/bussiness/a/e;->k:Z

    invoke-direct/range {v0 .. v7}, Lcom/migu/voiceads/bussiness/a/d;-><init>(Lorg/json/JSONObject;Landroid/content/Context;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/bussiness/a/c;Ljava/lang/String;Landroid/os/Bundle;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/migu/voiceads/MIGUAdError;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/e;->e:Lcom/migu/voiceads/a/c;

    iget v1, v1, Lcom/migu/voiceads/a/c;->a:I

    invoke-direct {v0, v1}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/e;->f:Lcom/migu/voiceads/bussiness/a/c;

    invoke-virtual {v1, v11, v0}, Lcom/migu/voiceads/bussiness/a/c;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/voiceads/MIGUAdError;

    const v1, 0x1155b

    invoke-direct {v0, v1}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/e;->f:Lcom/migu/voiceads/bussiness/a/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/migu/voiceads/bussiness/a/c;->a(ILjava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/migu/voiceads/bussiness/a$a;->e:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/e;->a:Lcom/migu/voiceads/a/a;

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

    sget-object v2, Lcom/migu/voiceads/bussiness/a$a;->e:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is requesting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/migu/voiceads/bussiness/a/e;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/a/d;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/migu/voiceads/bussiness/a/e;->d:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/migu/voiceads/bussiness/a/e;->d:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/bussiness/a/e;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "batch_cnt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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

    iget-wide v2, p0, Lcom/migu/voiceads/bussiness/a/e;->h:J

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/j;->a(I)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/e;->c:Lcom/migu/voiceads/utils/j$a;

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

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/migu/voiceads/bussiness/a/e;->h:J

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/a/e;->j:Landroid/os/Bundle;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/a/e;->i:Ljava/lang/String;

    return-void
.end method
