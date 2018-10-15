.class Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$3;
.super Ljava/lang/Object;
.source "ScheduleBusinessHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->showPlayImg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$3;->b:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    iput p2, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 479
    const-string/jumbo v0, "ScheduleBusinessHandler"

    const-string/jumbo v1, "run Activity showSpeekView"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$3;->b:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$3;->b:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remindView.showSpeekView(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$3;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 487
    :cond_0
    return-void
.end method
