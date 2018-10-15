.class final Ll$a;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Ls$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Lk$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Ls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Ll$a;

.field final synthetic o:Ll;


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 235
    iget-boolean v0, p0, Ll$a;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ll$a;->j:Z

    if-eqz v0, :cond_1

    .line 239
    iput-boolean v3, p0, Ll$a;->h:Z

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-boolean v0, p0, Ll$a;->h:Z

    if-nez v0, :cond_0

    .line 248
    iput-boolean v3, p0, Ll$a;->h:Z

    .line 250
    sget-boolean v0, Ll;->a:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    iget-object v0, p0, Ll$a;->d:Ls;

    if-nez v0, :cond_3

    iget-object v0, p0, Ll$a;->c:Lk$a;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Ll$a;->c:Lk$a;

    iget v1, p0, Ll$a;->a:I

    iget-object v2, p0, Ll$a;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lk$a;->a(ILandroid/os/Bundle;)Ls;

    move-result-object v0

    iput-object v0, p0, Ll$a;->d:Ls;

    .line 254
    :cond_3
    iget-object v0, p0, Ll$a;->d:Ls;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Ll$a;->d:Ls;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ll$a;->d:Ls;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ll$a;->d:Ls;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_4
    iget-boolean v0, p0, Ll$a;->m:Z

    if-nez v0, :cond_5

    .line 262
    iget-object v0, p0, Ll$a;->d:Ls;

    iget v1, p0, Ll$a;->a:I

    invoke-virtual {v0, v1, p0}, Ls;->a(ILs$a;)V

    .line 263
    iput-boolean v3, p0, Ll$a;->m:Z

    .line 265
    :cond_5
    iget-object v0, p0, Ll$a;->d:Ls;

    invoke-virtual {v0}, Ls;->a()V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ll$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 452
    const-string/jumbo v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ll$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 453
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ll$a;->c:Lk$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 454
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ll$a;->d:Ls;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Ll$a;->d:Ls;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Ll$a;->d:Ls;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ls;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 458
    :cond_0
    iget-boolean v0, p0, Ll$a;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ll$a;->f:Z

    if-eqz v0, :cond_2

    .line 459
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ll$a;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 460
    const-string/jumbo v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ll$a;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 461
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ll$a;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 463
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ll$a;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string/jumbo v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ll$a;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ll$a;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ll$a;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 467
    const-string/jumbo v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ll$a;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 468
    const-string/jumbo v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ll$a;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 469
    iget-object v0, p0, Ll$a;->n:Ll$a;

    if-eqz v0, :cond_3

    .line 470
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Ll$a;->n:Ll$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Ll$a;->n:Ll$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ll$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 474
    :cond_3
    return-void
.end method

.method a(Ls;Ljava/lang/Object;)V
    .locals 4
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "loader":Ls;, "Ls<Ljava/lang/Object;>;"
    iget-object v1, p0, Ll$a;->c:Lk$a;

    if-eqz v1, :cond_3

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v1, p0, Ll$a;->o:Ll;

    iget-object v1, v1, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Ll$a;->o:Ll;

    iget-object v1, v1, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Li;

    iget-object v0, v1, Li;->u:Ljava/lang/String;

    .line 422
    iget-object v1, p0, Ll$a;->o:Ll;

    iget-object v1, v1, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Li;

    const-string/jumbo v2, "onLoadFinished"

    iput-object v2, v1, Li;->u:Ljava/lang/String;

    .line 425
    :cond_0
    :try_start_0
    sget-boolean v1, Ll;->a:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Ls;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_1
    iget-object v1, p0, Ll$a;->c:Lk$a;

    invoke-interface {v1, p1, p2}, Lk$a;->a(Ls;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v1, p0, Ll$a;->o:Ll;

    iget-object v1, v1, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Ll$a;->o:Ll;

    iget-object v1, v1, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Li;

    iput-object v0, v1, Li;->u:Ljava/lang/String;

    .line 433
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Ll$a;->f:Z

    .line 435
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    return-void

    .line 429
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ll$a;->o:Ll;

    iget-object v2, v2, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_4

    .line 430
    iget-object v2, p0, Ll$a;->o:Ll;

    iget-object v2, v2, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Li;

    iput-object v0, v2, Li;->u:Ljava/lang/String;

    :cond_4
    throw v1
.end method

.method b()V
    .locals 3

    .prologue
    .line 270
    sget-boolean v0, Ll;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll$a;->i:Z

    .line 272
    iget-boolean v0, p0, Ll$a;->h:Z

    iput-boolean v0, p0, Ll$a;->j:Z

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Ll$a;->h:Z

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Ll$a;->c:Lk$a;

    .line 275
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 278
    iget-boolean v0, p0, Ll$a;->i:Z

    if-eqz v0, :cond_1

    .line 279
    sget-boolean v0, Ll;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ll$a;->i:Z

    .line 281
    iget-boolean v0, p0, Ll$a;->h:Z

    iget-boolean v1, p0, Ll$a;->j:Z

    if-eq v0, v1, :cond_1

    .line 282
    iget-boolean v0, p0, Ll$a;->h:Z

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0}, Ll$a;->e()V

    .line 291
    :cond_1
    iget-boolean v0, p0, Ll$a;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ll$a;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ll$a;->k:Z

    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Ll$a;->d:Ls;

    iget-object v1, p0, Ll$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ll$a;->a(Ls;Ljava/lang/Object;)V

    .line 300
    :cond_2
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 303
    iget-boolean v0, p0, Ll$a;->h:Z

    if-eqz v0, :cond_0

    .line 304
    iget-boolean v0, p0, Ll$a;->k:Z

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Ll$a;->k:Z

    .line 306
    iget-boolean v0, p0, Ll$a;->e:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Ll$a;->d:Ls;

    iget-object v1, p0, Ll$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ll$a;->a(Ls;Ljava/lang/Object;)V

    .line 311
    :cond_0
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    sget-boolean v0, Ll;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    iput-boolean v3, p0, Ll$a;->h:Z

    .line 316
    iget-boolean v0, p0, Ll$a;->i:Z

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Ll$a;->d:Ls;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ll$a;->m:Z

    if-eqz v0, :cond_1

    .line 319
    iput-boolean v3, p0, Ll$a;->m:Z

    .line 320
    iget-object v0, p0, Ll$a;->d:Ls;

    invoke-virtual {v0, p0}, Ls;->a(Ls$a;)V

    .line 321
    iget-object v0, p0, Ll$a;->d:Ls;

    invoke-virtual {v0}, Ls;->c()V

    .line 324
    :cond_1
    return-void
.end method

.method f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 327
    sget-boolean v2, Ll;->a:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Destroying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Ll$a;->l:Z

    .line 329
    iget-boolean v1, p0, Ll$a;->f:Z

    .line 330
    .local v1, "needReset":Z
    iput-boolean v5, p0, Ll$a;->f:Z

    .line 331
    iget-object v2, p0, Ll$a;->c:Lk$a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ll$a;->d:Ls;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Ll$a;->e:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 332
    sget-boolean v2, Ll;->a:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Reseting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    const/4 v0, 0x0

    .line 334
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v2, p0, Ll$a;->o:Ll;

    iget-object v2, v2, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, p0, Ll$a;->o:Ll;

    iget-object v2, v2, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Li;

    iget-object v0, v2, Li;->u:Ljava/lang/String;

    .line 336
    iget-object v2, p0, Ll$a;->o:Ll;

    iget-object v2, v2, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Li;

    const-string/jumbo v3, "onLoaderReset"

    iput-object v3, v2, Li;->u:Ljava/lang/String;

    .line 339
    :cond_2
    :try_start_0
    iget-object v2, p0, Ll$a;->c:Lk$a;

    iget-object v3, p0, Ll$a;->d:Ls;

    invoke-interface {v2, v3}, Lk$a;->a(Ls;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v2, p0, Ll$a;->o:Ll;

    iget-object v2, v2, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_3

    .line 342
    iget-object v2, p0, Ll$a;->o:Ll;

    iget-object v2, v2, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Li;

    iput-object v0, v2, Li;->u:Ljava/lang/String;

    .line 346
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    iput-object v6, p0, Ll$a;->c:Lk$a;

    .line 347
    iput-object v6, p0, Ll$a;->g:Ljava/lang/Object;

    .line 348
    iput-boolean v5, p0, Ll$a;->e:Z

    .line 349
    iget-object v2, p0, Ll$a;->d:Ls;

    if-eqz v2, :cond_5

    .line 350
    iget-boolean v2, p0, Ll$a;->m:Z

    if-eqz v2, :cond_4

    .line 351
    iput-boolean v5, p0, Ll$a;->m:Z

    .line 352
    iget-object v2, p0, Ll$a;->d:Ls;

    invoke-virtual {v2, p0}, Ls;->a(Ls$a;)V

    .line 354
    :cond_4
    iget-object v2, p0, Ll$a;->d:Ls;

    invoke-virtual {v2}, Ls;->e()V

    .line 356
    :cond_5
    iget-object v2, p0, Ll$a;->n:Ll$a;

    if-eqz v2, :cond_6

    .line 357
    iget-object v2, p0, Ll$a;->n:Ll$a;

    invoke-virtual {v2}, Ll$a;->f()V

    .line 359
    :cond_6
    return-void

    .line 341
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Ll$a;->o:Ll;

    iget-object v3, v3, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_7

    .line 342
    iget-object v3, p0, Ll$a;->o:Ll;

    iget-object v3, v3, Ll;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Li;

    iput-object v0, v3, Li;->u:Ljava/lang/String;

    :cond_7
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 440
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget v1, p0, Ll$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v1, p0, Ll$a;->d:Ls;

    invoke-static {v1, v0}, Lal;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 446
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
