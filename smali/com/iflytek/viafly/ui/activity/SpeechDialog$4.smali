.class Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;
.super Ljava/lang/Object;
.source "SpeechDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/activity/SpeechDialog;->handleDenied(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

.field final synthetic val$deniedList:Ljava/util/List;

.field final synthetic val$unrationaleList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/activity/SpeechDialog;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->val$deniedList:Ljava/util/List;

    iput-object p3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->val$unrationaleList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 455
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "handleDenied | it\'s finished"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return-void

    .line 459
    :cond_0
    const-string/jumbo v0, "SpeechDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleGranded.run | threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->val$deniedList:Ljava/util/List;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->val$unrationaleList:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lpd;->b(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->access$302(Lcom/iflytek/viafly/ui/activity/SpeechDialog;Lpe;)Lpe;

    .line 461
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->access$300(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)Lpe;

    move-result-object v0

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v4, v4}, Lpe;->a(III)V

    .line 462
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->access$400(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V

    goto :goto_0
.end method
