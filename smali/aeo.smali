.class public Laeo;
.super Ljava/lang/Object;
.source "LatestContactItemViewDelegate.java"

# interfaces
.implements Ladv;
.implements Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;",
        "Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;"
    }
.end annotation


# instance fields
.field private a:Lacx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f03005f

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 41
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 44
    move-object/from16 v0, p2

    instance-of v9, v0, Laep;

    if-eqz v9, :cond_0

    move-object/from16 v27, p2

    .line 45
    check-cast v27, Laep;

    .line 46
    .local v27, "latestContactMessage":Laep;
    move-object/from16 v0, v27

    iget-object v9, v0, Laep;->a:Lacx;

    move-object/from16 v0, p0

    iput-object v9, v0, Laeo;->a:Lacx;

    .line 48
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    if-nez v9, :cond_1

    .line 135
    .end local v27    # "latestContactMessage":Laep;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v27    # "latestContactMessage":Laep;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v24

    .line 54
    .local v24, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/view/ViewGroup;

    .line 57
    .local v40, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v40 .. v40}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v5, v9, Lacx;->c:Ljava/lang/String;

    .line 62
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v15, v9, Lacx;->d:Ljava/lang/String;

    .line 63
    .local v15, "tel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-boolean v13, v9, Lacx;->e:Z

    .line 64
    .local v13, "mobile":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v0, v9, Lacx;->f:Lorg/json/JSONArray;

    move-object/from16 v18, v0

    .line 65
    .local v18, "location":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v0, v9, Lacx;->g:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 66
    .local v37, "time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v7, v9, Lacx;->h:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 67
    .local v7, "defaultSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget v0, v9, Lacx;->i:I

    move/from16 v39, v0

    .line 68
    .local v39, "type":I
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v0, v9, Lacx;->j:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 69
    .local v23, "iconURL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-boolean v0, v9, Lacx;->k:Z

    move/from16 v26, v0

    .line 70
    .local v26, "isScrollToPreviousElement":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v10, v9, Lacx;->l:Ljava/lang/String;

    .line 71
    .local v10, "focus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-boolean v0, v9, Lacx;->m:Z

    move/from16 v35, v0

    .line 72
    .local v35, "showSimName":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v8, v9, Lacx;->n:Lorg/json/JSONArray;

    .line 73
    .local v8, "simNameList":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v0, v9, Lacx;->o:Lorg/json/JSONArray;

    move-object/from16 v30, v0

    .line 74
    .local v30, "mulitNumbers":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-object v0, v9, Lacx;->p:Lorg/json/JSONArray;

    move-object/from16 v20, v0

    .line 75
    .local v20, "defaultSimCards":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v9, v0, Laeo;->a:Lacx;

    iget-boolean v0, v9, Lacx;->q:Z

    move/from16 v25, v0

    .line 77
    .local v25, "isDouble":Z
    new-instance v28, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, v28

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    .local v28, "layout":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v12, -0x2

    move-object/from16 v0, v33

    invoke-direct {v0, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v33, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v21

    .line 83
    .local v21, "horPadding":I
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    const-wide/high16 v16, 0x402c000000000000L    # 14.0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v38

    .line 85
    .local v38, "topPadding":I
    const/4 v9, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v21

    move/from16 v2, v38

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 86
    move-object/from16 v0, v40

    move-object/from16 v1, v28

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    const-wide/high16 v16, 0x402c000000000000L    # 14.0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v29

    .line 89
    .local v29, "leftPadding":I
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    const-wide/high16 v16, 0x4034000000000000L    # 20.0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v34

    .line 90
    .local v34, "rightPadding":I
    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v34

    invoke-virtual {v0, v1, v9, v2, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 91
    const v9, 0x7f0203f2

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 93
    if-eqz v30, :cond_4

    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v12, 0x1

    if-le v9, v12, :cond_4

    .line 95
    new-instance v31, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, v31

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    .local v31, "nameLayout":Landroid/widget/LinearLayout;
    new-instance v32, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, v32

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v32, "nameText":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    const-wide/high16 v16, 0x4032000000000000L    # 18.0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v36

    .line 100
    .local v36, "textPadding":I
    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v36

    move/from16 v2, v36

    invoke-virtual {v0, v9, v1, v12, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    const-string/jumbo v9, "#212325"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    const/4 v9, 0x2

    const/high16 v12, 0x41800000    # 16.0f

    move-object/from16 v0, v32

    invoke-virtual {v0, v9, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v9

    move/from16 v0, v22

    if-ge v0, v9, :cond_0

    .line 109
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "number":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v11, 0x1

    .line 113
    .local v11, "isdefault":Z
    :goto_2
    new-instance v4, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v4, "latestContactView":Lcom/iflytek/viafly/dialogmode/call/LatestContactView;
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-virtual/range {v4 .. v11}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->setItemClickEvent(Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;)V

    .line 118
    if-eqz v11, :cond_3

    .line 119
    const/4 v9, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 107
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 111
    .end local v4    # "latestContactView":Lcom/iflytek/viafly/dialogmode/call/LatestContactView;
    .end local v11    # "isdefault":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 121
    .restart local v4    # "latestContactView":Lcom/iflytek/viafly/dialogmode/call/LatestContactView;
    .restart local v11    # "isdefault":Z
    :cond_3
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 127
    .end local v4    # "latestContactView":Lcom/iflytek/viafly/dialogmode/call/LatestContactView;
    .end local v6    # "number":Ljava/lang/String;
    .end local v11    # "isdefault":Z
    .end local v22    # "i":I
    .end local v31    # "nameLayout":Landroid/widget/LinearLayout;
    .end local v32    # "nameText":Landroid/widget/TextView;
    .end local v36    # "textPadding":I
    :cond_4
    new-instance v4, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;-><init>(Landroid/content/Context;)V

    .restart local v4    # "latestContactView":Lcom/iflytek/viafly/dialogmode/call/LatestContactView;
    move-object v12, v4

    move-object v14, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v10

    .line 128
    invoke-virtual/range {v12 .. v19}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(ZLjava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->setItemClickEvent(Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laeo;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 140
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 145
    .local v0, "array":Lorg/json/JSONArray;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p2, v2

    .line 146
    .local v1, "ss":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "ss":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Laeo;->a:Lacx;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lacx;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 149
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 39
    instance-of v0, p1, Laep;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laeo;->a(Laee;)Z

    move-result v0

    return v0
.end method
