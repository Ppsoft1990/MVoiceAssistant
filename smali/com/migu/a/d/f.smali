.class public Lcom/migu/a/d/f;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private bo:Ljava/lang/String;

.field private bp:Ljava/lang/String;

.field private bq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/migu/a/d/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/a/d/f;->bo:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/a/d/f;->bp:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/migu/a/d/f;->bq:Ljava/util/List;

    .line 12
    if-nez p1, :cond_0

    .line 14
    :goto_0
    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/migu/a/d/f;->bo:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/a/d/f;->bo:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/a/d/f;->bp:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/migu/a/d/f;->bq:Ljava/util/List;

    .line 17
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    iput-object p1, p0, Lcom/migu/a/d/f;->bo:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/migu/a/d/f;->bp:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/migu/a/d/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/migu/a/d/f;->bq:Ljava/util/List;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/migu/a/d/f;->k(Ljava/lang/String;)Lcom/migu/a/d/f;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/migu/a/d/f;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/migu/a/d/f;->bo:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/migu/a/d/f;->bp:Ljava/lang/String;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/migu/a/d/f;->bq:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/a/d/f;->bq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/migu/a/d/f;->bo:Ljava/lang/String;

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)Lcom/migu/a/d/f;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Lcom/migu/a/d/f;->bo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-object p0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/migu/a/d/f;->bq:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/a/d/f;->bq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object p0, v1

    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/migu/a/d/f;->bq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object p0, v1

    .line 37
    goto :goto_0

    .line 34
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/a/d/f;

    .line 35
    invoke-virtual {v0, p1}, Lcom/migu/a/d/f;->k(Ljava/lang/String;)Lcom/migu/a/d/f;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object p0, v0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/migu/a/d/f;->k(Ljava/lang/String;)Lcom/migu/a/d/f;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/a/d/f;->bq:Ljava/util/List;

    new-instance v1, Lcom/migu/a/d/f;

    invoke-direct {v1, p1, p2}, Lcom/migu/a/d/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0, p2}, Lcom/migu/a/d/f;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/migu/a/d/f;->bp:Ljava/lang/String;

    goto :goto_0
.end method
