.class Laus$3;
.super Ljava/lang/Object;
.source "CommonMediaHandler.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laus;


# direct methods
.method constructor <init>(Laus;)V
    .locals 0
    .param p1, "this$0"    # Laus;

    .prologue
    .line 411
    iput-object p1, p0, Laus$3;->a:Laus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 455
    const-string/jumbo v0, "CommonScheduleMediaHandler"

    const-string/jumbo v1, "onInterruptedCallback()"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Laus$3;->a:Laus;

    invoke-static {v0}, Laus;->d(Laus;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laus$3;->a:Laus;

    invoke-static {v0}, Laus;->d(Laus;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 457
    const-string/jumbo v0, "CommonScheduleMediaHandler"

    const-string/jumbo v1, "onInterruptedCallback() | clear speech cach list!"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Laus$3;->a:Laus;

    invoke-static {v0}, Laus;->d(Laus;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    :cond_0
    iget-object v0, p0, Laus$3;->a:Laus;

    invoke-static {v0}, Laus;->h(Laus;)Lauz$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Laus$3;->a:Laus;

    invoke-static {v0}, Laus;->h(Laus;)Lauz$a;

    move-result-object v0

    invoke-interface {v0}, Lauz$a;->b()V

    .line 463
    :cond_1
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 448
    const-string/jumbo v0, "CommonScheduleMediaHandler"

    const-string/jumbo v1, "onPlayBeginCallBack()"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 6
    .param p1, "error"    # I

    .prologue
    .line 420
    const-string/jumbo v2, "CommonScheduleMediaHandler"

    const-string/jumbo v3, "onPlayCompletedCallBack()"

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Laus$3;->a:Laus;

    invoke-static {v2}, Laus;->c(Laus;)Lava;

    move-result-object v2

    invoke-virtual {v2}, Lava;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    const-string/jumbo v2, "CommonScheduleMediaHandler"

    const-string/jumbo v3, "onPlayCompletedCallBack(), play ring has finish, return"

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Laus$3;->a:Laus;

    invoke-static {v2}, Laus;->a(Laus;)V

    .line 444
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v2, p0, Laus$3;->a:Laus;

    invoke-static {v2}, Laus;->d(Laus;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Laus$3;->a:Laus;

    invoke-static {v2}, Laus;->d(Laus;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 428
    const-string/jumbo v1, ""

    .line 429
    .local v1, "speechContent":Ljava/lang/String;
    iget-object v2, p0, Laus$3;->a:Laus;

    invoke-static {v2}, Laus;->d(Laus;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 430
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v0, :cond_1

    .line 431
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 432
    iget-object v2, p0, Laus$3;->a:Laus;

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    iget-object v4, p0, Laus$3;->a:Laus;

    invoke-static {v4}, Laus;->d(Laus;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2, v3, v4}, Laus;->a(Laus;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 437
    :cond_1
    :goto_1
    iget-object v2, p0, Laus$3;->a:Laus;

    invoke-static {v2}, Laus;->d(Laus;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 438
    const-string/jumbo v2, "CommonScheduleMediaHandler"

    const-string/jumbo v3, "onPlayCompletedCallBack() | start to tts the last speechList cach..."

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Laus$3;->a:Laus;

    invoke-static {v2}, Laus;->f(Laus;)Lawj;

    move-result-object v2

    iget-object v3, p0, Laus$3;->a:Laus;

    invoke-static {v3}, Laus;->e(Laus;)Lju;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v3, v4, v5}, Lawj;->a(Ljava/lang/String;Lju;J)V

    goto :goto_0

    .line 433
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 434
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    iget-object v3, p0, Laus$3;->a:Laus;

    invoke-static {v3}, Laus;->d(Laus;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbi;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 441
    .end local v0    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v1    # "speechContent":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "CommonScheduleMediaHandler"

    const-string/jumbo v3, "onPlayCompletedCallBack() | start to ring..."

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Laus$3;->a:Laus;

    invoke-static {v2}, Laus;->g(Laus;)V

    goto/16 :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 415
    const-string/jumbo v0, "CommonScheduleMediaHandler"

    const-string/jumbo v1, "onProgressCallBack()"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 476
    return-void
.end method
