.class Laug;
.super Ljava/lang/Object;
.source "RemindMmpComponents.java"

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# instance fields
.field private a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Landroid/content/Context;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)V
    .locals 1
    .param p1, "reminderItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "scheduleBusinessHandler"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Laug;->d:Z

    .line 50
    iput-object p1, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 51
    iput-object p2, p0, Laug;->b:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Laug;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .line 53
    return-void
.end method

.method static synthetic a(Laug;)Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .locals 1
    .param p0, "x0"    # Laug;

    .prologue
    .line 33
    iget-object v0, p0, Laug;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    return-object v0
.end method

.method static synthetic a(Laug;Z)V
    .locals 0
    .param p0, "x0"    # Laug;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Laug;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0
    .param p1, "isplaying"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Laug;->d:Z

    .line 43
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Laug;->d:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p1, "scheduleItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 152
    iput-object p1, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 153
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string/jumbo v3, "ScheduleMmpComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exec start, aciton is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,args is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string/jumbo v3, "jumpToRemindEdit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    :try_start_0
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v3

    iget-object v4, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    iget-object v5, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lauy;->a(IJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, p0, Laug;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->stopAnimation()V

    .line 66
    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    invoke-static {v3}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v3

    invoke-virtual {v3}, Lavb;->a()V

    .line 68
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    const-string/jumbo v3, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v4, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v3, "operation_type"

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v3, "jump_from"

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->dialogmode:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v3, "jump_from_view"

    const-string/jumbo v4, "fromNewRemindView"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    const-string/jumbo v5, "No Action Match"

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v3, "broadcastRecord"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    :try_start_1
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v3

    iget-object v4, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    iget-object v5, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lauy;->a(IJ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 84
    invoke-direct {p0}, Laug;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    iget-object v3, p0, Laug;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->stopAnimation()V

    .line 86
    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    invoke-static {v3}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v3

    invoke-virtual {v3}, Lavb;->a()V

    .line 87
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Laug;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    invoke-static {v3}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v3

    iget-object v4, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    iget-object v5, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTimeStamp()J

    move-result-wide v6

    new-instance v5, Laug$1;

    invoke-direct {v5, p0}, Laug$1;-><init>(Laug;)V

    invoke-virtual {v3, v4, v6, v7, v5}, Lavb;->a(IJLic;)V

    goto :goto_0

    .line 113
    :cond_4
    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Laug;->b:Landroid/content/Context;

    const v5, 0x7f0c0307

    .line 114
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 113
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 116
    .local v2, "toast":Landroid/widget/Toast;
    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 117
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 122
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_5
    const-string/jumbo v3, "switchWeather"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 123
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    iget-object v4, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v4

    if-ne v3, v4, :cond_6

    .line 124
    iget-object v3, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 128
    :goto_1
    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v3

    iget-object v4, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-interface {v3, v4}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    goto/16 :goto_0

    .line 126
    :cond_6
    iget-object v3, p0, Laug;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_1

    .line 129
    :cond_7
    const-string/jumbo v3, "gotoScheduleList"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x30000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    iget-object v3, p0, Laug;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 143
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
