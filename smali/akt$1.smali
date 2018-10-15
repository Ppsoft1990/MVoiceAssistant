.class Lakt$1;
.super Ljava/lang/Object;
.source "FoodSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakt;->loadData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lakt;


# direct methods
.method constructor <init>(Lakt;)V
    .locals 0
    .param p1, "this$0"    # Lakt;

    .prologue
    .line 94
    iput-object p1, p0, Lakt$1;->a:Lakt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v1, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_type"

    const-string/jumbo v5, "category"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Lakt$1;->a:Lakt;

    invoke-virtual {v4}, Lakt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v4

    const-string/jumbo v5, "FT90039"

    .line 100
    invoke-virtual {v4, v5, v1}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    iget-object v4, p0, Lakt$1;->a:Lakt;

    invoke-static {v4}, Lakt;->a(Lakt;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lakt$1;->a:Lakt;

    invoke-virtual {v3}, Lakt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lakt$1;->a:Lakt;

    invoke-static {v3}, Lakt;->b(Lakt;)Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    const-string/jumbo v3, "groupId"

    iget-object v4, p0, Lakt$1;->a:Lakt;

    invoke-static {v4}, Lakt;->c(Lakt;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lakt$1;->a:Lakt;

    invoke-virtual {v3}, Lakt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v4, p0, Lakt$1;->a:Lakt;

    invoke-static {v4}, Lakt;->b(Lakt;)Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->setVisible(Z)V

    .line 113
    iget-object v4, p0, Lakt$1;->a:Lakt;

    invoke-static {v4}, Lakt;->d(Lakt;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v4, p0, Lakt$1;->a:Lakt;

    invoke-static {v4}, Lakt;->a(Lakt;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v4

    iget-object v5, p0, Lakt$1;->a:Lakt;

    invoke-static {v5}, Lakt;->a(Lakt;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v4, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    goto :goto_0
.end method
