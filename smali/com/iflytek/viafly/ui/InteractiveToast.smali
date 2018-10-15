.class public Lcom/iflytek/viafly/ui/InteractiveToast;
.super Ljava/lang/Object;
.source "InteractiveToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/InteractiveToast$Builder;,
        Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;
    }
.end annotation


# static fields
.field private static final ID_TEXTVIEW_TOAST_TIP:I = 0x5f111111

.field private static final TAG:Ljava/lang/String; = "InteractiveToast"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    const-wide v2, 0x4046800000000000L    # 45.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/InteractiveToast;->getLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private static getLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastTip"    # Ljava/lang/String;
    .param p2, "btnContent"    # Ljava/lang/String;
    .param p3, "onClickListener"    # Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

    .prologue
    const/high16 v7, 0x41600000    # 14.0f

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 48
    new-instance v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, "contentView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 51
    invoke-virtual {v1, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 52
    const-string/jumbo v3, "image.ic_mapply_popup_bg"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 53
    invoke-static {p0, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-static {p0, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v1, v3, v6, v4, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setPadding(IIII)V

    .line 55
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v2, "txtViewToastTip":Landroid/widget/TextView;
    const v3, 0x5f111111

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 57
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 61
    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "btnAction":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const-string/jumbo v3, "#2ca0fd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 68
    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance v3, Lcom/iflytek/viafly/ui/InteractiveToast$1;

    invoke-direct {v3, p3}, Lcom/iflytek/viafly/ui/InteractiveToast$1;-><init>(Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-object v1
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 122
    const-string/jumbo v1, "InteractiveToast"

    const-string/jumbo v2, "dismiss"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 124
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 130
    :cond_1
    iput-object v3, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mContext:Landroid/content/Context;

    .line 131
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 84
    .local v0, "width":I
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 85
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 87
    .end local v0    # "width":I
    :cond_0
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    .line 94
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 95
    const-string/jumbo v1, "InteractiveToast"

    const-string/jumbo v2, "show"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 98
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {v4}, Lhl;->d(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 102
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mContext:Landroid/content/Context;

    const-wide v8, 0x4052c00000000000L    # 75.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    sub-int/2addr v5, v6

    .line 97
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "InteractiveToast"

    const-string/jumbo v2, "show toast failed"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public show(III)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    const-string/jumbo v1, "InteractiveToast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show | gravity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/InteractiveToast;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "InteractiveToast"

    const-string/jumbo v2, "show toast failed"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
