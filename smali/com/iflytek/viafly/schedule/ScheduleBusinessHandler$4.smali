.class Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleBusinessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$4;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v10, "ScheduleBusinessHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "------------>> onReceive, action is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$4;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    iget-object v3, v10, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .line 570
    .local v3, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    if-nez v3, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    const-string/jumbo v10, "com.iflytek.cmcc.schedule.SCHEDULE_ADD_SUCCESS"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 574
    const-string/jumbo v10, "ScheduleBusinessHandler"

    const-string/jumbo v11, "------------------->>> add schedule success!"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string/jumbo v10, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    .line 576
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 577
    .local v7, "scheduleItem":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v7, :cond_0

    .line 580
    invoke-static/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v10

    .line 581
    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v11

    .line 580
    invoke-interface {v10, v11}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v10

    if-nez v10, :cond_2

    .line 583
    invoke-static {}, Laun;->c()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 584
    invoke-static {}, Laun;->c()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v10

    .line 585
    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 586
    const-string/jumbo v10, "remindView.removeCurrentCanDeleteScheduleView()"

    .line 587
    invoke-virtual {v3, v10}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$4;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->createScheduleAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v9

    .line 590
    .local v9, "widgetViaFlyAnswerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    const-string/jumbo v8, "\u63d0\u9192\u5df2\u5220\u9664"

    .line 591
    .local v8, "tip":Ljava/lang/String;
    invoke-virtual {v9, v8}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$4;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    const-wide/16 v12, 0x0

    invoke-static {v10, v9, v12, v13}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->access$300(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 593
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$4;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    const-string/jumbo v11, "\u63d0\u9192\u5df2\u5220\u9664"

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static {v10, v11, v12, v14, v15}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->access$400(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 598
    .end local v8    # "tip":Ljava/lang/String;
    .end local v9    # "widgetViaFlyAnswerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    :cond_2
    invoke-static {}, Laun;->c()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 599
    invoke-static {}, Laun;->c()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v10

    .line 600
    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 602
    invoke-static {}, Laun;->d()Laur;

    move-result-object v6

    .line 603
    .local v6, "remindView":Laur;
    if-eqz v6, :cond_0

    .line 604
    invoke-virtual {v6, v7}, Laur;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 606
    invoke-virtual {v6}, Laur;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    .line 609
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, "filterStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remindView.updateRemindView(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\')"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 611
    invoke-virtual {v3, v10}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 617
    .end local v4    # "filterStr":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "remindView":Laur;
    .end local v7    # "scheduleItem":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_3
    const-string/jumbo v10, "com.iflytek.cmcc.schedule.ACTION_SCHEDULE_DELETE_FROM_LIST_SUCCESS"

    .line 618
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 619
    const-string/jumbo v10, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    .line 620
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 622
    .restart local v7    # "scheduleItem":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-static/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v10

    .line 623
    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v10

    if-nez v10, :cond_0

    .line 625
    invoke-static {}, Laun;->c()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 626
    invoke-static {}, Laun;->c()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v10

    .line 627
    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 628
    const-string/jumbo v10, "remindView.removeCurrentCanDeleteScheduleView()"

    .line 629
    invoke-virtual {v3, v10}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 632
    .end local v7    # "scheduleItem":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_4
    const-string/jumbo v10, "com.iflytek.cmcc.schedule.ACTION_SCHEDULE_DELETE_FROM_SCHEDULE_MANAGE_SUCCESS"

    .line 633
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 634
    if-eqz v3, :cond_0

    instance-of v10, v3, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v10, :cond_0

    .line 635
    const-string/jumbo v10, "remindView.removeCurrentCanDeleteScheduleView()"

    .line 636
    invoke-virtual {v3, v10}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
