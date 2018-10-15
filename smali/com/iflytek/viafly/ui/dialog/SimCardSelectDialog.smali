.class public final Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;
.super Landroid/app/Dialog;
.source "SimCardSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimCardSelectDialog"


# instance fields
.field private card1Indicator:Landroid/view/View;

.field private card1Panel:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private card1Text:Landroid/widget/TextView;

.field private card2Indicator:Landroid/view/View;

.field private card2Panel:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private card2Text:Landroid/widget/TextView;

.field private contentView:Landroid/view/View;

.field private isDismissing:Z

.field private isShowing:Z

.field private mSimCardSelectListener:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;

.field private visibleView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const v0, 0x7f08000a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->setWindowBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$101(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$202(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->isDismissing:Z

    return p1
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->isShowing:Z

    return p1
.end method

.method private getDefaultInAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 227
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 231
    .local v0, "inAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 233
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 234
    return-object v0
.end method

.method private getDefaultOutAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 241
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 245
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 247
    return-object v0
.end method

.method private setWindowBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 252
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 192
    const-string/jumbo v1, "SimCardSelectDialog"

    const-string/jumbo v2, "dismiss()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->isDismissing:Z

    if-nez v1, :cond_0

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->isDismissing:Z

    .line 197
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->getDefaultOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 198
    .local v0, "outAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$2;-><init>(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 219
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->visibleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    .end local v0    # "outAnimation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card1Indicator:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    .line 87
    .local v0, "isInCard1View":Z
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card2Indicator:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    .line 88
    .local v1, "isInCard2View":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 90
    :pswitch_1
    if-eqz v0, :cond_1

    .line 91
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card1Panel:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v3, "image.sim_card_select_dialog_card1_pressed"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 92
    :cond_1
    if-eqz v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card2Panel:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v3, "image.sim_card_select_dialog_card2_pressed"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card1Panel:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v3, "image.sim_card_select_dialog_card1_normal"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 99
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card2Panel:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v3, "image.sim_card_select_dialog_card2_normal"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 100
    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->dismiss()V

    .line 102
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->mSimCardSelectListener:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->mSimCardSelectListener:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;->onSelect(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 105
    :cond_2
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->dismiss()V

    .line 107
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->mSimCardSelectListener:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->mSimCardSelectListener:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;->onSelect(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->isShowing:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->dismiss()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f0b0671
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string/jumbo v2, "SimCardSelectDialog"

    const-string/jumbo v3, "onCreate()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03011f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    .line 67
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    const v3, 0x7f0b066a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->visibleView:Landroid/widget/LinearLayout;

    .line 68
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    const v3, 0x7f0b066b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card1Panel:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 69
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    const v3, 0x7f0b066e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card2Panel:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 70
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    const v3, 0x7f0b066c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card1Indicator:Landroid/view/View;

    .line 71
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    const v3, 0x7f0b066f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card2Indicator:Landroid/view/View;

    .line 72
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    const v3, 0x7f0b066d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card1Text:Landroid/widget/TextView;

    .line 73
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    const v3, 0x7f0b0670

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card2Text:Landroid/widget/TextView;

    .line 74
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    const v3, 0x7f0b0671

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->setContentView(Landroid/view/View;)V

    .line 78
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v1

    .line 79
    .local v1, "simInfoHelper":Lhy;
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card1Text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5361\u4e00\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v4}, Lhy;->e(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->card2Text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5361\u4e8c\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v4}, Lhy;->e(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public setSimCardSelectListener(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;)V
    .locals 0
    .param p1, "simCardSelectListener"    # Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->mSimCardSelectListener:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;

    .line 260
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 158
    const-string/jumbo v1, "SimCardSelectDialog"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 161
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->contentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const-string/jumbo v1, "#5c000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->setWindowBackgroundColor(I)V

    .line 164
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->getDefaultInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 165
    .local v0, "inAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$1;-><init>(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->visibleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    return-void
.end method

.method public show(III)V
    .locals 5
    .param p1, "gravity"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    const/4 v4, 0x1

    .line 138
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    iput-boolean v4, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->isShowing:Z

    .line 140
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->setCancelable(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->show()V

    .line 144
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhl;->e(Landroid/content/Context;)I

    move-result v1

    .line 145
    .local v1, "screenHeight":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 146
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 147
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 148
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 149
    add-int v3, v1, p3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 150
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 151
    invoke-static {v2}, Lcom/iflytek/yd/util/UIUtil;->getStatusBarHeight(Landroid/view/Window;)I

    move-result v3

    sub-int v3, v1, v3

    add-int/2addr v3, p3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 152
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 154
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "screenHeight":I
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 4
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 131
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 133
    .local v0, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 134
    const/16 v1, 0x53

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    neg-int v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->show(III)V

    .line 135
    return-void
.end method
