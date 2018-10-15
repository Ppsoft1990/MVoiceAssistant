.class Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;
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
    .line 160
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_type"

    const-string/jumbo v5, "abnormal"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    const-string/jumbo v2, "d_operate"

    const-string/jumbo v5, "open"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v5, "FT90023"

    invoke-virtual {v2, v5, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 174
    invoke-static {v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    .line 175
    .local v1, "state":Z
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    move-result-object v5

    if-nez v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setChecked(Z)V

    .line 176
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    if-nez v1, :cond_2

    move v2, v3

    :goto_2
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    move-result-object v6

    invoke-virtual {v5, v7, v2, v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(IZLcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;)V

    .line 178
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    sget-object v5, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherRemind:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    invoke-static {v2, v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;)V

    .line 179
    const-string/jumbo v2, "WeatherSettingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClick: umbrellaStateUpdate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_3

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 169
    .end local v1    # "state":Z
    :cond_0
    const-string/jumbo v2, "d_operate"

    const-string/jumbo v5, "close"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local v1    # "state":Z
    :cond_1
    move v2, v4

    .line 175
    goto :goto_1

    :cond_2
    move v2, v4

    .line 176
    goto :goto_2

    :cond_3
    move v3, v4

    .line 179
    goto :goto_3
.end method
