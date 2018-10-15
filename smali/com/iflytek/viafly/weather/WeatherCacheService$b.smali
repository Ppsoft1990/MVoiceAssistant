.class final Lcom/iflytek/viafly/weather/WeatherCacheService$b;
.super Landroid/os/Handler;
.source "WeatherCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/weather/WeatherCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/weather/WeatherCacheService;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/weather/WeatherCacheService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    .line 98
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "ACTION_WEATHER_SCHEDULE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    new-instance v4, Lbbs;

    iget-object v5, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    new-instance v6, Lcom/iflytek/viafly/weather/WeatherCacheService$a;

    iget-object v7, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-direct {v6, v7, v0}, Lcom/iflytek/viafly/weather/WeatherCacheService$a;-><init>(Lcom/iflytek/viafly/weather/WeatherCacheService;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lbbs;-><init>(Landroid/content/Context;Lyn;)V

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    .line 110
    invoke-static {}, Loa;->a()Loa;

    move-result-object v7

    invoke-virtual {v7}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v7

    const-string/jumbo v8, "1"

    .line 109
    invoke-virtual {v4, v5, v6, v7, v8}, Lbbs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;Ljava/lang/String;)J

    goto :goto_0

    .line 116
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/iflytek/viafly/weather/Weather;

    .line 117
    .local v3, "weather":Lcom/iflytek/viafly/weather/Weather;
    invoke-virtual {v3}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    .line 119
    invoke-virtual {v5}, Lcom/iflytek/viafly/weather/WeatherCacheService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "serializePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "SCHEDULE_WEATHER_SAVED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lil;->i(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "SCHEDULE_WEATHER_SAVED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccSCHEDULE_WEATHER_UPDATE_TIME"

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 124
    invoke-virtual {v4, v5, v6, v7}, Lil;->a(Ljava/lang/String;J)V

    .line 128
    .end local v2    # "serializePath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 129
    .local v1, "data":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/WeatherCacheService;->stopSelf()V

    goto/16 :goto_0

    .line 133
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v3    # "weather":Lcom/iflytek/viafly/weather/Weather;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 134
    .restart local v0    # "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/WeatherCacheService;->stopSelf()V

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
