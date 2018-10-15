.class public abstract Lcom/iflytek/viafly/ui/activity/BaseDialog;
.super Landroid/app/Activity;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseDialog"


# instance fields
.field public mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

.field private mIsNeedHandle:Z

.field protected mThemeManager:Lcom/iflytek/base/skin/ThemeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseDialog;->mThemeManager:Lcom/iflytek/base/skin/ThemeManager;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/activity/BaseDialog;->mIsNeedHandle:Z

    return-void
.end method


# virtual methods
.method protected final isNeedHandle()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/activity/BaseDialog;->mIsNeedHandle:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string/jumbo v1, "BaseDialog"

    const-string/jumbo v2, "------------->> onCreate()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->isNeedHandle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->requestWindowFeature(I)Z

    .line 38
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseDialog;->mThemeManager:Lcom/iflytek/base/skin/ThemeManager;

    const-string/jumbo v2, "image.dlg_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 39
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setFormat(I)V

    .line 45
    new-instance v1, Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/view/DialogView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    .line 46
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->setView()V

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->registerListener()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 77
    const-string/jumbo v0, "BaseDialog"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    const-string/jumbo v0, "BaseDialog"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public abstract registerListener()V
.end method

.method protected final setIsNeedHandle(Z)V
    .locals 0
    .param p1, "isNeedHandle"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/activity/BaseDialog;->mIsNeedHandle:Z

    .line 62
    return-void
.end method

.method public abstract setView()V
.end method
