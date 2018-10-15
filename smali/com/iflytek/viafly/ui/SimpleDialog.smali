.class public Lcom/iflytek/viafly/ui/SimpleDialog;
.super Landroid/app/Dialog;
.source "SimpleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
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
    .line 46
    const v0, 0x7f08001d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mIsCanceled:Z

    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mIsCanceled:Z

    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/SimpleDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/SimpleDialog;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/SimpleDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->outAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$101(Lcom/iflytek/viafly/ui/SimpleDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/SimpleDialog;

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private getDefaultInAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 137
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 141
    .local v0, "inAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 143
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 144
    return-object v0
.end method

.method private getDefaultOutAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 155
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 156
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 157
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/SimpleDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string/jumbo v0, "SimpleDialog"

    const-string/jumbo v1, "dismiss()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->outAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/SimpleDialog;->getDefaultOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->outAnimation:Landroid/view/animation/Animation;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->outAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/iflytek/viafly/ui/SimpleDialog$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/SimpleDialog$1;-><init>(Lcom/iflytek/viafly/ui/SimpleDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 162
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mIsCanceled:Z

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mIsCanceled:Z

    .line 166
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 112
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->contentView:Landroid/view/View;

    .line 113
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->contentView:Landroid/view/View;

    .line 119
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->outAnimation:Landroid/view/animation/Animation;

    .line 131
    return-void
.end method

.method public setinAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->inAnimation:Landroid/view/animation/Animation;

    .line 127
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 58
    const-string/jumbo v1, "SimpleDialog"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 62
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->inAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/SimpleDialog;->getDefaultInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->inAnimation:Landroid/view/animation/Animation;

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->contentView:Landroid/view/View;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 69
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog;->mIsCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SimpleDialog"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
