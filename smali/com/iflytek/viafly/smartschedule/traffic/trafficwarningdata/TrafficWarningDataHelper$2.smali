.class Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$2;
.super Ljava/lang/Object;
.source "TrafficWarningDataHelper.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->getAlarmCallback()Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 5
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 86
    if-eqz p3, :cond_1

    .line 87
    const-string/jumbo v2, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAlarmTrigger realTrigger = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " alarmdata = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 90
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "alarm_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "alarmType":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 92
    const-string/jumbo v2, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v3, "\u5230\u65f6\u95f4\uff0c\u67e5\u8be2\u544a\u8b66\u7b56\u7565\u63a5\u53e3"

    invoke-static {v2, v3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->access$300(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V

    .line 98
    .end local v0    # "alarmType":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string/jumbo v2, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v3, "onAlarmTrigger but alarm data is empty"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
