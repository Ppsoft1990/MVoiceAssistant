.class Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$1;
.super Ljava/lang/Object;
.source "CallPatternSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lpp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lpp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$200(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .line 127
    invoke-static {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v3}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lju;

    move-result-object v3

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 129
    :cond_0
    return-void
.end method
