.class Lcom/iflytek/viafly/settings/ui/SettingFragment$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/SettingFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SettingFragment;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 677
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100099"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/SettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->remove(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 679
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/SettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->remove(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 681
    invoke-static {}, Lmz;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->g()V

    .line 687
    :goto_0
    return-void

    .line 684
    :cond_0
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->f()V

    goto :goto_0
.end method
