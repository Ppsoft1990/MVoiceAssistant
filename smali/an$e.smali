.class final Lan$e;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lan;


# direct methods
.method constructor <init>(Lan;)V
    .locals 0

    .prologue
    .line 353
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    iput-object p1, p0, Lan$e;->a:Lan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 367
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    iget-object v0, p0, Lan$e;->a:Lan;

    invoke-virtual {v0}, Lan;->c()V

    .line 368
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 372
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    iget-object v0, p0, Lan$e;->a:Lan;

    invoke-virtual {v0, p1}, Lan;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 378
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lan$e;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    const/4 v1, 0x0

    .line 383
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 388
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    iget-object v0, p0, Lan$e;->a:Lan;

    invoke-virtual {v0}, Lan;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    new-instance v0, Lan$a;

    iget-object v1, p0, Lan$e;->a:Lan;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lan$a;-><init>(Lan;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 398
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    iget-object v1, p0, Lan$e;->a:Lan;

    invoke-virtual {v1, p1}, Lan;->b(Ljava/lang/Object;)I

    move-result v0

    .line 399
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 400
    iget-object v1, p0, Lan$e;->a:Lan;

    invoke-virtual {v1, v0}, Lan;->a(I)V

    .line 401
    const/4 v1, 0x1

    .line 403
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v4, p0, Lan$e;->a:Lan;

    invoke-virtual {v4}, Lan;->a()I

    move-result v0

    .line 409
    .local v0, "N":I
    const/4 v1, 0x0

    .line 410
    .local v1, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 411
    iget-object v4, p0, Lan$e;->a:Lan;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lan;->a(II)Ljava/lang/Object;

    move-result-object v2

    .line 412
    .local v2, "cur":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 413
    iget-object v4, p0, Lan$e;->a:Lan;

    invoke-virtual {v4, v3}, Lan;->a(I)V

    .line 414
    add-int/lit8 v3, v3, -0x1

    .line 415
    add-int/lit8 v0, v0, -0x1

    .line 416
    const/4 v1, 0x1

    .line 410
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    .end local v2    # "cur":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v4, p0, Lan$e;->a:Lan;

    invoke-virtual {v4}, Lan;->a()I

    move-result v0

    .line 425
    .local v0, "N":I
    const/4 v1, 0x0

    .line 426
    .local v1, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 427
    iget-object v4, p0, Lan$e;->a:Lan;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lan;->a(II)Ljava/lang/Object;

    move-result-object v2

    .line 428
    .local v2, "cur":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    iget-object v4, p0, Lan$e;->a:Lan;

    invoke-virtual {v4, v3}, Lan;->a(I)V

    .line 430
    add-int/lit8 v3, v3, -0x1

    .line 431
    add-int/lit8 v0, v0, -0x1

    .line 432
    const/4 v1, 0x1

    .line 426
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "cur":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 440
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    iget-object v0, p0, Lan$e;->a:Lan;

    invoke-virtual {v0}, Lan;->a()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 445
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    iget-object v0, p0, Lan$e;->a:Lan;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lan;->b(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lan$e;, "Lan<TK;TV;>.e;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lan$e;->a:Lan;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lan;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
