.class Lakz$3;
.super Ljava/lang/Object;
.source "ListenSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakz;->onEvent(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;)V
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
    .line 243
    iput-object p1, p0, Lakz$3;->a:Lakz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lakz$3;->a:Lakz;

    invoke-static {v0}, Lakz;->c(Lakz;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakz$3;->a:Lakz;

    invoke-static {v0}, Lakz;->c(Lakz;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    iget-object v0, p0, Lakz$3;->a:Lakz;

    invoke-static {v0}, Lakz;->a(Lakz;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 252
    :goto_0
    iget-object v0, p0, Lakz$3;->a:Lakz;

    invoke-virtual {v0}, Lakz;->a()V

    .line 253
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lakz$3;->a:Lakz;

    invoke-static {v0}, Lakz;->a(Lakz;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    goto :goto_0
.end method
