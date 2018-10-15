.class Lcom/iflytek/viafly/ui/activity/SpeechDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SpeechDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/activity/SpeechDialog;
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
    .line 99
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$1;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    if-eqz p2, :cond_0

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "screen off finish speechdialog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$1;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    .line 105
    :cond_0
    return-void
.end method
