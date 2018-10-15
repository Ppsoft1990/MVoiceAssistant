.class public Ls;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ls$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls$a",
            "<TD;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Ls;, "Ls<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Lal;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 370
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final a()V
    .locals 2

    .prologue
    .local p0, "this":Ls;, "Ls<TD;>;"
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls;->c:Z

    .line 196
    iput-boolean v1, p0, Ls;->e:Z

    .line 197
    iput-boolean v1, p0, Ls;->d:Z

    .line 198
    invoke-virtual {p0}, Ls;->b()V

    .line 199
    return-void
.end method

.method public a(ILs$a;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls$a",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Ls;, "Ls<TD;>;"
    .local p2, "listener":Ls$a;, "Ls$a<TD;>;"
    iget-object v0, p0, Ls;->b:Ls$a;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput-object p2, p0, Ls;->b:Ls$a;

    .line 134
    iput p1, p0, Ls;->a:I

    .line 135
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 393
    .local p0, "this":Ls;, "Ls<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ls;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 394
    const-string/jumbo v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ls;->b:Ls$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 395
    iget-boolean v0, p0, Ls;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ls;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ls;->g:Z

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ls;->c:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 397
    const-string/jumbo v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ls;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 398
    const-string/jumbo v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ls;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 400
    :cond_1
    iget-boolean v0, p0, Ls;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ls;->e:Z

    if-eqz v0, :cond_3

    .line 401
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ls;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 402
    const-string/jumbo v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ls;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 404
    :cond_3
    return-void
.end method

.method public a(Ls$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls$a",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Ls;, "Ls<TD;>;"
    .local p1, "listener":Ls$a;, "Ls$a<TD;>;"
    iget-object v0, p0, Ls;->b:Ls$a;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Ls;->b:Ls$a;

    if-eq v0, p1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ls;->b:Ls$a;

    .line 150
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 207
    .local p0, "this":Ls;, "Ls<TD;>;"
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Ls;, "Ls<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls;->c:Z

    .line 244
    invoke-virtual {p0}, Ls;->d()V

    .line 245
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 254
    .local p0, "this":Ls;, "Ls<TD;>;"
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .local p0, "this":Ls;, "Ls<TD;>;"
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p0}, Ls;->f()V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls;->e:Z

    .line 293
    iput-boolean v1, p0, Ls;->c:Z

    .line 294
    iput-boolean v1, p0, Ls;->d:Z

    .line 295
    iput-boolean v1, p0, Ls;->f:Z

    .line 296
    iput-boolean v1, p0, Ls;->g:Z

    .line 297
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 306
    .local p0, "this":Ls;, "Ls<TD;>;"
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    .local p0, "this":Ls;, "Ls<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lal;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 378
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget v1, p0, Ls;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
