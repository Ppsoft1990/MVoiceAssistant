.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;
.super Landroid/os/Handler;
.source "TranslateMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v11, 0xc3501

    const/16 v10, 0x2782

    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 455
    if-nez p1, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 461
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 462
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/iflytek/viafly/translate/entity/TranslateResult;

    if-eqz v5, :cond_0

    .line 463
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/iflytek/viafly/translate/entity/TranslateResult;

    .line 464
    .local v3, "result":Lcom/iflytek/viafly/translate/entity/TranslateResult;
    if-eqz v3, :cond_0

    .line 465
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Lcom/iflytek/viafly/translate/entity/TranslateResult;)V

    goto :goto_0

    .line 471
    .end local v3    # "result":Lcom/iflytek/viafly/translate/entity/TranslateResult;
    :pswitch_1
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v5

    iput-boolean v9, v5, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a:Z

    .line 472
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 473
    .local v1, "errId":I
    const-string/jumbo v5, "TranslateMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_TRANSLATE_RESULT_FAIL errId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const v5, 0xc3508

    if-eq v1, v5, :cond_2

    const v5, 0xc38f1

    if-eq v1, v5, :cond_2

    const v5, 0xc3504

    if-eq v1, v5, :cond_2

    if-ne v1, v10, :cond_5

    .line 480
    :cond_2
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v6

    invoke-virtual {v6}, Laxr;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 491
    :cond_3
    :goto_1
    if-ne v1, v11, :cond_7

    .line 492
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v6, "android.permission.RECORD_AUDIO"

    invoke-static {v5, v6}, Lpd;->b(Landroid/content/Context;Ljava/lang/String;)Lpe;

    .line 494
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5, v8}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Z)V

    .line 501
    :goto_2
    const v5, 0xc3508

    if-eq v1, v5, :cond_4

    const v5, 0xc38f1

    if-eq v1, v5, :cond_4

    const v5, 0xc3504

    if-eq v1, v5, :cond_4

    if-ne v1, v10, :cond_8

    .line 503
    :cond_4
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v5

    const-string/jumbo v6, "netFail"

    invoke-virtual {v5, v6}, Lxq;->n(Ljava/lang/String;)V

    .line 508
    :goto_3
    const-string/jumbo v5, "edit"

    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 509
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a()V

    goto/16 :goto_0

    .line 481
    :cond_5
    const/16 v5, 0x2786

    if-ne v1, v5, :cond_6

    .line 483
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v6

    invoke-virtual {v6}, Laxr;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 484
    :cond_6
    if-eq v11, v1, :cond_3

    const v5, 0xc3516

    if-eq v5, v1, :cond_3

    .line 488
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v6

    invoke-virtual {v6}, Laxr;->n()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 496
    :cond_7
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    goto :goto_2

    .line 505
    :cond_8
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v5

    const-string/jumbo v6, "translateFail"

    invoke-virtual {v5, v6}, Lxq;->n(Ljava/lang/String;)V

    goto :goto_3

    .line 511
    :cond_9
    const-string/jumbo v5, "texttranslate"

    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 512
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b()V

    .line 513
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->h()V

    goto/16 :goto_0

    .line 518
    .end local v1    # "errId":I
    :pswitch_2
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layw;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 519
    const-string/jumbo v5, "TranslateMainActivity"

    const-string/jumbo v6, "onPlayCompletedCallBack refresh speaking anim"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-boolean v5, Laxp;->b:Z

    if-eqz v5, :cond_a

    .line 521
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultAdapter()Layu;

    move-result-object v5

    invoke-virtual {v5, v7}, Layu;->a(I)V

    goto/16 :goto_0

    .line 524
    :cond_a
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layw;

    move-result-object v5

    invoke-virtual {v5, v7}, Layw;->a(I)V

    .line 525
    sget-object v5, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->getMicState()Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 526
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c()Z

    move-result v5

    if-nez v5, :cond_b

    .line 527
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 528
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Z)V

    goto/16 :goto_0

    .line 530
    :cond_b
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    goto/16 :goto_0

    .line 536
    :pswitch_3
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v6, "\u63d0\u4ea4\u6210\u529f\uff0c\u8c22\u8c22\u60a8\u7684\u53cd\u9988"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 537
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v6, "result"

    invoke-static {v5, v6}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    :pswitch_4
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v6, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 543
    :pswitch_5
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxy;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 544
    const-string/jumbo v5, "TranslateMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_REQUEST_ENTRYIMAGE: text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxy;

    move-result-object v7

    invoke-virtual {v7}, Laxy;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->k(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxy;

    move-result-object v6

    invoke-virtual {v6}, Laxy;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 548
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 549
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, "TranslateMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_REQUEST_ENTRYIMAGE: url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->l(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layf;

    move-result-object v6

    invoke-virtual {v6}, Layf;->b()Lbcu;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->m(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lbdd;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lazl;->a(Ljava/lang/String;Lbcu;Lbdd;)V

    goto/16 :goto_0

    .line 555
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 556
    const-string/jumbo v5, "TranslateMainActivity"

    const-string/jumbo v6, "MSG_REFRESH_TRANSLATEENTRY"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 558
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->n(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 563
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 564
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 565
    .local v2, "language":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->setIdentifyLanguageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 570
    .end local v2    # "language":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v5, "TranslateMainActivity"

    const-string/jumbo v6, "handleMessage: MSG_HIDE_SOFTINPUT"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTranslateLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
