.class public Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ScheduleRingToneItem.java"


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XTextView;

.field private b:Lcom/iflytek/base/skin/customView/XImageView;

.field private c:Z

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x13

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 56
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->setOrientation(I)V

    .line 57
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v4, "layoutContent":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    .line 61
    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-direct {v0, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "contentLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4, v0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const v6, 0x7f0203e3

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 67
    new-instance v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .local v2, "imageContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v3, "imageContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {v2, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 71
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    invoke-virtual {v2, v6, v11, v7, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setPadding(IIII)V

    .line 72
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v6, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v6, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->b:Lcom/iflytek/base/skin/customView/XImageView;

    .line 74
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v7, "image.r_repeat_setting_selected_mark"

    sget-object v8, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 75
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 77
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v6

    const-string/jumbo v7, "40"

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinWidth(Ljava/lang/String;)V

    .line 78
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v6

    const-string/jumbo v7, "40"

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 80
    new-instance v6, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v6, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a:Lcom/iflytek/base/skin/customView/XTextView;

    .line 81
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XTextView;->setSingleLine()V

    .line 82
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v7, "END"

    invoke-static {v7}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 83
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v6, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 84
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v7, "schedule_tone_setting_content"

    sget-object v8, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 85
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v5, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v6, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->d:Landroid/view/View;

    .line 90
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x2

    invoke-direct {v1, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v1, "dividerParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->d:Landroid/view/View;

    const-string/jumbo v7, "#e1e1e1"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->d:Landroid/view/View;

    invoke-virtual {p0, v6, v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->c:Z

    .line 110
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->c:Z

    .line 119
    return-void
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->c:Z

    return v0
.end method

.method public setDividerLine(Z)V
    .locals 6
    .param p1, "isLongLine"    # Z

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->d:Landroid/view/View;

    if-nez v2, :cond_0

    .line 144
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .local v0, "dividerParam":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 136
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 137
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 143
    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->d:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .line 140
    .local v1, "marginPx":I
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 141
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method
