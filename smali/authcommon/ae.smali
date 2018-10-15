.class public abstract Lauthcommon/ae;
.super Ljava/lang/Object;
.source "AbstractBasePostHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lauthcommon/ae$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lauthcommon/ae$a;

.field protected f:Lorg/json/JSONObject;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lauthcommon/ae;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lauthcommon/ae;->d:Ljava/util/Map;

    invoke-static {}, Lcom/cmcc/migusso/auth/common/HostConfig;->getAuthPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ae;->g:Ljava/lang/String;

    const-string/jumbo v0, "Authorization"

    iput-object v0, p0, Lauthcommon/ae;->h:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lauthcommon/ae;->f:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lauthcommon/ae;->k:Ljava/util/Timer;

    iput-object p1, p0, Lauthcommon/ae;->a:Landroid/content/Context;

    iput-object p2, p0, Lauthcommon/ae;->b:Ljava/lang/String;

    iput-object p3, p0, Lauthcommon/ae;->g:Ljava/lang/String;

    iput-object p4, p0, Lauthcommon/ae;->h:Ljava/lang/String;

    iput-object p5, p0, Lauthcommon/ae;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(I)V
    .locals 2

    iget-object v0, p0, Lauthcommon/ae;->e:Lauthcommon/ae$a;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lauthcommon/ae;->e:Lauthcommon/ae$a;

    invoke-interface {v1, v0}, Lauthcommon/ae$a;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final a(Lauthcommon/ae$a;)V
    .locals 5

    iput-object p1, p0, Lauthcommon/ae;->e:Lauthcommon/ae$a;

    const-string/jumbo v0, "home  doRequest"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/util/CommonUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x18ed5

    invoke-virtual {p0, v0}, Lauthcommon/ae;->a(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lauthcommon/ae;->a()V

    iget-object v0, p0, Lauthcommon/ae;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauthcommon/ae;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauthcommon/ae;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mUrl or mParams must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lauthcommon/ae;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lauthcommon/ae;->c:Ljava/util/Map;

    const-string/jumbo v1, "appid"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lauthcommon/ae;->c:Ljava/util/Map;

    const-string/jumbo v1, "appid"

    iget-object v3, p0, Lauthcommon/ae;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lauthcommon/ae;->c:Ljava/util/Map;

    const-string/jumbo v1, "apptype"

    const-string/jumbo v3, "3"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ae;->c:Ljava/util/Map;

    const-string/jumbo v1, "Phone_ID"

    iget-object v3, p0, Lauthcommon/ae;->a:Landroid/content/Context;

    invoke-static {v3}, Lauthcommon/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ae;->c:Ljava/util/Map;

    const-string/jumbo v1, "clientversion"

    const-string/jumbo v3, "1.0"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ae;->c:Ljava/util/Map;

    const-string/jumbo v1, "msgid"

    iget-object v3, p0, Lauthcommon/ae;->a:Landroid/content/Context;

    invoke-static {v3}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v3

    invoke-virtual {v3}, Lauthcommon/bs;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauthcommon/ae;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/ae;->i:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/ae;->k:Ljava/util/Timer;

    new-instance v1, Lauthcommon/af;

    invoke-direct {v1, p0}, Lauthcommon/af;-><init>(Lauthcommon/ae;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string/jumbo v0, "home before doRequest"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const-string/jumbo v0, "home doHttpPost"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lauthcommon/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/util/RSAUtil;->getInstance(Landroid/content/Context;)Lcom/cmcc/util/RSAUtil;

    move-result-object v0

    iget-object v2, p0, Lauthcommon/ae;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmcc/util/RSAUtil;->sign([B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lauthcommon/ae;->h:Ljava/lang/String;

    iget-object v3, p0, Lauthcommon/ae;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "signature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mUrl : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lauthcommon/ae;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lauthcommon/ae;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lauthcommon/ae;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "signature : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/ae;->g:Ljava/lang/String;

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lauthcommon/ae;->a:Landroid/content/Context;

    iget-object v2, p0, Lauthcommon/ae;->g:Ljava/lang/String;

    iget-object v3, p0, Lauthcommon/ae;->d:Ljava/util/Map;

    invoke-static {v0, v2, v1, v3}, Lauthcommon/bp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lauthcommon/ae;->j:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lauthcommon/ae;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v1, p0, Lauthcommon/ae;->a:Landroid/content/Context;

    invoke-static {v1}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v1

    iget-object v2, p0, Lauthcommon/ae;->f:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lauthcommon/bs;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "home after doRequest"

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lauthcommon/ae;->k:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lauthcommon/ae;->a(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lauthcommon/ae;->g:Ljava/lang/String;

    iget-object v2, p0, Lauthcommon/ae;->d:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lauthcommon/bp;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "home doresponse is null"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f4c

    invoke-virtual {p0, v0}, Lauthcommon/ae;->a(I)V

    goto/16 :goto_0
.end method

.method protected abstract a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
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
.end method

.method protected abstract a(Ljava/util/Map;)V
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
.end method
