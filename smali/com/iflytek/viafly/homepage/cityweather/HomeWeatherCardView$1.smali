.class Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;
.super Ljava/lang/Object;
.source "HomeWeatherCardView.java"

# interfaces
.implements Lajr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    :cond_0
    return-void
.end method

.method public a(Lajw;)V
    .locals 2
    .param p1, "cityArea"    # Lajw;

    .prologue
    .line 193
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 194
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 195
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->b(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->f()V

    .line 202
    return-void
.end method

.method public a(Lajx;)V
    .locals 3
    .param p1, "cityWeather"    # Lajx;

    .prologue
    .line 213
    if-eqz p1, :cond_1

    .line 214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 216
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Lajx;Z)V
    .locals 2
    .param p1, "cityWeather"    # Lajx;
    .param p2, "isLocate"    # Z

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 230
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 231
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    :cond_0
    return-void
.end method

.method public a(Lakd;)V
    .locals 0
    .param p1, "weatherFuture"    # Lakd;

    .prologue
    .line 245
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method
