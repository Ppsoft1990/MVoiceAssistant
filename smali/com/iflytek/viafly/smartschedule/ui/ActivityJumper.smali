.class public Lcom/iflytek/viafly/smartschedule/ui/ActivityJumper;
.super Ljava/lang/Object;
.source "ActivityJumper.java"


# static fields
.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "extra_permissions"

.field public static final EXTRA_PERMISSION_REQUEST_CODE:Ljava/lang/String; = "extra_permission_request_code"

.field public static final GOTO_SMART_CARD_ACTIVITY:Ljava/lang/String; = "com.iflytek.cmccgoto_smart_card_activity"

.field public static final HOT_PUSH_ACTION:Ljava/lang/String; = "hot_push_action"

.field public static final HOT_PUSH_ITEM:Ljava/lang/String; = "hot_push_item"

.field public static final IS_NEED_RING:Ljava/lang/String; = "is_need_ring"

.field public static final KEY_SCHEDULE:Ljava/lang/String; = "schedule"

.field public static final RESULT_CODE_DELETE_REMINDER:I = 0x2329

.field public static final REUQEST_CODE_SMART_REMINDER:I = 0x2328

.field public static final SCHEDULE_DELAY_GUIDE:Ljava/lang/String; = "schedule_delay_guid"

.field public static final SMART_SCHEDULE_ACTION:Ljava/lang/String; = "smart_schedule_action"

.field public static final SMART_SCHEDULE_ITEM:Ljava/lang/String; = "smart_schedule_item"

.field public static final SMART_SCHEDULE_SHOW_DELETE:Ljava/lang/String; = "smart_schedule_show_delete"

.field private static final TAG:Ljava/lang/String; = "ActivityJumper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startAlarmNewsDisplay(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "yearMonthDay"    # Ljava/lang/String;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_REMIND_ALARM_NEWS_SYMBOL"

    invoke-virtual {v1, v2, p2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startRequestPermission(Landroid/content/Context;Ljava/util/ArrayList;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "requestId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Laza;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/RequestPermissionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "extra_permissions"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v2, "extra_permission_request_code"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 184
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ActivityJumper"

    const-string/jumbo v3, "startScheduleEdit | error "

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startScheduleDelayGuide(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "schedule_delay_guid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startScheduleDetailActivity(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleItem"    # Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .param p2, "needCover"    # Z

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "smart_schedule_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "need_cover"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public static startScheduleEdit(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 146
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 147
    :cond_0
    const-string/jumbo v2, "ActivityJumper"

    const-string/jumbo v3, "startScheduleEdit| context or schedule is null!"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_LUANCH_HOME_TO_SCHEDULE_EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v2, "operation_type"

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    const-string/jumbo v2, "GoChannelWhenFinishFlag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ActivityJumper"

    const-string/jumbo v3, "startScheduleEdit | error "

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startSmartReminderDetail(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleItem"    # Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .param p2, "showDelete"    # Z

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    const-string/jumbo v1, "smart_schedule_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "smart_schedule_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v1, "smart_schedule_show_delete"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public static startSmartReminderDetailActivity(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleItem"    # Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .param p2, "showDelete"    # Z

    .prologue
    .line 59
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->isJumpToDailyTrafficActivity(Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->startActivityForResult(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;Z)V

    .line 71
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 62
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    const-string/jumbo v1, "smart_schedule_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "smart_schedule_show_delete"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/16 v1, 0x2328

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
