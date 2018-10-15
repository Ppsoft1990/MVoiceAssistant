.class Lalm$3;
.super Ljava/lang/Object;
.source "NewsSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lalm;->loadData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalm;


# direct methods
.method constructor <init>(Lalm;)V
    .locals 0
    .param p1, "this$0"    # Lalm;

    .prologue
    .line 136
    iput-object p1, p0, Lalm$3;->a:Lalm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v2, p0, Lalm$3;->a:Lalm;

    invoke-static {v2}, Lalm;->c(Lalm;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v1

    .line 140
    .local v1, "state":Z
    iget-object v2, p0, Lalm$3;->a:Lalm;

    invoke-static {v2}, Lalm;->c(Lalm;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v3

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_type"

    const-string/jumbo v3, "local"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lalm$3;->a:Lalm;

    invoke-virtual {v2}, Lalm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90038"

    .line 144
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    return-void

    .line 140
    .end local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
