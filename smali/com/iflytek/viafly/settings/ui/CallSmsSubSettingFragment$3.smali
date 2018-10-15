.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$3;
.super Ljava/lang/Object;
.source "CallSmsSubSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setSimModeType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(Ljava/lang/String;)V

    .line 1275
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SIM_CHOICE"

    invoke-virtual {v0, v1, p2}, Lil;->a(Ljava/lang/String;I)V

    .line 1277
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1278
    return-void
.end method
