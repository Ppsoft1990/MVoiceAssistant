.class Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$2;
.super Ljava/lang/Object;
.source "UmbrellaEffectCategory.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->createWeatherInfoRetryAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$2;->this$0:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmTrigger()V
    .locals 2

    .prologue
    .line 512
    const-string/jumbo v0, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v1, "onAlarmTrigger()"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$2;->this$0:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->access$100(Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;)V

    .line 515
    return-void
.end method
