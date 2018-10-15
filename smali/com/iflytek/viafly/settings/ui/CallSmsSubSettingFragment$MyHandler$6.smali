.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$6;
.super Ljava/lang/Object;
.source "CallSmsSubSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;

.field final synthetic val$builder:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

.field final synthetic val$theActivity:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;

    .prologue
    .line 2442
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$6;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$6;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    iput-object p3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$6;->val$theActivity:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$6;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dismiss()V

    .line 2446
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$6;->val$theActivity:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->startPlay()V

    .line 2447
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$6;->val$theActivity:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    .line 2448
    return-void
.end method
