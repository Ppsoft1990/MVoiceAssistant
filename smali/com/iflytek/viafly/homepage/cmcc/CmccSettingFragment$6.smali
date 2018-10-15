.class Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;
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
    .line 261
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->h(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const-string/jumbo v1, "d_operate"

    const-string/jumbo v3, "open"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v3, "FT90021"

    invoke-virtual {v1, v3, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 273
    invoke-static {}, Lmz;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;->a:Landroid/content/Context;

    const-string/jumbo v3, "\u8be5\u529f\u80fd\u4ec5\u652f\u6301\u4e2d\u56fd\u79fb\u52a8\u53f7\u7801"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 281
    :goto_1
    return-void

    .line 268
    :cond_0
    const-string/jumbo v1, "d_operate"

    const-string/jumbo v3, "close"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->h(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v3

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->h(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 277
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v3, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_IS_TOUCH"

    invoke-virtual {v1, v3, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 278
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->h(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 279
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;->b:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    sget-object v2, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->DadayTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;)V

    goto :goto_1

    .line 276
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method
