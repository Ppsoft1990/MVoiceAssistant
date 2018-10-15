.class Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;
.super Ljava/lang/Object;
.source "WeatherSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->loadData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_type"

    const-string/jumbo v5, "sweet"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 128
    const-string/jumbo v2, "d_operate"

    const-string/jumbo v5, "open"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v5, "FT90023"

    invoke-virtual {v2, v5, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 134
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v1

    .line 135
    .local v1, "state":Z
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v5

    if-nez v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 137
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    const/4 v6, 0x6

    if-nez v1, :cond_5

    move v2, v3

    :goto_2
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(IZLcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;)V

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->f(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    const/4 v6, 0x7

    if-nez v1, :cond_6

    move v2, v3

    :goto_3
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->g(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(IZLcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;)V

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    const/4 v5, 0x5

    if-nez v1, :cond_7

    :goto_4
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(IZLcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;)V

    .line 147
    :cond_2
    return-void

    .line 130
    .end local v1    # "state":Z
    :cond_3
    const-string/jumbo v2, "d_operate"

    const-string/jumbo v5, "close"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local v1    # "state":Z
    :cond_4
    move v2, v4

    .line 135
    goto :goto_1

    :cond_5
    move v2, v4

    .line 138
    goto :goto_2

    :cond_6
    move v2, v4

    .line 141
    goto :goto_3

    :cond_7
    move v3, v4

    .line 144
    goto :goto_4
.end method
