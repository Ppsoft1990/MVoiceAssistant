.class Lakz$1;
.super Ljava/lang/Object;
.source "ListenSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakz;->loadData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lakz;


# direct methods
.method constructor <init>(Lakz;)V
    .locals 0
    .param p1, "this$0"    # Lakz;

    .prologue
    .line 93
    iput-object p1, p0, Lakz$1;->a:Lakz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v1, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "d_type"

    const-string/jumbo v5, "category"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v3, p0, Lakz$1;->a:Lakz;

    invoke-virtual {v3}, Lakz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v5, "FT90018"

    .line 100
    invoke-virtual {v3, v5, v1}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    iget-object v3, p0, Lakz$1;->a:Lakz;

    invoke-static {v3}, Lakz;->a(Lakz;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lakz$1;->a:Lakz;

    invoke-static {v3}, Lakz;->a(Lakz;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v5

    iget-object v3, p0, Lakz$1;->a:Lakz;

    invoke-static {v3}, Lakz;->a(Lakz;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 107
    iget-object v3, p0, Lakz$1;->a:Lakz;

    invoke-static {v3}, Lakz;->b(Lakz;)Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->setVisible(Z)V

    .line 108
    iget-object v3, p0, Lakz$1;->a:Lakz;

    invoke-static {v3}, Lakz;->c(Lakz;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 116
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 105
    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lakz$1;->a:Lakz;

    invoke-virtual {v3}, Lakz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lakz$1;->a:Lakz;

    invoke-static {v3}, Lakz;->b(Lakz;)Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    const-string/jumbo v3, "groupId"

    iget-object v4, p0, Lakz$1;->a:Lakz;

    invoke-static {v4}, Lakz;->d(Lakz;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lakz$1;->a:Lakz;

    invoke-virtual {v3}, Lakz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
