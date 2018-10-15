.class public abstract Lcom/iflytek/viafly/ui/dialog/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomDialog"


# instance fields
.field private contentView:Landroid/view/View;

.field private inAnimation:Landroid/view/animation/Animation;

.field protected mContext:Landroid/content/Context;

.field private mIsCanceled:Z

.field private outAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    const v0, 0x7f08001d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mIsCanceled:Z

    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->initAnimation()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mIsCanceled:Z

    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->initAnimation()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/dialog/CustomDialog;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/CustomDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->outAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$101(Lcom/iflytek/viafly/ui/dialog/CustomDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/CustomDialog;

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private getDefaultInAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 163
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 167
    .local v0, "inAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 169
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 170
    return-object v0
.end method

.method private getDefaultOutAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 177
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 181
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 183
    return-object v0
.end method

.method private initAnimation()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->getDefaultInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->inAnimation:Landroid/view/animation/Animation;

    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->getDefaultOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->outAnimation:Landroid/view/animation/Animation;

    .line 54
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string/jumbo v0, "CustomDialog"

    const-string/jumbo v1, "dismiss()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->outAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->outAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/iflytek/viafly/ui/dialog/CustomDialog$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog$1;-><init>(Lcom/iflytek/viafly/ui/dialog/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 125
    const-string/jumbo v1, "CustomDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyDown : mIsCanceled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mIsCanceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mIsCanceled:Z

    if-eqz v1, :cond_0

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 130
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mIsCanceled:Z

    .line 132
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 138
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->contentView:Landroid/view/View;

    .line 139
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->contentView:Landroid/view/View;

    .line 145
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->outAnimation:Landroid/view/animation/Animation;

    .line 157
    return-void
.end method

.method public setinAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->inAnimation:Landroid/view/animation/Animation;

    .line 153
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 58
    const-string/jumbo v1, "CustomDialog"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 62
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->inAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->contentView:Landroid/view/View;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->mIsCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CustomDialog"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public show(III)V
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 79
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_0

    .line 80
    const/16 p1, 0x33

    .line 82
    :cond_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 83
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 84
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 86
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->show()V

    .line 88
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method
