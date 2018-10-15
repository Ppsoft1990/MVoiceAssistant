.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$4;
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

.field final synthetic val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic val$theActivity:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;

    .prologue
    .line 2351
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$4;->val$theActivity:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    iput-object p3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$4;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$4;->val$theActivity:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    .line 2356
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$4;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 2357
    return-void
.end method
