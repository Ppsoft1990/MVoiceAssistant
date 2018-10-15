.class public final Le;
.super Lj;
.source "BackStackRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le$a;
    }
.end annotation


# instance fields
.field final a:Li;

.field public b:Le$a;

.field c:Le$a;

.field public d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field public i:I

.field public j:I

.field public k:Z

.field l:Z

.field public m:Ljava/lang/String;

.field n:Z

.field public o:I

.field public p:I

.field public q:Ljava/lang/CharSequence;

.field public r:I

.field public s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Li;)V
    .locals 1
    .param p1, "manager"    # Li;

    .prologue
    .line 333
    invoke-direct {p0}, Lj;-><init>()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Le;->l:Z

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Le;->o:I

    .line 334
    iput-object p1, p0, Le;->a:Li;

    .line 335
    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .prologue
    .line 394
    iget-object v1, p0, Le;->a:Li;

    iput-object v1, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Li;

    .line 396
    if-eqz p3, :cond_1

    .line 397
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t change tag of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 405
    :cond_1
    if-eqz p1, :cond_3

    .line 406
    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_2

    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v1, p1, :cond_2

    .line 407
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t change container ID of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 414
    :cond_3
    new-instance v0, Le$a;

    invoke-direct {v0}, Le$a;-><init>()V

    .line 415
    .local v0, "op":Le$a;
    iput p4, v0, Le$a;->c:I

    .line 416
    iput-object p2, v0, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 417
    invoke-virtual {p0, v0}, Le;->a(Le$a;)V

    .line 418
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .locals 6
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v5, 0x0

    .line 582
    iget-boolean v2, p0, Le;->n:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    :cond_0
    sget-boolean v2, Li;->a:Z

    if-eqz v2, :cond_1

    .line 584
    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Commit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Lam;

    const-string/jumbo v2, "FragmentManager"

    invoke-direct {v0, v2}, Lam;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, "logw":Lam;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 587
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "  "

    invoke-virtual {p0, v2, v5, v1, v5}, Le;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 589
    .end local v0    # "logw":Lam;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Le;->n:Z

    .line 590
    iget-boolean v2, p0, Le;->k:Z

    if-eqz v2, :cond_2

    .line 591
    iget-object v2, p0, Le;->a:Li;

    invoke-virtual {v2, p0}, Li;->a(Le;)I

    move-result v2

    iput v2, p0, Le;->o:I

    .line 595
    :goto_0
    iget-object v2, p0, Le;->a:Li;

    invoke-virtual {v2, p0, p1}, Li;->a(Ljava/lang/Runnable;Z)V

    .line 596
    iget v2, p0, Le;->o:I

    return v2

    .line 593
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Le;->o:I

    goto :goto_0
.end method

.method public a(ILandroid/support/v4/app/Fragment;)Lj;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 384
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Le;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 385
    return-object p0
.end method

.method public a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lj;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Le;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 390
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Lj;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 434
    new-instance v0, Le$a;

    invoke-direct {v0}, Le$a;-><init>()V

    .line 435
    .local v0, "op":Le$a;
    const/4 v1, 0x3

    iput v1, v0, Le$a;->c:I

    .line 436
    iput-object p1, v0, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 437
    invoke-virtual {p0, v0}, Le;->a(Le$a;)V

    .line 439
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Lj;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 379
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Le;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 380
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lj;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-boolean v0, p0, Le;->l:Z

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Le;->k:Z

    .line 507
    iput-object p1, p0, Le;->m:Ljava/lang/String;

    .line 508
    return-object p0
.end method

.method public a(I)V
    .locals 6
    .param p1, "amt"    # I

    .prologue
    .line 549
    iget-boolean v3, p0, Le;->k:Z

    if-nez v3, :cond_1

    .line 571
    :cond_0
    return-void

    .line 552
    :cond_1
    sget-boolean v3, Li;->a:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2
    iget-object v1, p0, Le;->b:Le$a;

    .line 555
    .local v1, "op":Le$a;
    :goto_0
    if-eqz v1, :cond_0

    .line 556
    iget-object v3, v1, Le$a;->d:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_3

    .line 557
    iget-object v3, v1, Le$a;->d:Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 558
    sget-boolean v3, Li;->a:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Le$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Le$a;->d:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_3
    iget-object v3, v1, Le$a;->i:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 562
    iget-object v3, v1, Le$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 563
    iget-object v3, v1, Le$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 564
    .local v2, "r":Landroid/support/v4/app/Fragment;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 565
    sget-boolean v3, Li;->a:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 569
    .end local v0    # "i":I
    .end local v2    # "r":Landroid/support/v4/app/Fragment;
    :cond_5
    iget-object v1, v1, Le$a;->a:Le$a;

    goto/16 :goto_0
.end method

.method public a(Le$a;)V
    .locals 1
    .param p1, "op"    # Le$a;

    .prologue
    .line 364
    iget-object v0, p0, Le;->b:Le$a;

    if-nez v0, :cond_0

    .line 365
    iput-object p1, p0, Le;->c:Le$a;

    iput-object p1, p0, Le;->b:Le$a;

    .line 371
    :goto_0
    iget v0, p0, Le;->e:I

    iput v0, p1, Le$a;->e:I

    .line 372
    iget v0, p0, Le;->f:I

    iput v0, p1, Le$a;->f:I

    .line 373
    iget v0, p0, Le;->g:I

    iput v0, p1, Le$a;->g:I

    .line 374
    iget v0, p0, Le;->h:I

    iput v0, p1, Le$a;->h:I

    .line 375
    iget v0, p0, Le;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le;->d:I

    .line 376
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Le;->c:Le$a;

    iput-object v0, p1, Le$a;->b:Le$a;

    .line 368
    iget-object v0, p0, Le;->c:Le$a;

    iput-object p1, v0, Le$a;->a:Le$a;

    .line 369
    iput-object p1, p0, Le;->c:Le$a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Le;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 238
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .prologue
    .line 241
    if-eqz p3, :cond_8

    .line 242
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Le;->m:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Le;->o:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    const-string/jumbo v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Le;->n:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 245
    iget v5, p0, Le;->i:I

    if-eqz v5, :cond_0

    .line 246
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget v5, p0, Le;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget v5, p0, Le;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    :cond_0
    iget v5, p0, Le;->e:I

    if-nez v5, :cond_1

    iget v5, p0, Le;->f:I

    if-eqz v5, :cond_2

    .line 252
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget v5, p0, Le;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget v5, p0, Le;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :cond_2
    iget v5, p0, Le;->g:I

    if-nez v5, :cond_3

    iget v5, p0, Le;->h:I

    if-eqz v5, :cond_4

    .line 258
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    iget v5, p0, Le;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget v5, p0, Le;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    :cond_4
    iget v5, p0, Le;->p:I

    if-nez v5, :cond_5

    iget-object v5, p0, Le;->q:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    .line 264
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget v5, p0, Le;->p:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    const-string/jumbo v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v5, p0, Le;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 269
    :cond_6
    iget v5, p0, Le;->r:I

    if-nez v5, :cond_7

    iget-object v5, p0, Le;->s:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 270
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget v5, p0, Le;->r:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-object v5, p0, Le;->s:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 277
    :cond_8
    iget-object v5, p0, Le;->b:Le$a;

    if-eqz v5, :cond_10

    .line 278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "Operations:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Le;->b:Le$a;

    .line 281
    .local v4, "op":Le$a;
    const/4 v3, 0x0

    .line 282
    .local v3, "num":I
    :goto_0
    if-eqz v4, :cond_10

    .line 284
    iget v5, v4, Le$a;->c:I

    packed-switch v5, :pswitch_data_0

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Le$a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 296
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    if-eqz p3, :cond_c

    .line 299
    iget v5, v4, Le$a;->e:I

    if-nez v5, :cond_9

    iget v5, v4, Le$a;->f:I

    if-eqz v5, :cond_a

    .line 300
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget v5, v4, Le$a;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget v5, v4, Le$a;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    :cond_a
    iget v5, v4, Le$a;->g:I

    if-nez v5, :cond_b

    iget v5, v4, Le$a;->h:I

    if-eqz v5, :cond_c

    .line 306
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    iget v5, v4, Le$a;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget v5, v4, Le$a;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :cond_c
    iget-object v5, v4, Le$a;->i:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    iget-object v5, v4, Le$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 313
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, v4, Le$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 314
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-object v5, v4, Le$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 316
    const-string/jumbo v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    :goto_3
    iget-object v5, v4, Le$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 285
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_0
    const-string/jumbo v0, "NULL"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 286
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "ADD"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 287
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 288
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 289
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "HIDE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 290
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SHOW"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 291
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "DETACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 292
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 318
    .restart local v1    # "i":I
    :cond_d
    if-nez v1, :cond_e

    .line 319
    const-string/jumbo v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 322
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 327
    .end local v1    # "i":I
    :cond_f
    iget-object v4, v4, Le$a;->a:Le$a;

    .line 328
    add-int/lit8 v3, v3, 0x1

    .line 329
    goto/16 :goto_0

    .line 331
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v4    # "op":Le$a;
    :cond_10
    return-void

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)Lj;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 461
    new-instance v0, Le$a;

    invoke-direct {v0}, Le$a;-><init>()V

    .line 462
    .local v0, "op":Le$a;
    const/4 v1, 0x6

    iput v1, v0, Le$a;->c:I

    .line 463
    iput-object p1, v0, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 464
    invoke-virtual {p0, v0}, Le;->a(Le$a;)V

    .line 466
    return-object p0
.end method

.method public b(Z)V
    .locals 12
    .param p1, "doStateMove"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 691
    sget-boolean v6, Li;->a:Z

    if-eqz v6, :cond_0

    .line 692
    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "popFromBackStack: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v2, Lam;

    const-string/jumbo v6, "FragmentManager"

    invoke-direct {v2, v6}, Lam;-><init>(Ljava/lang/String;)V

    .line 694
    .local v2, "logw":Lam;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 695
    .local v5, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v6, "  "

    invoke-virtual {p0, v6, v10, v5, v10}, Le;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 698
    .end local v2    # "logw":Lam;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_0
    invoke-virtual {p0, v11}, Le;->a(I)V

    .line 700
    iget-object v4, p0, Le;->c:Le$a;

    .line 701
    .local v4, "op":Le$a;
    :goto_0
    if-eqz v4, :cond_3

    .line 702
    iget v6, v4, Le$a;->c:I

    packed-switch v6, :pswitch_data_0

    .line 756
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Le$a;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 704
    :pswitch_0
    iget-object v0, v4, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 705
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget v6, v4, Le$a;->h:I

    iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 706
    iget-object v6, p0, Le;->a:Li;

    iget v7, p0, Le;->i:I

    invoke-static {v7}, Li;->c(I)I

    move-result v7

    iget v8, p0, Le;->j:I

    invoke-virtual {v6, v0, v7, v8}, Li;->a(Landroid/support/v4/app/Fragment;II)V

    .line 760
    :cond_1
    :goto_1
    iget-object v4, v4, Le$a;->b:Le$a;

    goto :goto_0

    .line 711
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v0, v4, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 712
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 713
    iget v6, v4, Le$a;->h:I

    iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 714
    iget-object v6, p0, Le;->a:Li;

    iget v7, p0, Le;->i:I

    invoke-static {v7}, Li;->c(I)I

    move-result v7

    iget v8, p0, Le;->j:I

    invoke-virtual {v6, v0, v7, v8}, Li;->a(Landroid/support/v4/app/Fragment;II)V

    .line 718
    :cond_2
    iget-object v6, v4, Le$a;->i:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 719
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, v4, Le$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 720
    iget-object v6, v4, Le$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 721
    .local v3, "old":Landroid/support/v4/app/Fragment;
    iget v6, v4, Le$a;->g:I

    iput v6, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 722
    iget-object v6, p0, Le;->a:Li;

    invoke-virtual {v6, v3, v9}, Li;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 727
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    .end local v3    # "old":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v0, v4, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 728
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v6, v4, Le$a;->g:I

    iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 729
    iget-object v6, p0, Le;->a:Li;

    invoke-virtual {v6, v0, v9}, Li;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 732
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v0, v4, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 733
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v6, v4, Le$a;->g:I

    iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 734
    iget-object v6, p0, Le;->a:Li;

    iget v7, p0, Le;->i:I

    invoke-static {v7}, Li;->c(I)I

    move-result v7

    iget v8, p0, Le;->j:I

    invoke-virtual {v6, v0, v7, v8}, Li;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 738
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v0, v4, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 739
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v6, v4, Le$a;->h:I

    iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 740
    iget-object v6, p0, Le;->a:Li;

    iget v7, p0, Le;->i:I

    invoke-static {v7}, Li;->c(I)I

    move-result v7

    iget v8, p0, Le;->j:I

    invoke-virtual {v6, v0, v7, v8}, Li;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 744
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v0, v4, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 745
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v6, v4, Le$a;->g:I

    iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 746
    iget-object v6, p0, Le;->a:Li;

    iget v7, p0, Le;->i:I

    invoke-static {v7}, Li;->c(I)I

    move-result v7

    iget v8, p0, Le;->j:I

    invoke-virtual {v6, v0, v7, v8}, Li;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 750
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v0, v4, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 751
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v6, v4, Le$a;->g:I

    iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 752
    iget-object v6, p0, Le;->a:Li;

    iget v7, p0, Le;->i:I

    invoke-static {v7}, Li;->c(I)I

    move-result v7

    iget v8, p0, Le;->j:I

    invoke-virtual {v6, v0, v7, v8}, Li;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 763
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    if-eqz p1, :cond_4

    .line 764
    iget-object v6, p0, Le;->a:Li;

    iget-object v7, p0, Le;->a:Li;

    iget v7, v7, Li;->n:I

    iget v8, p0, Le;->i:I

    invoke-static {v8}, Li;->c(I)I

    move-result v8

    iget v9, p0, Le;->j:I

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Li;->a(IIIZ)V

    .line 768
    :cond_4
    iget v6, p0, Le;->o:I

    if-ltz v6, :cond_5

    .line 769
    iget-object v6, p0, Le;->a:Li;

    iget v7, p0, Le;->o:I

    invoke-virtual {v6, v7}, Li;->b(I)V

    .line 770
    iput v11, p0, Le;->o:I

    .line 772
    :cond_5
    return-void

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public c(Landroid/support/v4/app/Fragment;)Lj;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 470
    new-instance v0, Le$a;

    invoke-direct {v0}, Le$a;-><init>()V

    .line 471
    .local v0, "op":Le$a;
    const/4 v1, 0x7

    iput v1, v0, Le$a;->c:I

    .line 472
    iput-object p1, v0, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 473
    invoke-virtual {p0, v0}, Le;->a(Le$a;)V

    .line 475
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Le;->m:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 600
    sget-boolean v4, Li;->a:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Run: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    iget-boolean v4, p0, Le;->k:Z

    if-eqz v4, :cond_1

    .line 603
    iget v4, p0, Le;->o:I

    if-gez v4, :cond_1

    .line 604
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "addToBackStack() called after commit()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 608
    :cond_1
    invoke-virtual {p0, v8}, Le;->a(I)V

    .line 610
    iget-object v3, p0, Le;->b:Le$a;

    .line 611
    .local v3, "op":Le$a;
    :goto_0
    if-eqz v3, :cond_a

    .line 612
    iget v4, v3, Le$a;->c:I

    packed-switch v4, :pswitch_data_0

    .line 675
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Le$a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 614
    :pswitch_0
    iget-object v0, v3, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 615
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Le$a;->e:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 616
    iget-object v4, p0, Le;->a:Li;

    invoke-virtual {v4, v0, v7}, Li;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 679
    :cond_2
    :goto_1
    iget-object v3, v3, Le$a;->a:Le$a;

    goto :goto_0

    .line 619
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v0, v3, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 620
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Le;->a:Li;

    iget-object v4, v4, Li;->g:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 621
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Le;->a:Li;

    iget-object v4, v4, Li;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 622
    iget-object v4, p0, Le;->a:Li;

    iget-object v4, v4, Li;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 623
    .local v2, "old":Landroid/support/v4/app/Fragment;
    sget-boolean v4, Li;->a:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OP_REPLACE: adding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_3
    if-eqz v0, :cond_4

    iget v4, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_5

    .line 626
    :cond_4
    if-ne v2, v0, :cond_6

    .line 627
    const/4 v0, 0x0

    iput-object v0, v3, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 621
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 629
    :cond_6
    iget-object v4, v3, Le$a;->i:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 630
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Le$a;->i:Ljava/util/ArrayList;

    .line 632
    :cond_7
    iget-object v4, v3, Le$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget v4, v3, Le$a;->f:I

    iput v4, v2, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 634
    iget-boolean v4, p0, Le;->k:Z

    if-eqz v4, :cond_8

    .line 635
    iget v4, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 636
    sget-boolean v4, Li;->a:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bump nesting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_8
    iget-object v4, p0, Le;->a:Li;

    iget v5, p0, Le;->i:I

    iget v6, p0, Le;->j:I

    invoke-virtual {v4, v2, v5, v6}, Li;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_3

    .line 644
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/support/v4/app/Fragment;
    :cond_9
    if-eqz v0, :cond_2

    .line 645
    iget v4, v3, Le$a;->e:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 646
    iget-object v4, p0, Le;->a:Li;

    invoke-virtual {v4, v0, v7}, Li;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_1

    .line 650
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v0, v3, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 651
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Le$a;->f:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 652
    iget-object v4, p0, Le;->a:Li;

    iget v5, p0, Le;->i:I

    iget v6, p0, Le;->j:I

    invoke-virtual {v4, v0, v5, v6}, Li;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 655
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v0, v3, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 656
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Le$a;->f:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 657
    iget-object v4, p0, Le;->a:Li;

    iget v5, p0, Le;->i:I

    iget v6, p0, Le;->j:I

    invoke-virtual {v4, v0, v5, v6}, Li;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 660
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v0, v3, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 661
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Le$a;->e:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 662
    iget-object v4, p0, Le;->a:Li;

    iget v5, p0, Le;->i:I

    iget v6, p0, Le;->j:I

    invoke-virtual {v4, v0, v5, v6}, Li;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 665
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v0, v3, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 666
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Le$a;->f:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 667
    iget-object v4, p0, Le;->a:Li;

    iget v5, p0, Le;->i:I

    iget v6, p0, Le;->j:I

    invoke-virtual {v4, v0, v5, v6}, Li;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 670
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v0, v3, Le$a;->d:Landroid/support/v4/app/Fragment;

    .line 671
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Le$a;->e:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 672
    iget-object v4, p0, Le;->a:Li;

    iget v5, p0, Le;->i:I

    iget v6, p0, Le;->j:I

    invoke-virtual {v4, v0, v5, v6}, Li;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 682
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_a
    iget-object v4, p0, Le;->a:Li;

    iget-object v5, p0, Le;->a:Li;

    iget v5, v5, Li;->n:I

    iget v6, p0, Le;->i:I

    iget v7, p0, Le;->j:I

    invoke-virtual {v4, v5, v6, v7, v8}, Li;->a(IIIZ)V

    .line 685
    iget-boolean v4, p0, Le;->k:Z

    if-eqz v4, :cond_b

    .line 686
    iget-object v4, p0, Le;->a:Li;

    invoke-virtual {v4, p0}, Li;->b(Le;)V

    .line 688
    :cond_b
    return-void

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget v1, p0, Le;->o:I

    if-ltz v1, :cond_0

    .line 225
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Le;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    iget-object v1, p0, Le;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 229
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Le;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
