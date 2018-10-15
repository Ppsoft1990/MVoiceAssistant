.class public Lcom/iflytek/viafly/weather/WeatherCacheService;
.super Landroid/app/Service;
.source "WeatherCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/weather/WeatherCacheService$a;,
        Lcom/iflytek/viafly/weather/WeatherCacheService$b;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/weather/WeatherCacheService$b;

.field private b:Landroid/os/Looper;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/weather/WeatherCacheService;)Lcom/iflytek/viafly/weather/WeatherCacheService$b;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/WeatherCacheService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->a:Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/weather/WeatherCacheService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/WeatherCacheService;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->c:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WeatherCacheService"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 60
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->b:Landroid/os/Looper;

    .line 62
    new-instance v1, Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->b:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/iflytek/viafly/weather/WeatherCacheService$b;-><init>(Lcom/iflytek/viafly/weather/WeatherCacheService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->a:Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->b:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 71
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x2

    .line 76
    if-nez p1, :cond_1

    .line 77
    const-string/jumbo v2, "WeatherCacheService"

    const-string/jumbo v3, "intent is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    return v5

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "aciton":Ljava/lang/String;
    const-string/jumbo v2, "WeatherCacheService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->c:Z

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->a:Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 85
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->c:Z

    .line 87
    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherCacheService;->a:Lcom/iflytek/viafly/weather/WeatherCacheService$b;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/weather/WeatherCacheService$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
