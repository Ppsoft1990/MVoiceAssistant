.class Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory$2;
.super Ljava/lang/Object;
.source "AirPollutionEffectCategory.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->createWeatherInfoRetryAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory$2;->this$0:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmTrigger()V
    .locals 2

    .prologue
    .line 514
    const-string/jumbo v0, "AirPollutionEffectCategory"

    const-string/jumbo v1, "onAlarmTrigger()"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory$2;->this$0:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->access$100(Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;)V

    .line 517
    return-void
.end method
