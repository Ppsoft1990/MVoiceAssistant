.class Lcom/iflytek/viafly/weather/WeatherCacheService$a;
.super Ljava/lang/Object;
.source "WeatherCacheService.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/weather/WeatherCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/weather/WeatherCacheService;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/weather/WeatherCacheService;Ljava/lang/String;)V
    .locals 0
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->b:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 13
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 154
    const-string/jumbo v2, "WeatherCacheService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult | errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requestType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/viafly/weather/WeatherCacheService;->a(Lcom/iflytek/viafly/weather/WeatherCacheService;Z)Z

    .line 156
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-static {v2}, Lcom/iflytek/viafly/weather/WeatherCacheService;->a(Lcom/iflytek/viafly/weather/WeatherCacheService;)Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-static {v2}, Lcom/iflytek/viafly/weather/WeatherCacheService;->a(Lcom/iflytek/viafly/weather/WeatherCacheService;)Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 158
    .local v11, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->b:Ljava/lang/String;

    iput-object v2, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-static {v2}, Lcom/iflytek/viafly/weather/WeatherCacheService;->a(Lcom/iflytek/viafly/weather/WeatherCacheService;)Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->sendMessage(Landroid/os/Message;)Z

    .line 184
    .end local v11    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/16 v2, 0x18

    move/from16 v0, p5

    if-ne v0, v2, :cond_0

    move-object v8, p2

    .line 163
    check-cast v8, Lwa;

    .line 164
    .local v8, "bres":Lwa;
    invoke-virtual {v8}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "resultStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 166
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    const-string/jumbo v5, "weather"

    const-string/jumbo v6, ""

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v1, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v10, Lbbr;

    invoke-direct {v10}, Lbbr;-><init>()V

    .line 170
    .local v10, "mFilter":Lbbr;
    invoke-virtual {v10, v1}, Lbbr;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v12

    check-cast v12, Lcom/iflytek/viafly/weather/Weather;

    .line 171
    .local v12, "weather":Lcom/iflytek/viafly/weather/Weather;
    if-eqz v12, :cond_2

    const-string/jumbo v2, "000000"

    invoke-virtual {v12}, Lcom/iflytek/viafly/weather/Weather;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-static {v2}, Lcom/iflytek/viafly/weather/WeatherCacheService;->a(Lcom/iflytek/viafly/weather/WeatherCacheService;)Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 173
    .restart local v11    # "msg":Landroid/os/Message;
    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v9, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "action"

    iget-object v3, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->b:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v11, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 177
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-static {v2}, Lcom/iflytek/viafly/weather/WeatherCacheService;->a(Lcom/iflytek/viafly/weather/WeatherCacheService;)Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 179
    .end local v9    # "data":Landroid/os/Bundle;
    .end local v11    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-static {v2}, Lcom/iflytek/viafly/weather/WeatherCacheService;->a(Lcom/iflytek/viafly/weather/WeatherCacheService;)Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 180
    .restart local v11    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->b:Ljava/lang/String;

    iput-object v2, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService$a;->a:Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-static {v2}, Lcom/iflytek/viafly/weather/WeatherCacheService;->a(Lcom/iflytek/viafly/weather/WeatherCacheService;)Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
