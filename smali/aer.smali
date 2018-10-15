.class public Laer;
.super Ljava/lang/Object;
.source "PhoneListMsgItemViewDelegate.java"

# interfaces
.implements Ladv;
.implements Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;",
        "Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;"
    }
.end annotation


# instance fields
.field private a:Ladd;

.field private b:Landroid/widget/LinearLayout;

.field private c:I

.field private d:Laee;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 183
    iget-object v3, p0, Laer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 184
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 186
    if-eq v1, p1, :cond_0

    .line 187
    iget-object v3, p0, Laer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .line 188
    .local v2, "view":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    invoke-virtual {v2}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a()V

    .line 184
    .end local v2    # "view":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    iput p1, p0, Laer;->c:I

    .line 193
    return-void
.end method

.method static synthetic a(Laer;)V
    .locals 0
    .param p0, "x0"    # Laer;

    .prologue
    .line 28
    invoke-direct {p0}, Laer;->b()V

    return-void
.end method

.method static synthetic a(Laer;ZI)V
    .locals 0
    .param p0, "x0"    # Laer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Laer;->a(ZI)V

    return-void
.end method

.method private a(ZI)V
    .locals 4
    .param p1, "isNeedTrigger"    # Z
    .param p2, "index"    # I

    .prologue
    .line 165
    iget v3, p0, Laer;->c:I

    if-ne p2, v3, :cond_0

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v3, p0, Laer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 170
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 171
    iget-object v3, p0, Laer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .line 172
    .local v2, "view":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    if-ne p2, v1, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, p1, v3}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(ZZ)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 175
    .end local v2    # "view":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    :cond_2
    invoke-direct {p0, p2}, Laer;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Laer;)Ladd;
    .locals 1
    .param p0, "x0"    # Laer;

    .prologue
    .line 28
    iget-object v0, p0, Laer;->a:Ladd;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 200
    iget-object v3, p0, Laer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 201
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 203
    iget-object v3, p0, Laer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .line 204
    .local v2, "view":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    invoke-virtual {v2}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a()V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "view":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f030068

    return v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Laer;->a(I)V

    .line 215
    iget-object v0, p0, Laer;->a:Ladd;

    const-string/jumbo v1, "phoneItemClick"

    invoke-virtual {v0, v1, p2}, Ladd;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 216
    return-void
.end method

.method public a(Lady;Laee;I)V
    .locals 30
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 52
    move-object/from16 v0, p2

    instance-of v6, v0, Laeq;

    if-eqz v6, :cond_0

    move-object/from16 v24, p2

    .line 53
    check-cast v24, Laeq;

    .line 54
    .local v24, "phoneListMessage":Laeq;
    move-object/from16 v0, v24

    iget-object v6, v0, Laeq;->a:Ladd;

    move-object/from16 v0, p0

    iput-object v6, v0, Laer;->a:Ladd;

    .line 56
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    if-nez v6, :cond_1

    .line 145
    .end local v24    # "phoneListMessage":Laeq;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v24    # "phoneListMessage":Laeq;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    .line 62
    .local v20, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    .line 65
    .local v28, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 67
    const v6, 0x7f030068

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 69
    .local v21, "layoutContainer":Landroid/widget/LinearLayout;
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    const v6, 0x7f0b0320

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v6, v0, Laer;->b:Landroid/widget/LinearLayout;

    .line 75
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget v6, v6, Ladd;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Laer;->c:I

    .line 76
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget-object v0, v6, Ladd;->d:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 77
    .local v27, "phoneViewTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget-object v4, v6, Ladd;->e:Ljava/lang/String;

    .line 78
    .local v4, "phoneViewFocus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget-object v0, v6, Ladd;->f:Ljava/util/List;

    move-object/from16 v25, v0

    .line 79
    .local v25, "phoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget-object v0, v6, Ladd;->g:Ljava/util/List;

    move-object/from16 v26, v0

    .line 80
    .local v26, "phoneTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget-object v0, v6, Ladd;->h:Ljava/util/List;

    move-object/from16 v23, v0

    .line 81
    .local v23, "phoneFlagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget-wide v14, v6, Ladd;->i:J

    .line 82
    .local v14, "delayTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget-boolean v10, v6, Ladd;->j:Z

    .line 83
    .local v10, "isDoubleSim":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget-object v0, v6, Ladd;->k:Ljava/util/List;

    move-object/from16 v18, v0

    .line 84
    .local v18, "defaultSimList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/adaptation/entity/SimCard;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->a:Ladd;

    iget-object v12, v6, Ladd;->l:Ljava/util/List;

    .line 86
    .local v12, "simNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 88
    .local v17, "defaultItemId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v6, v0, Laer;->c:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "phoneItem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Laer;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 92
    :cond_2
    const v6, 0x7f0b02e2

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 93
    .local v22, "nameText":Landroid/widget/TextView;
    const v6, 0x7f0b02ea

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 95
    .local v16, "cancelBtn":Landroid/widget/Button;
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->d:Laee;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->d:Laee;

    move-object/from16 v0, p2

    if-eq v6, v0, :cond_4

    :cond_3
    const/4 v13, 0x1

    .line 100
    .local v13, "isNeedTrigger":Z
    :goto_1
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_a

    .line 102
    move-object/from16 v0, p0

    iget v6, v0, Laer;->c:I

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    const/4 v5, 0x1

    .line 104
    .local v5, "isDefault":Z
    :goto_3
    new-instance v2, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, "itemView":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->setItemClickEvent(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;)V

    .line 107
    move/from16 v3, v19

    .line 109
    .local v3, "index":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v19

    if-le v6, v0, :cond_6

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object v11, v6

    .line 112
    .local v11, "defaultSimMode":Lcom/iflytek/common/adaptation/entity/SimCard;
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v19

    if-le v6, v0, :cond_7

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 113
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v0, v19

    if-le v7, v0, :cond_8

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 114
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, v19

    if-le v8, v0, :cond_9

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "phoneItem"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 111
    invoke-virtual/range {v2 .. v15}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Ljava/util/List;ZJ)V

    .line 119
    new-instance v6, Laer$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v10, v3, v11}, Laer$1;-><init>(Laer;ZILcom/iflytek/common/adaptation/entity/SimCard;)V

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v6, v0, Laer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 98
    .end local v2    # "itemView":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    .end local v3    # "index":I
    .end local v5    # "isDefault":Z
    .end local v11    # "defaultSimMode":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v13    # "isNeedTrigger":Z
    .end local v19    # "i":I
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 102
    .restart local v13    # "isNeedTrigger":Z
    .restart local v19    # "i":I
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 109
    .restart local v2    # "itemView":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    .restart local v3    # "index":I
    .restart local v5    # "isDefault":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 112
    .restart local v11    # "defaultSimMode":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 113
    :cond_8
    const-string/jumbo v7, ""

    goto :goto_6

    .line 114
    :cond_9
    const-string/jumbo v8, ""

    goto :goto_7

    .line 135
    .end local v2    # "itemView":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    .end local v3    # "index":I
    .end local v5    # "isDefault":Z
    .end local v11    # "defaultSimMode":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Laer;->d:Laee;

    .line 137
    new-instance v6, Laer$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Laer$2;-><init>(Laer;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laer;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 149
    sget-object v3, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_dismiss:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-ne p1, v3, :cond_0

    .line 151
    iget-object v3, p0, Laer;->b:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 161
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v3, p0, Laer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 156
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 157
    iget-object v3, p0, Laer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .line 158
    .local v2, "view":Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    invoke-virtual {v2}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b()V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 46
    instance-of v0, p1, Laeq;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laer;->a(Laee;)Z

    move-result v0

    return v0
.end method
