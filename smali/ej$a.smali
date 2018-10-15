.class Lej$a;
.super Ldr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lej;

.field private k:I

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Lej;


# direct methods
.method constructor <init>(Lej;Lej;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lej$a;->a:Lej;

    invoke-direct {p0}, Ldr;-><init>()V

    iput-object p2, p0, Lej$a;->p:Lej;

    const/4 v0, 0x0

    iput-object v0, p0, Lej$a;->m:Ljava/lang/String;

    iput-boolean v1, p0, Lej$a;->n:Z

    iput-boolean v1, p0, Lej$a;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lej$a;->f:Ljava/util/List;

    iput v1, p0, Lej$a;->k:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lej$a;->l:J

    return-void
.end method

.method static synthetic a(Lej$a;)V
    .locals 0

    invoke-direct {p0}, Lej$a;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-boolean v0, p0, Lej$a;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lej$a;->p:Lej;

    invoke-static {v0}, Lej;->a(Lej;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lej$a;->m:Ljava/lang/String;

    iget-wide v0, p0, Lej$a;->l:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lej$a;->l:J

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lej$a;->k:I

    iput-wide v4, p0, Lej$a;->l:J

    :cond_0
    iget-object v0, p0, Lej$a;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lej$a;->k:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lej$a;->n:Z

    invoke-virtual {p0}, Lej$a;->f()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lej$a;)Z
    .locals 1

    iget-boolean v0, p0, Lej$a;->o:Z

    return v0
.end method

.method static synthetic c(Lej$a;)Lej;
    .locals 1

    iget-object v0, p0, Lej$a;->p:Lej;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lej$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lej$a;->f:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "qt"

    const-string/jumbo v3, "ofbh"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lej$a;->f:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "req"

    iget-object v3, p0, Lej$a;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/location/c/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lej$a;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lej$a;->o:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lej$a;->e:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lej$a;->e:Lorg/apache/http/HttpEntity;

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string/jumbo v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lej$a;->o:Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lej$a;->n:Z

    iget-boolean v0, p0, Lej$a;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Lej$a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lej$a;->k:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lej$a;->l:J

    :cond_1
    new-instance v0, Lek;

    invoke-direct {v0, p0}, Lek;-><init>(Lej$a;)V

    invoke-virtual {v0}, Lek;->start()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
