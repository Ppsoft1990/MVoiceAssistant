.class public final Lcom/iflytek/yd/ui/FragmentMediator;
.super Ljava/lang/Object;


# instance fields
.field private mFragments:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/iflytek/yd/ui/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lh;

    move-result-object v0

    invoke-virtual {v0}, Lh;->a()Lj;

    move-result-object v0

    const v1, 0x6f0b0189

    invoke-virtual {v0, v1, p2}, Lj;->a(ILandroid/support/v4/app/Fragment;)Lj;

    invoke-virtual {v0}, Lj;->b()I

    invoke-virtual {p0, p2}, Lcom/iflytek/yd/ui/FragmentMediator;->push(Lcom/iflytek/yd/ui/BaseFragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/BaseFragment;->finish()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/BaseFragment;->onResume()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lh;

    move-result-object v0

    invoke-virtual {v0}, Lh;->a()Lj;

    move-result-object v0

    const v1, 0x6f0b0189

    invoke-virtual {v0, v1, p2}, Lj;->a(ILandroid/support/v4/app/Fragment;)Lj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj;->a(Ljava/lang/String;)Lj;

    invoke-virtual {v0}, Lj;->b()I

    invoke-virtual {p0, p2}, Lcom/iflytek/yd/ui/FragmentMediator;->push(Lcom/iflytek/yd/ui/BaseFragment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isTop(Lcom/iflytek/yd/ui/BaseFragment;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized peek()Lcom/iflytek/yd/ui/BaseFragment;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/ui/BaseFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pop()Lcom/iflytek/yd/ui/BaseFragment;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/ui/BaseFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized push(Lcom/iflytek/yd/ui/BaseFragment;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/ui/FragmentMediator;->mFragments:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/iflytek/yd/ui/BaseFragment;->setMediator(Lcom/iflytek/yd/ui/FragmentMediator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
