.class Laxb$2;
.super Ljava/lang/Object;
.source "WeatherMediaHandler.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laxb;


# direct methods
.method constructor <init>(Laxb;)V
    .locals 0
    .param p1, "this$0"    # Laxb;

    .prologue
    .line 302
    iput-object p1, p0, Laxb$2;->a:Laxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 346
    const-string/jumbo v0, "WeatherMediaHandler"

    const-string/jumbo v1, "onInterruptedCallback()"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Laxb$2;->a:Laxb;

    invoke-static {v0}, Laxb;->c(Laxb;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxb$2;->a:Laxb;

    invoke-static {v0}, Laxb;->c(Laxb;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 348
    const-string/jumbo v0, "WeatherMediaHandler"

    const-string/jumbo v1, "onInterruptedCallback() | clear speech cach list!"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Laxb$2;->a:Laxb;

    invoke-static {v0}, Laxb;->c(Laxb;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 352
    :cond_0
    iget-object v0, p0, Laxb$2;->a:Laxb;

    invoke-static {v0}, Laxb;->g(Laxb;)Lauz$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Laxb$2;->a:Laxb;

    invoke-virtual {v0}, Laxb;->a()V

    .line 358
    :cond_1
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 6
    .param p1, "error"    # I

    .prologue
    .line 318
    const-string/jumbo v1, "WeatherMediaHandler"

    const-string/jumbo v2, "onPlayCompletedCallBack()"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Laxb$2;->a:Laxb;

    invoke-static {v1}, Laxb;->b(Laxb;)Lava;

    move-result-object v1

    invoke-virtual {v1}, Lava;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string/jumbo v1, "WeatherMediaHandler"

    const-string/jumbo v2, "onPlayCompletedCallBack(), play ring has finish, return"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Laxb$2;->a:Laxb;

    invoke-static {v1}, Laxb;->a(Laxb;)V

    .line 341
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Laxb$2;->a:Laxb;

    invoke-static {v1}, Laxb;->c(Laxb;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laxb$2;->a:Laxb;

    invoke-static {v1}, Laxb;->c(Laxb;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 328
    iget-object v1, p0, Laxb$2;->a:Laxb;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    iget-object v3, p0, Laxb$2;->a:Laxb;

    invoke-static {v3}, Laxb;->c(Laxb;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Laxb;->a(Laxb;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "speechContentPart1":Ljava/lang/String;
    iget-object v1, p0, Laxb$2;->a:Laxb;

    invoke-static {v1}, Laxb;->c(Laxb;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 331
    const-string/jumbo v1, "WeatherMediaHandler"

    const-string/jumbo v2, "onPlayCompletedCallBack() | start to tts the last speechList cach..."

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Laxb$2;->a:Laxb;

    invoke-static {v1}, Laxb;->e(Laxb;)Lawj;

    move-result-object v1

    iget-object v2, p0, Laxb$2;->a:Laxb;

    invoke-static {v2}, Laxb;->d(Laxb;)Lju;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v0, v2, v4, v5}, Lawj;->a(Ljava/lang/String;Lju;J)V

    goto :goto_0

    .line 335
    .end local v0    # "speechContentPart1":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "WeatherMediaHandler"

    const-string/jumbo v2, "onPlayCompletedCallBack() | start to ring..."

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Laxb$2;->a:Laxb;

    invoke-static {v1}, Laxb;->f(Laxb;)V

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 307
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 375
    return-void
.end method
