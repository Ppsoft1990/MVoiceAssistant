.class public Lcom/iflytek/viafly/ui/dialog/ListDialog;
.super Landroid/app/Dialog;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;,
        Lcom/iflytek/viafly/ui/dialog/ListDialog$OnClickListener;,
        Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListDialog"


# instance fields
.field private contentView:Landroid/view/View;

.field private inAnimation:Landroid/view/animation/Animation;

.field private outAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const v0, 0x7f08000b

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/dialog/ListDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method static synthetic access$001(Lcom/iflytek/viafly/ui/dialog/ListDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/ListDialog;

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "ListDialog"

    const-string/jumbo v1, "dismiss()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->outAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->getDefaultOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->outAnimation:Landroid/view/animation/Animation;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->outAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/iflytek/viafly/ui/dialog/ListDialog$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/dialog/ListDialog$1;-><init>(Lcom/iflytek/viafly/ui/dialog/ListDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method protected getDefaultInAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 117
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 119
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 120
    return-object v0
.end method

.method protected getDefaultOutAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 128
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 129
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 130
    return-object v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 91
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->contentView:Landroid/view/View;

    .line 92
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->contentView:Landroid/view/View;

    .line 98
    return-void
.end method

.method protected setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->outAnimation:Landroid/view/animation/Animation;

    .line 110
    return-void
.end method

.method protected setinAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->inAnimation:Landroid/view/animation/Animation;

    .line 106
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "ListDialog"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->inAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->getDefaultInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->inAnimation:Landroid/view/animation/Animation;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 57
    return-void
.end method
