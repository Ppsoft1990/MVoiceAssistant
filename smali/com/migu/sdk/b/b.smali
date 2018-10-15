.class public Lcom/migu/sdk/b/b;
.super Lcom/migu/a/c/a;
.source "NetRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/migu/a/c/b;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/migu/a/c/a;-><init>(Landroid/content/Context;Lcom/migu/a/c/b;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/migu/a/c/b;Lcom/migu/a/c/d;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/migu/a/c/a;-><init>(Landroid/content/Context;Lcom/migu/a/c/b;Lcom/migu/a/c/d;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(I[B[Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&apiVersion=2.0&SDKVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/migu/sdk/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "  "

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string/jumbo v1, "apiVersion"

    const-string/jumbo v2, "2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v1, "SDKVersion"

    sget-object v2, Lcom/migu/sdk/a/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v1, "imei"

    sget-object v2, Lcom/migu/sdk/c/a;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v1, "imsi"

    sget-object v2, Lcom/migu/sdk/c/a;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v1, "nRQd-Lx"

    sget-object v2, Lcom/migu/sdk/a/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/migu/sdk/b/b$1;

    invoke-direct {v0, p0}, Lcom/migu/sdk/b/b$1;-><init>(Lcom/migu/sdk/b/b;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method
