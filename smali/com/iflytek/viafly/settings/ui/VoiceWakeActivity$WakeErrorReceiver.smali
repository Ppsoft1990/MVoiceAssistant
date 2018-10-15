.class Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceWakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WakeErrorReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;->this$0:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;
    .param p2, "x1"    # Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;-><init>(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_error_wake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;->this$0:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->access$200(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;)Lcom/iflytek/base/skin/customView/XCheckBox2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;->this$0:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->access$000(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;Z)V

    .line 313
    :cond_0
    return-void
.end method
