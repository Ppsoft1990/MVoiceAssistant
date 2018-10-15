.class Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;
.super Ljava/lang/Object;
.source "VoiceWakeActivity.java"

# interfaces
.implements Lpf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->setWakeLaunch(Lcom/iflytek/base/skin/customView/XCheckBox2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

.field final synthetic val$checkBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;Lcom/iflytek/base/skin/customView/XCheckBox2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;->val$checkBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "VoiceWakeActivity"

    const-string/jumbo v1, "onDenied"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 235
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v2, 0x1

    .line 222
    const-string/jumbo v0, "VoiceWakeActivity"

    const-string/jumbo v1, "onGranted"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPEECH_WAKE_UP"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 226
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbbp;->a(Z)V

    .line 227
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;->val$checkBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->access$000(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;Z)V

    .line 229
    return-void
.end method
