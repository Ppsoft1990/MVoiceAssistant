.class public Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;
.super Landroid/view/ViewGroup;
.source "SmsFlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$b;,
        Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->d:I

    .line 21
    iput v0, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->e:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->d:I

    .line 21
    iput v0, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->e:I

    .line 47
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 106
    instance-of v0, p1, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;

    const/16 v1, 0x10

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;-><init>(II)V

    return-object v0
.end method

.method public getLineHeight()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->b:I

    return v0
.end method

.method public getLineWidth()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->c:I

    return v0
.end method

.method public getRealHeight()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->e:I

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->e:I

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getChildCount()I

    move-result v4

    .line 118
    .local v4, "count":I
    sub-int v10, p4, p2

    .line 119
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingLeft()I

    move-result v12

    .line 120
    .local v12, "xpos":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingTop()I

    move-result v14

    .line 121
    .local v14, "ypos":I
    move v11, v12

    .line 122
    .local v11, "xCopy":I
    move v13, v14

    .line 123
    .local v13, "yCopy":I
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 125
    .local v7, "mNoEditText":Ljava/lang/Boolean;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 126
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "viewName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 130
    .local v3, "childw":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 131
    .local v2, "childh":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;

    .line 132
    .local v6, "lp":Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;
    const-string/jumbo v15, "com.iflytek.viafly.mms.ui.SmsContactItemView"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 133
    add-int v15, v11, v3

    if-le v15, v10, :cond_0

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingLeft()I

    move-result v11

    .line 135
    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->b:I

    add-int/2addr v13, v15

    .line 137
    :cond_0
    iget v15, v6, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;->a:I

    add-int/2addr v15, v3

    add-int/2addr v11, v15

    .line 141
    :goto_1
    add-int v15, v12, v3

    if-le v15, v10, :cond_1

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingLeft()I

    move-result v12

    .line 143
    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->b:I

    add-int/2addr v14, v15

    .line 145
    :cond_1
    add-int v15, v12, v3

    add-int v16, v14, v2

    move/from16 v0, v16

    invoke-virtual {v1, v12, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 146
    iget v15, v6, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;->a:I

    add-int/2addr v15, v3

    add-int/2addr v12, v15

    .line 125
    .end local v2    # "childh":I
    .end local v3    # "childw":I
    .end local v6    # "lp":Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    .restart local v2    # "childh":I
    .restart local v3    # "childw":I
    .restart local v6    # "lp":Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;
    :cond_3
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_1

    .line 149
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childh":I
    .end local v3    # "childw":I
    .end local v6    # "lp":Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;
    .end local v9    # "viewName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v15, "SmsFlowLayout"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "on width onLayout "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getWidth()I

    move-result v15

    sub-int v8, v15, v11

    .line 151
    .local v8, "tempWidth":I
    const-string/jumbo v16, "SmsFlowLayout"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "on width realhegith"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x3

    if-le v8, v15, :cond_6

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x3

    if-le v8, v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->d:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 158
    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->b:I

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setRealHeight(I)V

    .line 164
    :goto_3
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->c:I

    .line 166
    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->d:I

    if-lez v15, :cond_5

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->f:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$b;

    invoke-interface {v15, v11}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$b;->a(I)V

    .line 168
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->d:I

    .line 171
    :cond_5
    return-void

    .line 151
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 159
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x3

    if-ge v8, v15, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->d:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 160
    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->b:I

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setRealHeight(I)V

    goto :goto_3

    .line 162
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->b:I

    add-int/2addr v15, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setRealHeight(I)V

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 52
    sget-boolean v11, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->a:Z

    if-nez v11, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 54
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingRight()I

    move-result v12

    sub-int v8, v11, v12

    .line 55
    .local v8, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingBottom()I

    move-result v12

    sub-int v4, v11, v12

    .line 56
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getChildCount()I

    move-result v3

    .line 57
    .local v3, "count":I
    const/4 v6, 0x0

    .line 59
    .local v6, "line_height":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingLeft()I

    move-result v9

    .line 60
    .local v9, "xpos":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingTop()I

    move-result v10

    .line 63
    .local v10, "ypos":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_3

    .line 64
    const/high16 v11, -0x80000000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 69
    .local v1, "childHeightMeasureSpec":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 70
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_2

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;

    .line 73
    .local v7, "lp":Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;
    const/high16 v11, -0x80000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v11, v1}, Landroid/view/View;->measure(II)V

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 75
    .local v2, "childw":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v7, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;->b:I

    add-int/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 77
    add-int v11, v9, v2

    if-le v11, v8, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getPaddingLeft()I

    move-result v9

    .line 79
    add-int/2addr v10, v6

    .line 82
    :cond_1
    iget v11, v7, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;->a:I

    add-int/2addr v11, v2

    add-int/2addr v9, v11

    .line 69
    .end local v2    # "childw":I
    .end local v7    # "lp":Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v5    # "i":I
    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childHeightMeasureSpec":I
    goto :goto_0

    .line 85
    .restart local v5    # "i":I
    :cond_4
    iput v6, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->b:I

    .line 86
    const-string/jumbo v11, "SmsFlowLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "on width onMeasure "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_6

    .line 88
    add-int v4, v10, v6

    .line 95
    :cond_5
    :goto_2
    invoke-virtual {p0, v8, v4}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setMeasuredDimension(II)V

    .line 96
    return-void

    .line 90
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_5

    .line 91
    add-int v11, v10, v6

    if-ge v11, v4, :cond_5

    .line 92
    add-int v4, v10, v6

    goto :goto_2
.end method

.method public setIsContactChange(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->d:I

    .line 204
    return-void
.end method

.method public setOnChildViewChangeListener(Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$b;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->f:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$b;

    .line 200
    return-void
.end method

.method public setRealHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->e:I

    .line 183
    return-void
.end method
