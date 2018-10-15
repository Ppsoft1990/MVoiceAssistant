.class final Lcom/iflytek/common/cmccauth/AuthenticationService$a;
.super Landroid/os/Handler;
.source "AuthenticationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/cmccauth/AuthenticationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/common/cmccauth/AuthenticationService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/iflytek/common/cmccauth/AuthenticationService;

.field private c:I

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/common/cmccauth/AuthenticationService;Landroid/os/Looper;Lcom/iflytek/common/cmccauth/AuthenticationService;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "service"    # Lcom/iflytek/common/cmccauth/AuthenticationService;

    .prologue
    const/4 v0, 0x0

    .line 661
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    .line 662
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 663
    iput v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->c:I

    .line 664
    iput-boolean v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->d:Z

    .line 665
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->a:Ljava/lang/ref/WeakReference;

    .line 666
    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1
    .param p1, "add"    # Z

    .prologue
    .line 707
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 708
    :try_start_0
    iget v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    :goto_0
    monitor-exit p0

    return-void

    .line 710
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 715
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    monitor-exit p0

    return-void

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILcom/iflytek/common/adaptation/entity/SimCard;)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 682
    iget-boolean v2, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->d:Z

    if-eqz v2, :cond_1

    .line 683
    const/4 v1, 0x0

    .line 694
    :cond_0
    :goto_0
    return v1

    .line 686
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 687
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 688
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 689
    invoke-super {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 690
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 691
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->c()V

    .line 674
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 675
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 678
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->d:Z

    .line 679
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 699
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->e()V

    .line 700
    return-void
.end method

.method public declared-synchronized d()I
    .locals 1

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 722
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->a(Z)V

    .line 725
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/cmccauth/AuthenticationService;

    .line 726
    .local v0, "authenticationService":Lcom/iflytek/common/cmccauth/AuthenticationService;
    if-nez v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 730
    :cond_0
    invoke-static {v0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->d(Lcom/iflytek/common/cmccauth/AuthenticationService;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 736
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/cmccauth/AuthenticationService;

    .line 737
    .local v0, "authService":Lcom/iflytek/common/cmccauth/AuthenticationService;
    if-nez v0, :cond_0

    .line 784
    :goto_0
    return-void

    .line 741
    :cond_0
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 742
    .local v3, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eqz v4, :cond_1

    .line 743
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    check-cast v3, Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 745
    .restart local v3    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 747
    :pswitch_0
    const-string/jumbo v4, "AuthenticationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MSG_START_AUTH simcard = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v4, v3}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 751
    :pswitch_1
    const-string/jumbo v4, "AuthenticationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MSG_START_UI_AUTH simcard = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v4, v3}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 755
    :pswitch_2
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v3, v5}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/adaptation/entity/SimCard;I)V

    goto :goto_0

    .line 758
    :pswitch_3
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, "MSG_FILTER_RESULT"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v2, 0x0

    .line 760
    .local v2, "info":Lyj;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lyj;

    if-eqz v4, :cond_2

    .line 761
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "info":Lyj;
    check-cast v2, Lyj;

    .line 763
    .restart local v2    # "info":Lyj;
    :cond_2
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v2, v5, v6}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lyj;II)V

    goto/16 :goto_0

    .line 766
    .end local v2    # "info":Lyj;
    :pswitch_4
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, "MSG_GETTOKEN_ID"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v4, v3}, Lcom/iflytek/common/cmccauth/AuthenticationService;->b(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto/16 :goto_0

    .line 770
    :pswitch_5
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, "MSG_FILTER_GETTOKEN_RESULT"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v1, 0x0

    .line 772
    .local v1, "getInfo":Lyj;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lyj;

    if-eqz v4, :cond_3

    .line 773
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "getInfo":Lyj;
    check-cast v1, Lyj;

    .line 775
    .restart local v1    # "getInfo":Lyj;
    :cond_3
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v1, v5}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lyj;I)V

    goto/16 :goto_0

    .line 778
    .end local v1    # "getInfo":Lyj;
    :pswitch_6
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, "MSG_DELAY_SHOW_TIP_WIN"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    iget-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v5}, Lcom/iflytek/common/cmccauth/AuthenticationService;->c(Lcom/iflytek/common/cmccauth/AuthenticationService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
