.class Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;
.super Ljava/util/TimerTask;
.source "NewsMediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->onPlayCompletedCallBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 305
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    iget-boolean v1, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->d:Z

    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, "params":Landroid/os/Bundle;
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 311
    const-string/jumbo v1, "stream"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    iget-object v2, v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    iget-object v2, v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    iget-object v3, v3, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    iget-object v3, v3, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    invoke-virtual {v1, v2, v0, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 314
    .end local v0    # "params":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->j(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)I

    .line 315
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2$1;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;->a:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->d:Z

    goto :goto_0
.end method
