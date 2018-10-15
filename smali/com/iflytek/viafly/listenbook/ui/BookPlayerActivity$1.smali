.class Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;
.super Lame;
.source "BookPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-direct {p0}, Lame;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 543
    const-string/jumbo v1, "BookPlayerActivity"

    const-string/jumbo v2, "onAddBookMarkSuc "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 545
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 546
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 547
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 548
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    return-void
.end method

.method public a(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 573
    const-string/jumbo v0, "BookPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBizResultError  errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/16 v0, 0x3f1

    if-ne v0, p1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    invoke-virtual {v0}, Lanh$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const-string/jumbo v0, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    invoke-virtual {v0, v4}, Lanh$a;->a(Ljava/util/List;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const/16 v0, 0x3f0

    if-ne v0, p1, :cond_2

    .line 580
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 581
    const-string/jumbo v0, "\u7ae0\u8282\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_2
    const/16 v0, 0x3fb

    if-ne v0, p1, :cond_3

    .line 584
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 585
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_3
    const/16 v0, 0x3f3

    if-ne v0, p1, :cond_4

    .line 587
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 588
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 589
    const-string/jumbo v0, "\u83b7\u53d6\u5206\u4eab\u94fe\u63a5\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :cond_4
    const/16 v0, 0x3f8

    if-ne v0, p1, :cond_5

    .line 592
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 593
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 594
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_5
    const/16 v0, 0x3f7

    if-ne v0, p1, :cond_6

    .line 597
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 598
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    sget-object v2, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v3, "listenBook"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_6
    const/16 v0, 0x3ee

    if-ne v0, p1, :cond_7

    .line 602
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 603
    const-string/jumbo v0, "\u53d6\u6d88\u52a0\u5165\u4e66\u67b6\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    :cond_7
    const/16 v0, 0x3ed

    if-ne v0, p1, :cond_8

    .line 605
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 607
    const-string/jumbo v0, "\u52a0\u5165\u4e66\u67b6\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 609
    :cond_8
    const/16 v0, 0x3fa

    if-ne v0, p1, :cond_9

    .line 610
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 611
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    :cond_9
    const/16 v0, 0x3f9

    if-ne v0, p1, :cond_a

    .line 613
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 615
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 617
    :cond_a
    const/16 v0, 0x3f5

    if-ne v0, p1, :cond_0

    .line 618
    const-string/jumbo v0, "\u8ba2\u8d2d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lamm;)V
    .locals 3
    .param p1, "bookInfo"    # Lamm;

    .prologue
    .line 525
    const-string/jumbo v1, "BookPlayerActivity"

    const-string/jumbo v2, "onUpdateBookInfo "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 539
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Lamm;)Lamm;

    .line 533
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 534
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 535
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 538
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 5
    .param p1, "chapterAudio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 647
    const-string/jumbo v2, "BookPlayerActivity"

    const-string/jumbo v3, "onUpdateChapterInfo  "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->f(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    const-string/jumbo v2, "BookPlayerActivity"

    const-string/jumbo v3, "is try listen"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v2

    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v3

    invoke-virtual {v3}, Lamk;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamk;->g(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    move-result-object v0

    .line 652
    .local v0, "historyListenBookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    const-string/jumbo v2, "BookPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " offset is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->g(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    .end local v0    # "historyListenBookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_2

    .line 671
    :cond_1
    :goto_0
    return-void

    .line 660
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 661
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 662
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 664
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 665
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 666
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 667
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 668
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 670
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V
    .locals 4
    .param p1, "chargeInfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .prologue
    .line 750
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->i(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamm;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    .line 760
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 756
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    .line 757
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 758
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 794
    const-string/jumbo v0, "0200"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    const-string/jumbo v0, "\u8ba2\u8d2d\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    .line 801
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 802
    return-void

    .line 796
    :cond_0
    const-string/jumbo v0, "0201"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    const-string/jumbo v0, "\u60a8\u5df2\u8ba2\u8d2d\u8fc7\u6b64\u7ae0\u8282\uff0c\u6b63\u5728\u5237\u65b0\u7ae0\u8282\u4fe1\u606f"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_1
    const-string/jumbo v0, "\u8ba2\u8d2d\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "wxFriendUrl"    # Ljava/lang/String;
    .param p2, "wxTimeLineUrl"    # Ljava/lang/String;
    .param p3, "weiboUrl"    # Ljava/lang/String;

    .prologue
    .line 624
    const-string/jumbo v0, "BookPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShareLinkResult  wxFriendUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string/jumbo v0, "BookPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShareLinkResult  wxCircleUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string/jumbo v0, "BookPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShareLinkResult  weiboUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 630
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 633
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 634
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, p2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, p3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "loading"    # Z

    .prologue
    .line 806
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 807
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 553
    const-string/jumbo v1, "BookPlayerActivity"

    const-string/jumbo v2, "onSubBookMarkSuc "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 555
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 556
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 557
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 558
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 811
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 812
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 813
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 814
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 815
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 817
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 563
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "onChapterListGetSuc"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    invoke-virtual {v0}, Lanh$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const-string/jumbo v0, "\u52a0\u8f7d\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v1

    invoke-virtual {v1}, Lamk;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanh$a;->a(Ljava/util/List;)V

    .line 569
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/16 v7, 0x19

    const/16 v6, 0xc

    .line 687
    const-string/jumbo v2, "BookPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPlayStateUpdated state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 690
    const-string/jumbo v2, "BookPlayerActivity"

    const-string/jumbo v3, "onPlayStateUpdated mHandler is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_0
    return-void

    .line 694
    :cond_0
    const/4 v2, 0x4

    if-ne v2, p1, :cond_4

    .line 695
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 696
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->h(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 697
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 698
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 699
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 700
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v2, v2, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v2, v2, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    invoke-virtual {v2}, Lanh$a;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v2

    invoke-virtual {v2}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 701
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v2, v2, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v3

    invoke-virtual {v3}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v4

    invoke-virtual {v4}, Lamk;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lanh$a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 703
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v2

    invoke-virtual {v2}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 704
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v2

    invoke-virtual {v2}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/player/entity/Audio;->q()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "chapterName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 706
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 707
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    .line 708
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 709
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 712
    .end local v0    # "chapterName":Ljava/lang/String;
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->i(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamm;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 713
    const-string/jumbo v2, "BookPlayerActivity"

    const-string/jumbo v3, "save history item now"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 716
    :cond_3
    const-string/jumbo v2, "BookPlayerActivity"

    const-string/jumbo v3, "save history item later"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 719
    :cond_4
    const/4 v2, 0x3

    if-ne v2, p1, :cond_5

    .line 721
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 723
    :cond_5
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public d(I)V
    .locals 4
    .param p1, "percent"    # I

    .prologue
    .line 729
    const-string/jumbo v1, "BookPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBufferingUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 731
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 732
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 733
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    return-void
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 764
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 765
    const-string/jumbo v1, "BookPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "complete progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XSeekBar;->getMax()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->k(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 767
    .local v0, "preScale":I
    const-string/jumbo v1, "BookPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preScale"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XSeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XSeekBar;->getMax()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_0

    .line 769
    const/4 v1, 0x1

    .line 772
    .end local v0    # "preScale":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 5

    .prologue
    .line 778
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v3

    invoke-virtual {v3}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 779
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "chapterId":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v3

    invoke-virtual {v3}, Lamp;->D()I

    move-result v2

    .line 783
    .local v2, "offset":I
    if-ltz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 784
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->g(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    .end local v1    # "chapterId":Ljava/lang/String;
    .end local v2    # "offset":I
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 789
    const-string/jumbo v3, "\u7f13\u5b58\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public e(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 738
    const-string/jumbo v0, "BookPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayError errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const v0, 0xc3578

    if-eq p1, v0, :cond_0

    const v0, 0xc3579

    if-ne p1, v0, :cond_1

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 742
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 743
    const-string/jumbo v0, "\u64ad\u653e\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->b(Ljava/lang/String;)V

    .line 745
    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 675
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "onPlayComplete  "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->h(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 678
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 682
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 683
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 821
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "onSeekComplete "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V

    .line 823
    return-void
.end method
