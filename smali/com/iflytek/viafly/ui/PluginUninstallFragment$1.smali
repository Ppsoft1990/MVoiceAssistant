.class Lcom/iflytek/viafly/ui/PluginUninstallFragment$1;
.super Ljava/lang/Object;
.source "PluginUninstallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/PluginUninstallFragment;->getContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/PluginUninstallFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/PluginUninstallFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/PluginUninstallFragment;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/iflytek/viafly/ui/PluginUninstallFragment$1;->this$0:Lcom/iflytek/viafly/ui/PluginUninstallFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/PluginUninstallFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/PluginUninstallFragment$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.action.CALL_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/iflytek/viafly/ui/PluginUninstallFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method
