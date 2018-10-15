.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "SmsShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 417
    const-string/jumbo v0, "reason"

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->a:Ljava/lang/String;

    .line 418
    const-string/jumbo v0, "homekey"

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x2

    .line 422
    if-nez p2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 427
    const-string/jumbo v7, "SmsShowActivity"

    const-string/jumbo v8, "Receive Home broadcast"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string/jumbo v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 429
    .local v6, "reason":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string/jumbo v7, "homekey"

    .line 430
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v8}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 433
    .end local v6    # "reason":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "com.iflytek.cmcc.START_READ_RECEIVE_SMS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 435
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 436
    :try_start_0
    const-string/jumbo v7, "SmsShowActivity"

    const-string/jumbo v9, "START_READ_RECEIVE_SMS"

    invoke-static {v7, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-nez v1, :cond_3

    .line 438
    const-string/jumbo v7, "SmsShowActivity"

    const-string/jumbo v9, "onReceive | bundle is null"

    invoke-static {v7, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    monitor-exit v8

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 442
    :cond_3
    :try_start_1
    const-string/jumbo v7, "com.iflytek.cmcc.EXTRA_MESSAGE_ITEM"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 444
    .local v4, "msgId":J
    const-string/jumbo v7, "SmsShowActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 448
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-virtual {v7}, Lcom/iflytek/base/mms/entities/SmsItem;->getMsgId()J

    move-result-wide v10

    cmp-long v7, v10, v4

    if-nez v7, :cond_4

    .line 449
    move v3, v2

    .line 447
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 453
    :cond_5
    const-string/jumbo v7, "SmsShowActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/viafly/mms/ui/SmsGallery;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->setSelection(I)V

    .line 460
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;I)I

    .line 461
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->f(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    .line 462
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 464
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v3    # "pos":I
    .end local v4    # "msgId":J
    :cond_6
    const-string/jumbo v7, "com.iflytek.cmcc.END_READ_RECEIVE_SMS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 465
    const-string/jumbo v7, "SmsShowActivity"

    const-string/jumbo v8, "END_READ_RECEIVE_SMS"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->g(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    .line 467
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 468
    :cond_7
    const-string/jumbo v7, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 472
    :cond_8
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsBroadcastState()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 473
    invoke-static {}, Laop;->a()Laop;

    move-result-object v7

    invoke-virtual {v7}, Laop;->d()Z

    move-result v7

    if-nez v7, :cond_0

    .line 474
    :cond_9
    invoke-static {}, Laop;->a()Laop;

    move-result-object v7

    invoke-virtual {v7}, Laop;->d()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 475
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-virtual {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.STOP_READ"

    .line 476
    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 477
    invoke-static {}, Laop;->a()Laop;

    move-result-object v7

    invoke-virtual {v7}, Laop;->c()V

    .line 479
    :cond_a
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->h(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    goto/16 :goto_0

    .line 481
    :cond_b
    const-string/jumbo v7, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 482
    const-string/jumbo v7, "SmsShowActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "broadcast = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 490
    :cond_c
    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string/jumbo v7, "com.iflytek.cmcc.ACTION_SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 492
    :cond_d
    const-string/jumbo v7, "SmsShowActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "broadcast = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    .line 494
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->j(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_0

    .line 495
    const-string/jumbo v7, "SmsShowActivity"

    const-string/jumbo v8, "onClick | READING_STATUS"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-static {}, Laop;->a()Laop;

    move-result-object v7

    invoke-virtual {v7}, Laop;->d()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 497
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-virtual {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.STOP_READ"

    .line 498
    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Laop;->a()Laop;

    move-result-object v7

    invoke-virtual {v7}, Laop;->c()V

    .line 501
    :cond_e
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->h(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    .line 502
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 505
    :cond_f
    const-string/jumbo v7, "com.iflytek.cmcc.CLOSE_TRIGGER_DIALOG"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 506
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-virtual {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    goto/16 :goto_0
.end method
