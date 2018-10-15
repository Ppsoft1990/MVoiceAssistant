.class Ldy$a;
.super Ldr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ldy;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method constructor <init>(Ldy;)V
    .locals 1

    iput-object p1, p0, Ldy$a;->a:Ldy;

    invoke-direct {p0}, Ldr;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldy$a;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldy$a;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldy$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Ldy$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ldy$a;->f:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "qt"

    const-string/jumbo v3, "stat"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldy$a;->f:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "req"

    iget-object v3, p0, Ldy$a;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "http://loc.map.baidu.com/statloc"

    iput-object v0, p0, Ldy$a;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ldy$a;->k:Ljava/lang/String;

    iget-object v0, p0, Ldy$a;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldy$a;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldy$a;->l:Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldy$a;->l:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Ldy$a;->e:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ldy$a;->e:Lorg/apache/http/HttpEntity;

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldy$a;->a:Ldy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ldy;->a(Ldy;J)J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ldy$a;->l:Z

    return v0
.end method
