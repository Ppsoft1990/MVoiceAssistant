.class public Lafv;
.super Ljava/lang/Object;
.source "LatestSmsItemViewDelegate.java"

# interfaces
.implements Ladv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lacy;

.field private b:Lzw;

.field private c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lafv;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lafv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lafv;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lafv;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lafv;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lafv;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lafv;->b:Lzw;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lzw;

    iget-object v1, p0, Lafv;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lafv;->b:Lzw;

    .line 216
    :cond_0
    iget-object v0, p0, Lafv;->b:Lzw;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzw;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 217
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 204
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 205
    .local v0, "array":Lorg/json/JSONArray;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p2, v2

    .line 206
    .local v1, "ss":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "ss":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lafv;->a:Lacy;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lacy;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 209
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f030062

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 32
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 47
    move-object/from16 v0, p2

    instance-of v0, v0, Lafw;

    move/from16 v30, v0

    if-eqz v30, :cond_0

    move-object/from16 v11, p2

    .line 48
    check-cast v11, Lafw;

    .line 49
    .local v11, "latestSmsMessage":Lafw;
    iget-object v0, v11, Lafw;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lafv;->a:Lacy;

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 196
    .end local v11    # "latestSmsMessage":Lafw;
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local v11    # "latestSmsMessage":Lafw;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lafv;->c:Landroid/view/ViewGroup;

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b02e2

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 58
    .local v16, "nameText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b02e6

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 59
    .local v17, "numberText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b02e8

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 60
    .local v3, "dialBtn":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b02e7

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 61
    .local v25, "smsBtn":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b0307

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 62
    .local v12, "layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b0308

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 63
    .local v19, "shareLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b0309

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 64
    .local v22, "shareWX":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b030d

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 65
    .local v23, "shareWeibo":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b030b

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 66
    .local v21, "shareTimeline":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b030f

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 67
    .local v20, "shareQzone":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b030a

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    .line 68
    .local v29, "wxImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b030c

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 69
    .local v27, "timelineImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b030e

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 70
    .local v28, "weiboImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->c:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const v31, 0x7f0b0310

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 72
    .local v18, "qzoneImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v13, v0, Lacy;->d:Ljava/lang/String;

    .line 73
    .local v13, "mLocation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v15, v0, Lacy;->e:Ljava/lang/String;

    .line 74
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lacy;->f:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 75
    .local v26, "tel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v14, v0, Lacy;->g:Z

    .line 76
    .local v14, "mobile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v10, v0, Lacy;->k:Z

    .line 77
    .local v10, "isReceiverCardFlag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v6, v0, Lacy;->l:Z

    .line 78
    .local v6, "isHaveQZoneFlag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v7, v0, Lacy;->m:Z

    .line 79
    .local v7, "isHaveWeChatFlag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v8, v0, Lacy;->n:Z

    .line 80
    .local v8, "isHaveWeiboFlag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lacy;->o:Z

    .line 81
    .local v5, "isHaveFriendCircleFlag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v9, v0, Lacy;->p:Z

    .line 82
    .local v9, "isNotShowAgain":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lafv;->a:Lacy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v4, v0, Lacy;->r:Ljava/lang/String;

    .line 85
    .local v4, "focus":Ljava/lang/String;
    const-string/jumbo v24, ""

    .line 86
    .local v24, "showNum":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 87
    invoke-static/range {v26 .. v26}, Lazk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 92
    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 93
    const-string/jumbo v30, "\u672a\u77e5"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_9

    .line 94
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 100
    :cond_2
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v30, Lafv$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v15}, Lafv$1;-><init>(Lafv;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v30, Lafv$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v4, v2, v15}, Lafv$2;-><init>(Lafv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    if-eqz v10, :cond_e

    if-nez v7, :cond_3

    if-nez v5, :cond_3

    if-nez v8, :cond_3

    if-eqz v6, :cond_e

    :cond_3
    if-nez v9, :cond_e

    .line 136
    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    if-eqz v7, :cond_a

    const v30, 0x7f0201d3

    :goto_3
    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    if-eqz v5, :cond_b

    const v30, 0x7f0201cb

    :goto_4
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    if-eqz v8, :cond_c

    const v30, 0x7f0201cf

    :goto_5
    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    if-eqz v6, :cond_d

    const v30, 0x7f0201c7

    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    if-eqz v7, :cond_4

    .line 145
    new-instance v30, Lafv$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lafv$3;-><init>(Lafv;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_4
    if-eqz v5, :cond_5

    .line 154
    new-instance v30, Lafv$4;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lafv$4;-><init>(Lafv;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_5
    if-eqz v8, :cond_6

    .line 163
    new-instance v30, Lafv$5;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lafv$5;-><init>(Lafv;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_6
    if-eqz v6, :cond_7

    .line 172
    new-instance v30, Lafv$6;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lafv$6;-><init>(Lafv;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_7
    :goto_7
    new-instance v30, Lafv$7;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v15}, Lafv$7;-><init>(Lafv;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 89
    :cond_8
    move-object/from16 v24, v26

    goto/16 :goto_1

    .line 96
    :cond_9
    move-object/from16 v24, v13

    goto/16 :goto_2

    .line 138
    :cond_a
    const v30, 0x7f0201d4

    goto/16 :goto_3

    .line 139
    :cond_b
    const v30, 0x7f0201cc

    goto/16 :goto_4

    .line 140
    :cond_c
    const v30, 0x7f0201d0

    goto/16 :goto_5

    .line 141
    :cond_d
    const v30, 0x7f0201c8

    goto :goto_6

    .line 181
    :cond_e
    const/16 v30, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Lafv;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 201
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 42
    instance-of v0, p1, Lafw;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 27
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Lafv;->a(Laee;)Z

    move-result v0

    return v0
.end method
