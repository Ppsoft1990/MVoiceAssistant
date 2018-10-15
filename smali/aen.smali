.class public Laen;
.super Ljava/lang/Object;
.source "ContactMessageItemViewDelegate.java"

# interfaces
.implements Ladv;
.implements Lcom/iflytek/viafly/dialogmode/call/ContactView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;",
        "Lcom/iflytek/viafly/dialogmode/call/ContactView$a;"
    }
.end annotation


# instance fields
.field private a:Ladb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Laen;)Ladb;
    .locals 1
    .param p0, "x0"    # Laen;

    .prologue
    .line 25
    iget-object v0, p0, Laen;->a:Ladb;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f03005f

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 30
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 41
    move-object/from16 v0, p2

    instance-of v7, v0, Laem;

    if-eqz v7, :cond_0

    move-object/from16 v24, p2

    .line 42
    check-cast v24, Laem;

    .line 43
    .local v24, "phoneListMessage":Laem;
    move-object/from16 v0, v24

    iget-object v7, v0, Laem;->a:Ladb;

    move-object/from16 v0, p0

    iput-object v7, v0, Laen;->a:Ladb;

    .line 45
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    if-nez v7, :cond_1

    .line 108
    .end local v24    # "phoneListMessage":Laem;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v24    # "phoneListMessage":Laem;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    .line 52
    .local v26, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 54
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v5, "layout":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    move-object/from16 v0, v23

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v23, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v7

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v21

    .line 60
    .local v21, "horPadding":I
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v7

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v25

    .line 62
    .local v25, "topPadding":I
    const/4 v7, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v25

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 63
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const v7, 0x7f0203f2

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 69
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    iget-object v0, v7, Ladb;->a:Ljava/util/List;

    move-object/from16 v19, v0

    .line 70
    .local v19, "contactNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    iget-object v0, v7, Ladb;->c:Ljava/util/List;

    move-object/from16 v20, v0

    .line 72
    .local v20, "contactNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    iget-boolean v11, v7, Ladb;->d:Z

    .line 74
    .local v11, "isDoubleSim":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    iget-object v0, v7, Ladb;->e:Ljava/util/List;

    move-object/from16 v18, v0

    .line 75
    .local v18, "contactAllSimLists":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONArray;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    iget-object v0, v7, Ladb;->f:Ljava/util/List;

    move-object/from16 v17, v0

    .line 76
    .local v17, "contactAllNumberLists":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONArray;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    iget-object v0, v7, Ladb;->g:Ljava/util/List;

    move-object/from16 v22, v0

    .line 78
    .local v22, "locationLists":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONArray;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    iget-object v10, v7, Ladb;->h:Ljava/lang/String;

    .line 79
    .local v10, "foucus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    iget-boolean v13, v7, Ladb;->i:Z

    .line 80
    .local v13, "showSimName":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Laen;->a:Ladb;

    iget-object v14, v7, Ladb;->j:Ljava/util/List;

    .line 82
    .local v14, "simNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 84
    new-instance v4, Lcom/iflytek/viafly/dialogmode/call/ContactView;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/iflytek/viafly/dialogmode/call/ContactView;-><init>(Landroid/content/Context;)V

    .line 85
    .local v4, "contactView":Lcom/iflytek/viafly/dialogmode/call/ContactView;
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    .line 86
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONArray;

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONArray;

    .line 85
    invoke-virtual/range {v4 .. v14}, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a(Landroid/view/ViewGroup;ILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;ZLorg/json/JSONArray;ZLjava/util/List;)V

    .line 88
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/iflytek/viafly/dialogmode/call/ContactView;->setItemClickEvent(Lcom/iflytek/viafly/dialogmode/call/ContactView$a;)V

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 94
    .end local v4    # "contactView":Lcom/iflytek/viafly/dialogmode/call/ContactView;
    :cond_2
    new-instance v16, Landroid/widget/Button;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 95
    .local v16, "cancel":Landroid/widget/Button;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    .line 96
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v8

    const-wide/high16 v28, 0x4046000000000000L    # 44.0

    move-wide/from16 v0, v28

    invoke-static {v8, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    invoke-direct {v15, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    .local v15, "btnParam":Landroid/widget/LinearLayout$LayoutParams;
    const-string/jumbo v7, "\u53d6\u6d88"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    new-instance v7, Laen$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Laen$1;-><init>(Laen;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laen;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 113
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "card"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 118
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 120
    invoke-virtual {v0, p4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    iget-object v1, p0, Laen;->a:Ladb;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ladb;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 122
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 36
    instance-of v0, p1, Laem;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laen;->a(Laee;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Laen;->a:Ladb;

    invoke-virtual {v0}, Ladb;->a()V

    .line 127
    return-void
.end method
