.class public Lcom/iflytek/viafly/ui/view/TranslationShareView;
.super Landroid/widget/LinearLayout;
.source "TranslationShareView.java"


# static fields
.field private static DEFAULT_MAX_TEXT_SIZE:F

.field private static DEFAULT_MIN_TEXT_SIZE:F


# instance fields
.field private lineView:Landroid/view/View;

.field private padding:I

.field private srcView:Landroid/widget/TextView;

.field private transView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/high16 v0, 0x41400000    # 12.0f

    sput v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->DEFAULT_MIN_TEXT_SIZE:F

    .line 23
    const/high16 v0, 0x42400000    # 48.0f

    sput v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->DEFAULT_MAX_TEXT_SIZE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0a0013

    const/16 v5, 0x10

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    .line 33
    const-wide/high16 v0, 0x4042000000000000L    # 36.0

    invoke-static {p1, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    .line 34
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    .line 35
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->lineView:Landroid/view/View;

    .line 36
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    iget v1, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    iget v2, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    iget v3, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    iget v4, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    iget v1, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    iget v2, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    iget v3, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    iget v4, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->addView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->lineView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->addView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->addView(Landroid/view/View;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->setOrientation(I)V

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->setBackgroundColor(I)V

    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "translation"    # Ljava/lang/String;

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    sub-int v18, v19, v20

    .line 56
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x4

    sub-int v2, v19, v20

    .line 57
    .local v2, "height":I
    if-lez v18, :cond_0

    if-gtz v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->lineView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->getContext()Landroid/content/Context;

    move-result-object v19

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->lineView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const/4 v12, 0x0

    .line 66
    .local v12, "success":Z
    const/4 v3, 0x0

    .line 67
    .local v3, "maxSrcLines":I
    const/4 v7, 0x0

    .line 68
    .local v7, "perHeight":F
    sget v13, Lcom/iflytek/viafly/ui/view/TranslationShareView;->DEFAULT_MAX_TEXT_SIZE:F

    .line 69
    .local v13, "tmSize":F
    :goto_1
    sget v19, Lcom/iflytek/viafly/ui/view/TranslationShareView;->DEFAULT_MIN_TEXT_SIZE:F

    cmpl-float v19, v13, v19

    if-lez v19, :cond_3

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 73
    .local v11, "srcWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 75
    .local v17, "transWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v18, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v11

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v20, v18, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v10, v0

    .line 76
    .local v10, "srcLines":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v18, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v17

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v20, v18, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 77
    .local v16, "transLines":I
    move v3, v10

    .line 79
    mul-int v19, v2, v10

    add-int v20, v10, v16

    div-int v8, v19, v20

    .line 80
    .local v8, "srcHeight":I
    mul-int v19, v2, v16

    add-int v20, v10, v16

    div-int v15, v19, v20

    .line 82
    .local v15, "transHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLineHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v7, v0

    .line 83
    int-to-float v0, v8

    move/from16 v19, v0

    div-float v19, v19, v7

    move/from16 v0, v19

    float-to-int v9, v0

    .line 84
    .local v9, "srcLineCount":I
    if-lt v10, v9, :cond_2

    .line 85
    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v13, v13, v19

    goto/16 :goto_1

    .line 87
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 88
    .local v5, "params1":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v19, v19, v8

    move/from16 v0, v19

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 91
    .local v6, "params2":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->padding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v19, v19, v15

    move/from16 v0, v19

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const/4 v12, 0x1

    .line 98
    .end local v5    # "params1":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "params2":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "srcHeight":I
    .end local v9    # "srcLineCount":I
    .end local v10    # "srcLines":I
    .end local v11    # "srcWidth":F
    .end local v15    # "transHeight":I
    .end local v16    # "transLines":I
    .end local v17    # "transWidth":F
    :cond_3
    if-nez v12, :cond_0

    .line 99
    int-to-float v0, v2

    move/from16 v19, v0

    div-float v19, v19, v7

    move/from16 v0, v19

    float-to-int v14, v0

    .line 100
    .local v14, "totalLines":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sub-int v20, v14, v3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->srcView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/TranslationShareView;->transView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    return-void
.end method
