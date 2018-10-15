.class public final Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
.super Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
.source "AirPollutionData.java"


# instance fields
.field private mWeather:Lcom/iflytek/viafly/weather/Weather;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeather()Lcom/iflytek/viafly/weather/Weather;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->mWeather:Lcom/iflytek/viafly/weather/Weather;

    return-object v0
.end method

.method public setWeather(Lcom/iflytek/viafly/weather/Weather;)V
    .locals 0
    .param p1, "weather"    # Lcom/iflytek/viafly/weather/Weather;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->mWeather:Lcom/iflytek/viafly/weather/Weather;

    .line 20
    return-void
.end method
