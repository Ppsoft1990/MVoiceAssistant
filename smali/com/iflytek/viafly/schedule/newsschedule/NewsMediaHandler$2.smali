.class Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;
.super Ljava/lang/Object;
.source "NewsMediaHandler.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    sget-object v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->stop:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v1, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 326
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    iput-boolean v2, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->d:Z

    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v0, v2}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;Z)V

    .line 328
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Lauz$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Lauz$a;

    move-result-object v0

    invoke-interface {v0}, Lauz$a;->b()V

    .line 331
    :cond_0
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    sget-object v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->playing:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v1, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;Z)V

    .line 273
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 6
    .param p1, "error"    # I

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    sget-object v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->specialState:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v2, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 278
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->b(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;Z)V

    .line 280
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    sget-object v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->stop:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v2, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 281
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->d(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->h(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .line 297
    invoke-static {v2}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Lod;->playRingToneFromAssert(Landroid/content/res/AssetFileDescriptor;)V

    .line 298
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->d:Z

    .line 300
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;-><init>(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;I)I

    .line 288
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;Z)V

    .line 289
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    sget-object v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->stop:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v2, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 290
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Lauz$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Lauz$a;

    move-result-object v1

    invoke-interface {v1}, Lauz$a;->b()V

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)V

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    sget-object v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->pause:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v1, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 336
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;Z)V

    .line 337
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Lauz$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Lauz$a;

    move-result-object v0

    invoke-interface {v0}, Lauz$a;->b()V

    .line 340
    :cond_0
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    sget-object v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->playing:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v1, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 345
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;Z)V

    .line 347
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 266
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 351
    return-void
.end method
