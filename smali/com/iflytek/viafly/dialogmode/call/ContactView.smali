.class public Lcom/iflytek/viafly/dialogmode/call/ContactView;
.super Landroid/widget/LinearLayout;
.source "ContactView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/dialogmode/call/ContactView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/iflytek/viafly/dialogmode/call/ContactView$a;

.field private k:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->k:Landroid/view/LayoutInflater;

    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->k:Landroid/view/LayoutInflater;

    const v1, 0x7f03005e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a:Landroid/widget/LinearLayout;

    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/dialogmode/call/ContactView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/ContactView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02fb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->e:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02fa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->b:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02fc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->c:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0303

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->d:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0304

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->f:Landroid/widget/LinearLayout;

    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02f1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->g:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02fd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->h:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0300

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->i:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/iflytek/viafly/dialogmode/call/ContactView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/dialogmode/call/ContactView$1;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/dialogmode/call/ContactView;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/ContactView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "card"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->j:Lcom/iflytek/viafly/dialogmode/call/ContactView$a;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->j:Lcom/iflytek/viafly/dialogmode/call/ContactView$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/viafly/dialogmode/call/ContactView$a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->j:Lcom/iflytek/viafly/dialogmode/call/ContactView$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/dialogmode/call/ContactView$a;->b()V

    .line 265
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/dialogmode/call/ContactView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/ContactView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;ZLorg/json/JSONArray;ZLjava/util/List;)V
    .locals 22
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "itemId"    # I
    .param p3, "contactName"    # Ljava/lang/String;
    .param p4, "contactLocations"    # Lorg/json/JSONArray;
    .param p5, "contactNumberList"    # Lorg/json/JSONArray;
    .param p6, "focus"    # Ljava/lang/String;
    .param p7, "isDouble"    # Z
    .param p8, "contactAllSimLists"    # Lorg/json/JSONArray;
    .param p9, "isShowSimName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/json/JSONArray;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p10, "simNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v13, p2, 0x1

    .line 84
    .local v13, "itemOrder":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->e:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->b:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/16 v19, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "firstLoc":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, "firstNum":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->c:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->g:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Lcom/iflytek/viafly/dialogmode/call/ContactView$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/ContactView$4;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->d:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    const-string/jumbo v19, "telephone"

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    if-eqz p7, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->h:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->i:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->h:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0b02fe

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 111
    .local v5, "cardOne":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->h:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ff

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 113
    .local v6, "cardTwo":Landroid/widget/Button;
    if-eqz p10, :cond_0

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 114
    const/16 v19, 0x0

    move-object/from16 v0, p10

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/16 v19, 0x1

    move-object/from16 v0, p10

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    new-instance v19, Lcom/iflytek/viafly/dialogmode/call/ContactView$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/ContactView$5;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;I)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v19, Lcom/iflytek/viafly/dialogmode/call/ContactView$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/ContactView$6;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;I)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .end local v5    # "cardOne":Landroid/widget/Button;
    .end local v6    # "cardTwo":Landroid/widget/Button;
    :cond_1
    :goto_1
    return-void

    .line 92
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->c:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 133
    :cond_3
    const-string/jumbo v19, "contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->h:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->i:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->i:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0b0301

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 139
    .local v18, "smsImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->i:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0b0302

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 141
    .local v7, "dialImg":Landroid/widget/ImageView;
    new-instance v19, Lcom/iflytek/viafly/dialogmode/call/ContactView$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/ContactView$7;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;I)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v19, Lcom/iflytek/viafly/dialogmode/call/ContactView$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/ContactView$8;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;I)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 159
    .end local v7    # "dialImg":Landroid/widget/ImageView;
    .end local v18    # "smsImg":Landroid/widget/ImageView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->d:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->h:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->i:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_1

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->k:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f03005c

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 169
    .local v16, "numberLayout":Landroid/widget/LinearLayout;
    const v19, 0x7f0b02e6

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 170
    .local v17, "numberText":Landroid/widget/TextView;
    const v19, 0x7f0b02f5

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 171
    .local v14, "locText":Landroid/widget/TextView;
    const v19, 0x7f0b02f6

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 172
    .local v4, "cardLayout":Landroid/widget/LinearLayout;
    const v19, 0x7f0b02f9

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 174
    .local v8, "dialLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    .line 176
    .local v15, "location":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 177
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :goto_3
    move v12, v11

    .line 186
    .local v12, "index":I
    const-string/jumbo v19, "telephone"

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    if-eqz p7, :cond_8

    .line 188
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    const v19, 0x7f0b02f7

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 192
    .restart local v5    # "cardOne":Landroid/widget/Button;
    const v19, 0x7f0b02f8

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 194
    .restart local v6    # "cardTwo":Landroid/widget/Button;
    if-eqz p10, :cond_5

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 195
    const/16 v19, 0x0

    move-object/from16 v0, p10

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const/16 v19, 0x1

    move-object/from16 v0, p10

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_5
    new-instance v19, Lcom/iflytek/viafly/dialogmode/call/ContactView$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/iflytek/viafly/dialogmode/call/ContactView$9;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;II)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v19, Lcom/iflytek/viafly/dialogmode/call/ContactView$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/iflytek/viafly/dialogmode/call/ContactView$10;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;II)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .end local v5    # "cardOne":Landroid/widget/Button;
    .end local v6    # "cardTwo":Landroid/widget/Button;
    :cond_6
    :goto_4
    new-instance v19, Lcom/iflytek/viafly/dialogmode/call/ContactView$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/iflytek/viafly/dialogmode/call/ContactView$3;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;Ljava/lang/String;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->f:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 180
    .end local v12    # "index":I
    :cond_7
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 214
    .restart local v12    # "index":I
    :cond_8
    const-string/jumbo v19, "contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 216
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    const v19, 0x7f0b02e7

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 220
    .restart local v18    # "smsImg":Landroid/widget/ImageView;
    const v19, 0x7f0b02e8

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 222
    .restart local v7    # "dialImg":Landroid/widget/ImageView;
    new-instance v19, Lcom/iflytek/viafly/dialogmode/call/ContactView$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/iflytek/viafly/dialogmode/call/ContactView$11;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v19, Lcom/iflytek/viafly/dialogmode/call/ContactView$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/iflytek/viafly/dialogmode/call/ContactView$2;-><init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;II)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4
.end method

.method public setItemClickEvent(Lcom/iflytek/viafly/dialogmode/call/ContactView$a;)V
    .locals 0
    .param p1, "itemClickEvent"    # Lcom/iflytek/viafly/dialogmode/call/ContactView$a;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView;->j:Lcom/iflytek/viafly/dialogmode/call/ContactView$a;

    .line 53
    return-void
.end method
