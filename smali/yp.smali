.class Lyp;
.super Ljava/lang/Object;
.source "AlarmRequestManager.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyp$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private b:Lyp$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lyp;->a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 31
    iget-object v0, p0, Lyp;->a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lyp;->a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "PushAlarmRequestManager"

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 34
    :cond_0
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 67
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, p2, v0}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datetime"    # J

    .prologue
    .line 41
    const-string/jumbo v1, "PushAlarmRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNextAlarm() | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2, p3}, Lyp;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lyp;->a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v2, "PushAlarmRequestManager"

    .line 45
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1, p2, p3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 47
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    const-string/jumbo v2, "10011"

    .line 48
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 49
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 52
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v1, p0, Lyp;->a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v1, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 63
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    :cond_0
    return-void
.end method

.method public a(Lyp$a;)V
    .locals 0
    .param p1, "trigger"    # Lyp$a;

    .prologue
    .line 37
    iput-object p1, p0, Lyp;->b:Lyp$a;

    .line 38
    return-void
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 2
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 90
    if-eqz p3, :cond_1

    const-string/jumbo v0, "PushAlarmRequestManager"

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string/jumbo v0, "PushAlarmRequestManager"

    const-string/jumbo v1, "noticeReceiver.onReceive()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lyp;->b:Lyp$a;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lyp;->b:Lyp$a;

    invoke-interface {v0, p3}, Lyp$a;->a(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string/jumbo v0, "PushAlarmRequestManager"

    const-string/jumbo v1, "onAlarmTrigger but alarm data is empty"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
