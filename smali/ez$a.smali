.class Lez$a;
.super Ldr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lez;

.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lez;)V
    .locals 1

    iput-object p1, p0, Lez$a;->a:Lez;

    invoke-direct {p0}, Ldr;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lez$a;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lez$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lez$a;->d:I

    invoke-static {}, Ldp;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lez$a;->c:Ljava/lang/String;

    invoke-static {}, Ldk;->a()Ldk;

    move-result-object v0

    invoke-virtual {v0}, Ldk;->b()Ljava/lang/String;

    move-result-object v0

    sget v1, Lez$a;->b:I

    sget v2, Ldm;->e:I

    if-eq v1, v2, :cond_0

    sget v1, Lez$a;->b:I

    sget v2, Ldm;->f:I

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/sdk.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lez$a;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lez$a;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lez$a;->k:Ljava/lang/String;

    iget-object v1, p0, Lez$a;->f:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "bloc"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lez$a;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lez$a;->f()V

    return-void
.end method

.method public a(Z)V
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lez$a;->e:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lez$a;->e:Lorg/apache/http/HttpEntity;

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lez$a;->a:Lez;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lez;->a(Lez;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lez$a;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lez$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lez$a;->a:Lez;

    invoke-static {v0, v3}, Lez;->a(Lez;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v6, Ldp;->g:Z

    const/4 v0, 0x1

    sput-boolean v0, Ldp;->g:Z

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v1

    invoke-virtual {v1}, Lfy;->f()Lfw;

    move-result-object v1

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v2

    invoke-virtual {v2}, Lfz;->j()Lfu;

    move-result-object v2

    sget-object v4, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v5, Lcom/baidu/location/c/d$b;->a:Lcom/baidu/location/c/d$b;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/c/d;->a(Lfw;Lfu;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lez$a;->a:Lez;

    invoke-static {v0, v3}, Lez;->a(Lez;Ljava/lang/String;)V

    :goto_1
    if-nez v6, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Ldp;->g:Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lez$a;->a:Lez;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lez;->a(Lez;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lez$a;->a:Lez;

    invoke-static {v0, v3}, Lez;->a(Lez;Ljava/lang/String;)V

    goto :goto_1
.end method
