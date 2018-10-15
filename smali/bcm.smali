.class public abstract Lbcm;
.super Lbcl;
.source "LimitedMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lbcl",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "sizeLimit"    # I

    .prologue
    .line 55
    .local p0, "this":Lbcm;, "Lbcm<TK;TV;>;"
    invoke-direct {p0}, Lbcl;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbcm;->c:Ljava/util/List;

    .line 56
    iput p1, p0, Lbcm;->a:I

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbcm;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    const/high16 v0, 0x1000000

    if-le p1, v0, :cond_0

    .line 59
    const-string/jumbo v0, "You set too large memory cache size (more than %1$d Mb)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lbcm;, "Lbcm<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 67
    .local v1, "putSuccessfully":Z
    invoke-virtual {p0, p2}, Lbcm;->d(Ljava/lang/Object;)I

    move-result v4

    .line 68
    .local v4, "valueSize":I
    invoke-virtual {p0}, Lbcm;->b()I

    move-result v3

    .line 69
    .local v3, "sizeLimit":I
    iget-object v5, p0, Lbcm;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 70
    .local v0, "curCacheSize":I
    if-ge v4, v3, :cond_2

    .line 71
    :cond_0
    :goto_0
    add-int v5, v0, v4

    if-le v5, v3, :cond_1

    .line 72
    invoke-virtual {p0}, Lbcm;->c()Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "removedValue":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Lbcm;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    iget-object v5, p0, Lbcm;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Lbcm;->d(Ljava/lang/Object;)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_0

    .line 77
    .end local v2    # "removedValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v5, p0, Lbcm;->c:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v5, p0, Lbcm;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 80
    const/4 v1, 0x1

    .line 83
    :cond_2
    invoke-super {p0, p1, p2}, Lbcl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    return v1
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lbcm;, "Lbcm<TK;TV;>;"
    iget v0, p0, Lbcm;->a:I

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lbcm;, "Lbcm<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lbcl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lbcm;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lbcm;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Lbcm;->d(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lbcl;->b(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method protected abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method protected abstract d(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method
