.class public Lawm;
.super Lawl;
.source "PushHotScheduleHelper.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushSchedule"    # Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    .param p2, "isGoChannelWhenFinish"    # Z

    .prologue
    const/4 v8, 0x0

    .line 31
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    .local v4, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->isUsed()Z

    move-result v3

    .line 36
    .local v3, "isUsed":Z
    if-eqz v3, :cond_1

    .line 37
    const/4 v1, -0x1

    .line 39
    .local v1, "id":I
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getBindScheduleId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    :goto_1
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v8, v7}, Lawn;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 50
    .end local v1    # "id":I
    :cond_1
    const/4 v2, 0x0

    .line 51
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 52
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "operation_type"

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v6, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    :goto_2
    const/high16 v6, 0x34000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    const-string/jumbo v6, "from"

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string/jumbo v6, "GoChannelWhenFinishFlag"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 40
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "id":I
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PushHotScheduleHelper"

    const-string/jumbo v7, "launchEdit() error!"

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "id":I
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getScheduleTypeStr()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "scheduleTypeStr":Ljava/lang/String;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 60
    const-string/jumbo v6, "alarm_datetime_infor"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getDateTime()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 64
    :goto_3
    const-string/jumbo v6, "schedule_type"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v6, "is_need_show_type_title"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string/jumbo v6, "ad_pic_url"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getPushPicUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v6, "ad_text"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getPushPicDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v6, "push_notice_id "

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v6, "content"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getScheduleTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v6, "need_cover"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 62
    :cond_3
    const-string/jumbo v6, "common_datetime_infor"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getDateTime()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_3
.end method
