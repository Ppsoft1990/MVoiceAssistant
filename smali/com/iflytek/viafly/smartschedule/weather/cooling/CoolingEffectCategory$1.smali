.class Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory$1;
.super Ljava/lang/Object;
.source "CoolingEffectCategory.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory$1;->this$0:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 4
    .param p1, "l"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    const/4 v3, 0x0

    .line 68
    const-string/jumbo v0, "Weather_CoolingEffectCategory"

    const-string/jumbo v1, "WeatherFloatWindowDismissAlarm: onAlarmTrigger"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory$1;->this$0:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cooling_dismiss"

    .line 70
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory$1;->this$0:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    const/16 v1, 0x7d2

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->access$000(Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;IIILjava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method
