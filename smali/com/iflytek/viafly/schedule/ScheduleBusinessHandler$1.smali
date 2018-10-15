.class Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$1;
.super Ljava/lang/Object;
.source "ScheduleBusinessHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->showViewUI(Lauk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$1;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 423
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$1;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$1;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    const-string/jumbo v2, "setTimeout(function(){window.scrollTo(0,0);},2000)"

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 426
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$1;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->access$000(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 428
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$1;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->access$100(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$1;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->access$200(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "mic"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i(Ljava/lang/String;)V

    .line 430
    return-void
.end method
