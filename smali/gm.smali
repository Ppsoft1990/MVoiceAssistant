.class public Lgm;
.super Ljava/lang/Object;
.source "AlarmHelper.java"


# direct methods
.method public static a(Landroid/content/Context;JLandroid/app/PendingIntent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "datetime"    # J
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 45
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 47
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 50
    .local v1, "type":I
    sget-object v2, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->MI_2S:Ljava/lang/String;

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-static {}, Lhl;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    const/4 v1, 0x1

    .line 54
    :cond_1
    const-string/jumbo v2, "AlarmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlarm(), alarm type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 56
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "alarmId"    # I

    .prologue
    .line 29
    :try_start_0
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 30
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {p0, p1, p2}, Lgm;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AlarmHelper"

    const-string/jumbo v3, "cancelAlarm() error!"

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "alarmId"    # I
    .param p3, "datetime"    # J

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lgm;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 24
    invoke-static {p0, p1, p2}, Lgm;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0, p3, p4, v0}, Lgm;->a(Landroid/content/Context;JLandroid/app/PendingIntent;)V

    .line 25
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "alarmId"    # I

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_ALARM_TRIGGER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "module_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v2, "alarm_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    const/high16 v2, 0x10000000

    invoke-static {p0, p2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 41
    .local v1, "nextIntent":Landroid/app/PendingIntent;
    return-object v1
.end method
