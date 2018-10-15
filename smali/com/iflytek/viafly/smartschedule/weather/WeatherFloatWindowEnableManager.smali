.class public Lcom/iflytek/viafly/smartschedule/weather/WeatherFloatWindowEnableManager;
.super Ljava/lang/Object;
.source "WeatherFloatWindowEnableManager.java"


# static fields
.field private static final SETTINGS_WEATHER_FLOAT_WINDOW_ENABLED:Ljava/lang/String; = "SETTINGS_WEATHER_FLOAT_WINDOW_ENABLED"

.field private static final TAG:Ljava/lang/String; = "WeatherFloatWindowEnableManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGrayControllEnabled()Z
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "FLOAT_WEATHER_GRAY_CTRL_FALG"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 27
    .local v0, "isGrayControlEnabled":Z
    return v0
.end method

.method public static isUserCheckEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "SETTINGS_WEATHER_FLOAT_WINDOW_ENABLED"

    invoke-virtual {v2, v3, v1}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 20
    .local v0, "settingEnabled":Z
    const-string/jumbo v2, "WeatherFloatWindowEnableManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWeatherFloatWindowEnabled() |settingEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/weather/WeatherFloatWindowEnableManager;->isGrayControllEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
