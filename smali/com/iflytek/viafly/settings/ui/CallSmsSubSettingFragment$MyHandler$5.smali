.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$5;
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


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;

    .prologue
    .line 2434
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$5;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$5;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$5;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dismiss()V

    .line 2439
    return-void
.end method
