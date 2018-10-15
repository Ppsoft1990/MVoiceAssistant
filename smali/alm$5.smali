.class Lalm$5;
.super Ljava/lang/Object;
.source "NewsSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lalm;->onEvent(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;)V
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
    .line 370
    iput-object p1, p0, Lalm$5;->a:Lalm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lalm$5;->a:Lalm;

    invoke-static {v0}, Lalm;->f(Lalm;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalm$5;->a:Lalm;

    invoke-static {v0}, Lalm;->f(Lalm;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 374
    :cond_0
    iget-object v0, p0, Lalm$5;->a:Lalm;

    invoke-static {v0}, Lalm;->d(Lalm;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 379
    :goto_0
    iget-object v0, p0, Lalm$5;->a:Lalm;

    invoke-virtual {v0}, Lalm;->a()V

    .line 380
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lalm$5;->a:Lalm;

    invoke-static {v0}, Lalm;->d(Lalm;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    goto :goto_0
.end method
