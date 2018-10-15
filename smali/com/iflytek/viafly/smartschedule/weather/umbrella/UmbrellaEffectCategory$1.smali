.class Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$1;
.super Ljava/lang/Object;
.source "UmbrellaEffectCategory.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;-><init>(Landroid/content/Context;)V
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
    .line 99
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$1;->this$0:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

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

    .line 102
    if-eqz p3, :cond_0

    .line 103
    const-string/jumbo v0, "Weather_UmbrellaEffectCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAlarmTrigger alarmData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$1;->this$0:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "umbrella_dismiss"

    .line 105
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$1;->this$0:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->access$000(Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;IIILjava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method
