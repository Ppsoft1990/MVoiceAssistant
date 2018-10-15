.class Lakt$3;
.super Ljava/lang/Object;
.source "FoodSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakt;->onEvent(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;)V
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
    .line 241
    iput-object p1, p0, Lakt$3;->a:Lakt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lakt$3;->a:Lakt;

    invoke-static {v0}, Lakt;->d(Lakt;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakt$3;->a:Lakt;

    invoke-static {v0}, Lakt;->d(Lakt;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    iget-object v0, p0, Lakt$3;->a:Lakt;

    invoke-static {v0}, Lakt;->a(Lakt;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 250
    :goto_0
    iget-object v0, p0, Lakt$3;->a:Lakt;

    invoke-virtual {v0}, Lakt;->a()V

    .line 251
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lakt$3;->a:Lakt;

    invoke-static {v0}, Lakt;->a(Lakt;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    goto :goto_0
.end method
