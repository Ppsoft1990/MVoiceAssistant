.class Lcom/iflytek/viafly/ui/activity/SpeechDialog$5;
.super Ljava/lang/Object;
.source "SpeechDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/activity/SpeechDialog;->delayFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$5;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$5;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->access$502(Lcom/iflytek/viafly/ui/activity/SpeechDialog;Z)Z

    .line 478
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$5;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "delayFinished | it\'s finished"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$5;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    goto :goto_0
.end method
