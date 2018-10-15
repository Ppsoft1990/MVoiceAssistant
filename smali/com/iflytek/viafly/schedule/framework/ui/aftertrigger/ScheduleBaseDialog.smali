.class public abstract Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;
.super Landroid/app/Activity;
.source "ScheduleBaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/iflytek/base/skin/ThemeManager;

.field public b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->a:Lcom/iflytek/base/skin/ThemeManager;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->c:Z

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b()V
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->c:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x2

    .line 33
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-string/jumbo v1, "BaseDialog"

    const-string/jumbo v2, "------------->> onCreate()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->requestWindowFeature(I)Z

    .line 41
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    .line 42
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->a()V

    .line 43
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->b()V

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 48
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 50
    .local v0, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    const-string/jumbo v0, "BaseDialog"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    const-string/jumbo v0, "BaseDialog"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
