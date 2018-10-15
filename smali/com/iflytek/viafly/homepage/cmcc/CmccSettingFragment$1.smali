.class Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;
.super Ljava/lang/Object;
.source "CmccSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->loadData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string/jumbo v2, "d_operate"

    const-string/jumbo v3, "open"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v3, "FT90019"

    invoke-virtual {v2, v3, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 103
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lmz;->l()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;->a:Landroid/content/Context;

    const-string/jumbo v3, "\u8be5\u529f\u80fd\u4ec5\u652f\u6301\u4e2d\u56fd\u79fb\u52a8\u53f7\u7801"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 110
    :goto_1
    return-void

    .line 98
    :cond_0
    const-string/jumbo v2, "d_operate"

    const-string/jumbo v3, "close"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method
