.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$2;
.super Ljava/lang/Object;
.source "CallSmsSubSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addChildren(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Landroid/content/Context;)V

    .line 473
    return-void
.end method
