.class public final Lcom/migu/uem/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/migu/uem/a/d/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:Lcom/migu/uem/a/d/a;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/migu/uem/a/d/a;Lcom/migu/uem/a/d/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/migu/uem/c/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/migu/uem/c/b;->d:Lcom/migu/uem/a/d/a;

    iput-object p3, p0, Lcom/migu/uem/c/b;->a:Lcom/migu/uem/a/d/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/migu/uem/a/d/a;Lcom/migu/uem/a/d/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/migu/uem/c/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/migu/uem/c/b;->d:Lcom/migu/uem/a/d/a;

    iput-object p3, p0, Lcom/migu/uem/c/b;->a:Lcom/migu/uem/a/d/b;

    iput-object p4, p0, Lcom/migu/uem/c/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/migu/uem/c/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/migu/uem/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/migu/uem/a/d/b;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/b;->a:Lcom/migu/uem/a/d/b;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/migu/uem/c/b;->g:J

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/c/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/migu/uem/c/b;->c:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/c/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/b;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/migu/uem/c/b;->g:J

    return-wide v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final g()Lcom/migu/uem/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/b;->d:Lcom/migu/uem/a/d/a;

    return-object v0
.end method
