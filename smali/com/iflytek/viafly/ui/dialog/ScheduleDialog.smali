.class public Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;
.super Landroid/app/Dialog;
.source "ScheduleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleDialog"


# instance fields
.field private contentView:Landroid/view/View;

.field private inAnimation:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mIsCanceled:Z

.field private outAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const v0, 0x7f08001d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mIsCanceled:Z

    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mIsCanceled:Z

    .line 50
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method static synthetic access$001(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string/jumbo v0, "SimpleDialog"

    const-string/jumbo v1, "dismiss()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->access$001(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;)V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 160
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mIsCanceled:Z

    if-eqz v1, :cond_0

    .line 164
    :goto_0
    return v0

    .line 163
    :cond_0
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mIsCanceled:Z

    .line 164
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 110
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->contentView:Landroid/view/View;

    .line 111
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->contentView:Landroid/view/View;

    .line 117
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->outAnimation:Landroid/view/animation/Animation;

    .line 129
    return-void
.end method

.method public setinAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->inAnimation:Landroid/view/animation/Animation;

    .line 125
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v1, "SimpleDialog"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 60
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->mIsCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SimpleDialog"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
