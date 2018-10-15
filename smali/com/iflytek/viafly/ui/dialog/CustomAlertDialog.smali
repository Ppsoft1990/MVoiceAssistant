.class public Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;
.super Landroid/app/Dialog;
.source "CustomAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;,
        Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomAlertDialog"


# instance fields
.field private contentView:Landroid/view/View;

.field private inAnimation:Landroid/view/animation/Animation;

.field private outAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const v0, 0x7f08000a

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method static synthetic access$001(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "CustomAlertDialog"

    const-string/jumbo v1, "dismiss()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->outAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->getDefaultOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->outAnimation:Landroid/view/animation/Animation;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->outAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$1;-><init>(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method protected getDefaultInAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 125
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 127
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 128
    return-object v0
.end method

.method protected getDefaultOutAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 135
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 136
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 138
    return-object v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 99
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->contentView:Landroid/view/View;

    .line 100
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->contentView:Landroid/view/View;

    .line 106
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->outAnimation:Landroid/view/animation/Animation;

    .line 118
    return-void
.end method

.method public setinAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->inAnimation:Landroid/view/animation/Animation;

    .line 114
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "CustomAlertDialog"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->inAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->getDefaultInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->inAnimation:Landroid/view/animation/Animation;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 65
    return-void
.end method
