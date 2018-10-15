.class Let$a;
.super Ldr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field k:Z

.field l:Z

.field final synthetic m:Let;


# direct methods
.method public constructor <init>(Let;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Let$a;->m:Let;

    invoke-direct {p0}, Ldr;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Let$a;->a:Ljava/lang/String;

    iput-boolean v1, p0, Let$a;->k:Z

    iput-boolean v1, p0, Let$a;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Let$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Ldp;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Let$a;->c:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Let$a;->d:I

    iget-object v0, p0, Let$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Let$a;->a:Ljava/lang/String;

    iget-boolean v1, p0, Let$a;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Let$a;->f:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "qt"

    const-string/jumbo v4, "grid"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Let$a;->f:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "req"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Let$a;->f:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "qt"

    const-string/jumbo v4, "conf"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-boolean v0, p0, Let$a;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Let$a;->l:Z

    iput-object p1, p0, Let$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Let$a;->k:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Let$a;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Let$a;->f()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Let$a;->e:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Let$a;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Let$a;->m:Let;

    iget-object v1, p0, Let$a;->e:Lorg/apache/http/HttpEntity;

    invoke-static {v0, v1}, Let;->a(Let;Lorg/apache/http/HttpEntity;)V

    :goto_0
    iget-object v0, p0, Let$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Let$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Let$a;->l:Z

    return-void

    :cond_1
    iget-object v0, p0, Let$a;->m:Let;

    iget-object v1, p0, Let$a;->e:Lorg/apache/http/HttpEntity;

    invoke-static {v0, v1}, Let;->b(Let;Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Let$a;->m:Let;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Let;->b(Let;Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method
