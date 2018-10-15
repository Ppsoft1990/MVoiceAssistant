.class public Luz;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 45
    const-string/jumbo v1, "AlarmRequestManager"

    const-string/jumbo v2, "cancelNextAlarm()"

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v1, "alarm"

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 48
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 49
    return-void
.end method
