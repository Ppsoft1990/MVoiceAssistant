.class public abstract Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;
.super Landroid/app/Activity;
.source "BaseDialogForSpace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseDialog"


# instance fields
.field public mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

.field private mIsNeedHandle:Z

.field protected mThemeManager:Lcom/iflytek/base/skin/ThemeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->mThemeManager:Lcom/iflytek/base/skin/ThemeManager;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->mIsNeedHandle:Z

    return-void
.end method


# virtual methods
.method protected final isNeedHandle()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->mIsNeedHandle:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const-string/jumbo v0, "BaseDialog"

    const-string/jumbo v1, "------------->> onCreate()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->isNeedHandle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 41
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    new-instance v0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    .line 44
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->setView()V

    .line 45
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->registerListener()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    const-string/jumbo v0, "BaseDialog"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    const-string/jumbo v0, "BaseDialog"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method protected abstract registerListener()V
.end method

.method protected final setIsNeedHandle(Z)V
    .locals 0
    .param p1, "isNeedHandle"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->mIsNeedHandle:Z

    .line 60
    return-void
.end method

.method protected abstract setView()V
.end method
