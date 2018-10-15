.class Lfn$b;
.super Ldr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lfn;


# direct methods
.method public constructor <init>(Lfn;)V
    .locals 0

    iput-object p1, p0, Lfn$b;->a:Lfn;

    invoke-direct {p0}, Ldr;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfn$b;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lfn$b;->g()V

    return-void
.end method

.method public a(Z)V
    .locals 8

    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-static {v0}, Lfn;->a(Lfn;)Ldq;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldq;->c(J)V

    if-eqz p1, :cond_a

    iget-object v0, p0, Lfn$b;->e:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_a

    :try_start_0
    iget-object v0, p0, Lfn$b;->e:Lorg/apache/http/HttpEntity;

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfn$b;->a:Lfn;

    new-instance v2, Lfm;

    invoke-direct {v2, v0}, Lfm;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lfn;->c:Lfm;

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-boolean v0, v0, Lfn;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v2, Lcom/baidu/location/BDLocation;

    invoke-direct {v2}, Lcom/baidu/location/BDLocation;-><init>()V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->d()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/baidu/location/BDLocation;->b(D)V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->c()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/baidu/location/BDLocation;->a(D)V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->e()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->b(F)V

    const/16 v0, 0xa1

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->c(I)V

    const-string/jumbo v0, "wgs84"

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "sky"

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    iget-object v3, v0, Lfm;->b:Ljava/lang/String;

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    iget-object v1, v0, Lfm;->d:Ljava/lang/String;

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    iget-object v0, v0, Lfm;->a:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lfn$b;->a:Lfn;

    iget-object v1, v1, Lfn;->c:Lfm;

    iget-object v1, v1, Lfm;->h:Ljava/lang/String;

    :cond_0
    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    iget-object v0, v0, Lfm;->j:Ljava/lang/String;

    :cond_1
    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    iget-object v0, v0, Lfm;->i:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lfn$b;->a:Lfn;

    iget-object v4, v4, Lfn;->c:Lfm;

    iget-object v4, v4, Lfm;->e:Ljava/lang/String;

    iget-object v5, p0, Lfn$b;->a:Lfn;

    iget-object v5, v5, Lfn;->c:Lfm;

    iget-object v5, v5, Lfm;->f:Ljava/lang/String;

    iget-object v6, p0, Lfn$b;->a:Lfn;

    iget-object v6, v6, Lfn;->c:Lfm;

    iget-object v6, v6, Lfm;->g:Ljava/lang/String;

    new-instance v7, Lda$a;

    invoke-direct {v7}, Lda$a;-><init>()V

    invoke-virtual {v7, v3}, Lda$a;->a(Ljava/lang/String;)Lda$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lda$a;->c(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lda$a;->d(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lda$a;->f(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lda$a;->g(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lda$a;->h(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0}, Lda$a;->a()Lda;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lfn;->b()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/location/BDLocation;->a(Ljava/lang/String;)V

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v1

    invoke-virtual {v1}, Lfy;->g()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/location/BDLocation;->d(I)V

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v1

    invoke-virtual {v1}, Lfb;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v1

    invoke-virtual {v1}, Lfb;->f()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/location/BDLocation;->c(F)V

    :cond_3
    sget-object v1, Ldp;->f:Ljava/lang/String;

    const-string/jumbo v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->a(Lda;)V

    :cond_4
    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->d()D

    move-result-wide v0

    iget-object v3, p0, Lfn$b;->a:Lfn;

    iget-object v3, v3, Lfn;->c:Lfm;

    invoke-virtual {v3}, Lfm;->c()D

    move-result-wide v4

    const-string/jumbo v3, "gps2gcj"

    invoke-static {v0, v1, v4, v5, v3}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v0

    const-string/jumbo v1, "gcj02"

    invoke-virtual {v2, v1}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Lcom/baidu/location/BDLocation;->b(D)V

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-virtual {v2, v0, v1}, Lcom/baidu/location/BDLocation;->a(D)V

    :cond_5
    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v0

    iget-object v0, v0, Lfc;->h:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-static {v0}, Lfn;->a(Lfn;)Ldq;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldq;->d(J)V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-static {v0}, Lfn;->a(Lfn;)Ldq;

    move-result-object v0

    const-string/jumbo v1, "skys"

    invoke-virtual {v0, v1}, Ldq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->a:Lfw;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-static {v0}, Lfn;->a(Lfn;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lfn$b;->a:Lfn;

    iget-object v1, v1, Lfn;->a:Lfw;

    invoke-virtual {v1}, Lfw;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldq;->b(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    iget-object v1, p0, Lfn$b;->a:Lfn;

    invoke-static {v1}, Lfn;->a(Lfn;)Ldq;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldy;->a(Ldq;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-boolean v0, v0, Lfn;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->b()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->a(I)V

    invoke-static {}, Len;->a()Len;

    move-result-object v1

    invoke-virtual {v1, v0}, Len;->a(Lcom/baidu/location/BDLocation;)V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-static {v0}, Lfn;->a(Lfn;)Ldq;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldq;->d(J)V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-static {v0}, Lfn;->a(Lfn;)Ldq;

    move-result-object v0

    const-string/jumbo v1, "skyf"

    invoke-virtual {v0, v1}, Ldq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfn$b;->a:Lfn;

    iget-object v0, v0, Lfn;->a:Lfw;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-static {v0}, Lfn;->a(Lfn;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lfn$b;->a:Lfn;

    iget-object v1, v1, Lfn;->a:Lfw;

    invoke-virtual {v1}, Lfw;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldq;->b(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    iget-object v1, p0, Lfn$b;->a:Lfn;

    invoke-static {v1}, Lfn;->a(Lfn;)Ldq;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldy;->a(Ldq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_a
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->a(I)V

    invoke-static {}, Len;->a()Len;

    move-result-object v1

    invoke-virtual {v1, v0}, Len;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_0
.end method
