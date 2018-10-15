.class public Lcom/iflytek/viafly/guide/ProtocolView;
.super Lcom/iflytek/base/skin/customView/XRelativeLayout;
.source "ProtocolView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Lcom/iflytek/base/skin/customView/XImageView;

.field private c:Lcom/iflytek/base/skin/customView/XImageView;

.field private d:Lcom/iflytek/base/skin/customView/XButton;

.field private e:Lcom/iflytek/base/skin/customView/XButton;

.field private f:Lcom/iflytek/base/skin/customView/XTextView;

.field private g:Lcom/iflytek/base/skin/customView/XImageView;

.field private h:Lcom/iflytek/base/skin/customView/XTextView;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private p:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private q:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Landroid/os/Handler;

.field private v:Lpp;

.field private w:Z

.field private x:Lju;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userType"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/iflytek/viafly/guide/ProtocolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "userType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput v2, p0, Lcom/iflytek/viafly/guide/ProtocolView;->a:I

    .line 65
    iput-boolean v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->k:Z

    .line 66
    iput-boolean v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->l:Z

    .line 75
    const-string/jumbo v0, "LastSlideView"

    iput-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView;->r:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "16010029"

    iput-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView;->s:Ljava/lang/String;

    .line 80
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/iflytek/viafly/guide/ProtocolView;->t:I

    .line 85
    iput-boolean v2, p0, Lcom/iflytek/viafly/guide/ProtocolView;->w:Z

    .line 546
    new-instance v0, Lcom/iflytek/viafly/guide/ProtocolView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/guide/ProtocolView$2;-><init>(Lcom/iflytek/viafly/guide/ProtocolView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView;->x:Lju;

    .line 95
    iput p3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->a:I

    .line 96
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/guide/ProtocolView;->setClickable(Z)V

    .line 98
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/ProtocolView;->a(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method private a(J)Landroid/view/animation/AlphaAnimation;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 540
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 541
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 542
    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/guide/ProtocolView;J)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/guide/ProtocolView;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/guide/ProtocolView;->a(J)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/guide/ProtocolView;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/guide/ProtocolView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v19, "slideViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/guide/ProtocolView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 108
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lahp;->l()Lpp;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    .line 111
    :cond_0
    new-instance v22, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 113
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const-wide/high16 v24, 0x4049000000000000L    # 50.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v23

    invoke-direct/range {v21 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v21, "topParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xa

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x15

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v22, Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    .line 120
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v15, "passBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v23

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v24

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v25

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v26

    invoke-virtual/range {v22 .. v26}, Lcom/iflytek/base/skin/customView/XButton;->setPadding(IIII)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/iflytek/base/skin/customView/XButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    const-string/jumbo v23, "\u8df3\u8fc7"

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    const/high16 v23, 0x41600000    # 14.0f

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XButton;->setTextSize(F)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    const v23, 0x7f0200b1

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XButton;->setBackgroundResource(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/guide/ProtocolView;->addView(Landroid/view/View;)V

    .line 135
    new-instance v22, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 136
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v14, "middleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/guide/ProtocolView;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f070066

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 138
    const/16 v22, 0xc

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x11

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v22, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->f:Lcom/iflytek/base/skin/customView/XTextView;

    .line 144
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v16, "playBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->f:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->f:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    const-string/jumbo v23, "\u4f60\u597d\uff0c\u6b22\u8fce\u4f7f\u7528 \u54aa\u5495\u7075\u7280"

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->f:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    const-string/jumbo v23, "#FF313955"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->f:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    const/high16 v23, 0x41800000    # 16.0f

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(F)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->f:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/high16 v26, 0x403e000000000000L    # 30.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v26

    invoke-virtual/range {v22 .. v26}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->f:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 155
    new-instance v22, Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    const v23, 0x7f020208

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/guide/ProtocolView;->addView(Landroid/view/View;)V

    .line 175
    new-instance v22, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 177
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v6, "bottomParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xc

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    .local v9, "desArea":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v10, "desParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4036000000000000L    # 22.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 191
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v22

    const-string/jumbo v23, "image.guide_check_bg"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v22 .. v24}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v22

    const-string/jumbo v23, "image.guide_uncheck_bg"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v22 .. v24}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->j:Landroid/graphics/drawable/Drawable;

    .line 199
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v8, "checkParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/high16 v24, 0x4022000000000000L    # 9.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 204
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    .local v17, "readArea":Landroid/widget/LinearLayout;
    const/16 v22, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 207
    new-instance v22, Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/iflytek/base/skin/customView/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v23

    const-string/jumbo v24, "image.guide_check_bg"

    sget-object v25, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 211
    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 210
    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    new-instance v18, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 213
    .local v18, "readTextLabel":Lcom/iflytek/base/skin/customView/XTextView;
    const v22, -0x948c74

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 214
    const-string/jumbo v22, "\u6211\u5df2\u67e5\u770b\u5e76\u540c\u610f"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance v22, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    const v23, -0x514424

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    const-string/jumbo v23, "\u7528\u6237\u534f\u8bae"

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/base/skin/customView/XTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/base/skin/customView/XTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 230
    .local v11, "downArea":Landroid/widget/LinearLayout;
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v12, "downParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    const/16 v22, 0x10

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 236
    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->a:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 237
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    :cond_1
    new-instance v22, Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/iflytek/base/skin/customView/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    invoke-static/range {p1 .. p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lhl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "channelId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->s:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 245
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->k:Z

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->j:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :goto_0
    new-instance v13, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 252
    .local v13, "downText":Lcom/iflytek/base/skin/customView/XTextView;
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 253
    const-string/jumbo v22, "wifi\u7f51\u7edc\u4e0b\u81ea\u52a8\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 262
    new-instance v22, Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    .line 263
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    .local v20, "startBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/high16 v26, 0x403e000000000000L    # 30.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v25

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    const-string/jumbo v23, "\u5f00\u59cb\u4e2a\u6027\u5316\u5b9a\u5236"

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    const/high16 v23, 0x41900000    # 18.0f

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XButton;->setTextSize(F)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    const v23, 0x7f0200b2

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XButton;->setBackgroundResource(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/guide/ProtocolView;->addView(Landroid/view/View;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    new-instance v22, Lcom/iflytek/viafly/guide/ProtocolView$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/guide/ProtocolView$1;-><init>(Lcom/iflytek/viafly/guide/ProtocolView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/guide/ProtocolView;->u:Landroid/os/Handler;

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/guide/ProtocolView;->d()V

    .line 306
    return-void

    .line 248
    .end local v13    # "downText":Lcom/iflytek/base/skin/customView/XTextView;
    .end local v20    # "startBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/guide/ProtocolView;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/guide/ProtocolView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    const-string/jumbo v1, "\u4f60\u597d\uff0c\u6b22\u8fce\u4f7f\u7528 \u54aa\u5495\u7075\u7280"

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->x:Lju;

    invoke-virtual {v0, v1, v2, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 310
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/ProtocolView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 517
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 518
    const-string/jumbo v3, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const-string/jumbo v2, "http://xz.voicecloud.cn/resources/lxAbout/agreement.html"

    .line 521
    .local v2, "openUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 531
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserParams;

    invoke-direct {v0}, Lcom/iflytek/viafly/browser/BrowserParams;-><init>()V

    .line 532
    .local v0, "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    iput-object v2, v0, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 534
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v3

    invoke-virtual {v3, v0}, Lqh;->a(Lcom/iflytek/viafly/browser/BrowserParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView;->u:Landroid/os/Handler;

    const/4 v1, 0x2

    iget v2, p0, Lcom/iflytek/viafly/guide/ProtocolView;->t:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 334
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->r:Ljava/lang/String;

    const-string/jumbo v2, "dismiss()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/ProtocolView;->recyleResource()V

    .line 341
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->u:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->u:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 353
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->u:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/ProtocolView;->removeAllViews()V

    .line 361
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-eqz v1, :cond_3

    .line 362
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->recyleResource()V

    .line 363
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->clearAnimation()V

    .line 364
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->removeAllViews()V

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-eqz v1, :cond_4

    .line 368
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->recyleResource()V

    .line 369
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->clearAnimation()V

    .line 370
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->removeAllViews()V

    .line 371
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->p:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-eqz v1, :cond_5

    .line 374
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->recyleResource()V

    .line 375
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->clearAnimation()V

    .line 376
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->removeAllViews()V

    .line 377
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->q:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 387
    :cond_5
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v1, :cond_6

    .line 388
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XImageView;->recyleResource()V

    .line 389
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    .line 393
    :cond_6
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v1, :cond_7

    .line 394
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XImageView;->recyleResource()V

    .line 395
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 400
    :cond_7
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    if-eqz v1, :cond_8

    .line 401
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XButton;->recyleResource()V

    .line 402
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    .line 405
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->n:Landroid/view/View$OnClickListener;

    .line 407
    :cond_8
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    if-eqz v1, :cond_9

    .line 408
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XButton;->recyleResource()V

    .line 409
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    .line 412
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->m:Landroid/view/View$OnClickListener;

    .line 415
    :cond_9
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v1, :cond_a

    .line 416
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->recyleResource()V

    .line 417
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    .line 420
    :cond_a
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v1, :cond_b

    .line 421
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XImageView;->recyleResource()V

    .line 422
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    .line 426
    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    .line 427
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->j:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    :goto_1
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->r:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 429
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->r:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 435
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    if-ne p1, v3, :cond_4

    .line 436
    iget-boolean v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->l:Z

    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->n:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->n:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    invoke-virtual {v1, v4}, Lpp;->d(Lju;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    invoke-virtual {v1, v4}, Lpp;->c(Lju;)V

    .line 447
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/ProtocolView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90043"

    invoke-virtual {v1, v2, v4}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 448
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->e:Lcom/iflytek/base/skin/customView/XButton;

    if-ne p1, v3, :cond_7

    .line 449
    iget-boolean v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->l:Z

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->m:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_5

    .line 454
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->m:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 457
    :cond_5
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    invoke-virtual {v1, v4}, Lpp;->d(Lju;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 458
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    invoke-virtual {v1, v4}, Lpp;->c(Lju;)V

    .line 461
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "main"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/ProtocolView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90042"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 464
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne p1, v3, :cond_b

    .line 465
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_8

    .line 466
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.guide_read_check"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    .line 468
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.guide_read_uncheck"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->j:Landroid/graphics/drawable/Drawable;

    .line 471
    :cond_8
    iget-boolean v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->l:Z

    if-eqz v3, :cond_9

    .line 472
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v4, p0, Lcom/iflytek/viafly/guide/ProtocolView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    const v4, 0x7f0200b3

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XButton;->setBackgroundResource(I)V

    .line 478
    :goto_1
    iget-boolean v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->l:Z

    if-nez v3, :cond_a

    :goto_2
    iput-boolean v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->l:Z

    goto/16 :goto_0

    .line 475
    :cond_9
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v4, p0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->d:Lcom/iflytek/base/skin/customView/XButton;

    const v4, 0x7f0200b2

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XButton;->setBackgroundResource(I)V

    goto :goto_1

    :cond_a
    move v1, v2

    .line 478
    goto :goto_2

    .line 479
    :cond_b
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne p1, v3, :cond_f

    .line 480
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v3, :cond_0

    .line 481
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_c

    .line 482
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.guide_read_check"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    .line 484
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.guide_read_uncheck"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->j:Landroid/graphics/drawable/Drawable;

    .line 487
    :cond_c
    iget-boolean v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->k:Z

    if-eqz v3, :cond_d

    .line 488
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v4, p0, Lcom/iflytek/viafly/guide/ProtocolView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :goto_3
    iget-boolean v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->k:Z

    if-nez v3, :cond_e

    :goto_4
    iput-boolean v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->k:Z

    goto/16 :goto_0

    .line 490
    :cond_d
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v4, p0, Lcom/iflytek/viafly/guide/ProtocolView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_e
    move v1, v2

    .line 492
    goto :goto_4

    .line 494
    :cond_f
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    if-ne p1, v3, :cond_11

    .line 496
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    invoke-virtual {v1, v4}, Lpp;->d(Lju;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 497
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    invoke-virtual {v1, v4}, Lpp;->c(Lju;)V

    .line 499
    :cond_10
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/ProtocolView;->e()V

    goto/16 :goto_0

    .line 500
    :cond_11
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne p1, v3, :cond_0

    .line 502
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    invoke-virtual {v3, v4}, Lpp;->d(Lju;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 503
    iget-object v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->v:Lpp;

    invoke-virtual {v3, v4}, Lpp;->c(Lju;)V

    .line 505
    :cond_12
    iget-boolean v3, p0, Lcom/iflytek/viafly/guide/ProtocolView;->w:Z

    if-nez v3, :cond_13

    :goto_5
    iput-boolean v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->w:Z

    .line 506
    iget-boolean v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->w:Z

    if-eqz v1, :cond_14

    .line 507
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    const v2, 0x7f020209

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_13
    move v1, v2

    .line 505
    goto :goto_5

    .line 509
    :cond_14
    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    const v2, 0x7f020208

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public setCustomListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->n:Landroid/view/View$OnClickListener;

    .line 318
    return-void
.end method

.method public setEnterListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/iflytek/viafly/guide/ProtocolView;->m:Landroid/view/View$OnClickListener;

    .line 314
    return-void
.end method
