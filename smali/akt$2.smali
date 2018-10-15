.class Lakt$2;
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
    .line 118
    iput-object p1, p0, Lakt$2;->a:Lakt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v1, p0, Lakt$2;->a:Lakt;

    invoke-static {v1}, Lakt;->e(Lakt;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v2

    iget-object v1, p0, Lakt$2;->a:Lakt;

    invoke-static {v1}, Lakt;->e(Lakt;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "recommend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lakt$2;->a:Lakt;

    invoke-virtual {v1}, Lakt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90039"

    .line 125
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    return-void

    .line 121
    .end local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
