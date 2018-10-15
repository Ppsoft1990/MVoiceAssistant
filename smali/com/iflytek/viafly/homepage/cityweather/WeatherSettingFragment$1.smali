.class Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$1;
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
    .line 95
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const-string/jumbo v1, "d_operate"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT90022"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 106
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v2

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 108
    return-void

    .line 102
    :cond_0
    const-string/jumbo v1, "d_operate"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
