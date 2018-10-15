.class public Laeb;
.super Ljava/lang/Object;
.source "AppResultMessageItemDelegate.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f03005f

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 18
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 48
    move-object/from16 v0, p2

    instance-of v14, v0, Laea;

    if-eqz v14, :cond_0

    move-object/from16 v3, p2

    .line 50
    check-cast v3, Laea;

    .line 52
    .local v3, "appMessage":Laea;
    iget-object v9, v3, Laea;->a:Ljava/util/ArrayList;

    .line 54
    .local v9, "mAppItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 58
    .local v5, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 59
    .local v10, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v7, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v7, "layout":Landroid/widget/LinearLayout;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    const v14, 0x7f0203f2

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 65
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v14

    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    .line 66
    .local v8, "leftPadding":I
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v14

    const-wide/high16 v16, 0x402c000000000000L    # 14.0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v13

    .line 67
    .local v13, "topPadding":I
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v14

    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v11

    .line 68
    .local v11, "rightPadding":I
    const/4 v14, 0x0

    invoke-virtual {v10, v8, v13, v11, v14}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 70
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/app/AppItem;

    .line 76
    .local v2, "appItem":Lcom/iflytek/base/app/AppItem;
    const v15, 0x7f030056

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 78
    .local v6, "itemLayout":Landroid/widget/RelativeLayout;
    const v15, 0x7f0b02e1

    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 79
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    const v15, 0x7f0b02e2

    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 82
    .local v12, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v15, Laeb$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Laeb$1;-><init>(Laeb;Lcom/iflytek/base/app/AppItem;)V

    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 96
    .end local v2    # "appItem":Lcom/iflytek/base/app/AppItem;
    .end local v3    # "appMessage":Laea;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "itemLayout":Landroid/widget/RelativeLayout;
    .end local v7    # "layout":Landroid/widget/LinearLayout;
    .end local v8    # "leftPadding":I
    .end local v9    # "mAppItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    .end local v10    # "parent":Landroid/view/ViewGroup;
    .end local v11    # "rightPadding":I
    .end local v12    # "textView":Landroid/widget/TextView;
    .end local v13    # "topPadding":I
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laeb;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 101
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 42
    instance-of v0, p1, Laea;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laeb;->a(Laee;)Z

    move-result v0

    return v0
.end method
