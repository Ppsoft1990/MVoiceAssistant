.class public Laew;
.super Ljava/lang/Object;
.source "ContactSearchListItemviewDelegate.java"

# interfaces
.implements Ladv;
.implements Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;",
        "Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;"
    }
.end annotation


# instance fields
.field private a:Ladc;

.field private b:Landroid/widget/LinearLayout;

.field private c:Laee;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f03005d

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 15
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 44
    move-object/from16 v0, p2

    instance-of v4, v0, Laex;

    if-eqz v4, :cond_0

    move-object/from16 v12, p2

    .line 45
    check-cast v12, Laex;

    .line 46
    .local v12, "searchListMessage":Laex;
    iget-object v4, v12, Laex;->a:Ladc;

    iput-object v4, p0, Laew;->a:Ladc;

    .line 48
    iget-object v4, p0, Laew;->a:Ladc;

    if-nez v4, :cond_1

    .line 93
    .end local v12    # "searchListMessage":Laex;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v12    # "searchListMessage":Laex;
    :cond_1
    iget-object v4, p0, Laew;->c:Laee;

    if-eqz v4, :cond_2

    iget-object v4, p0, Laew;->c:Laee;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_0

    .line 58
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 60
    .local v13, "viewGroup":Landroid/view/ViewGroup;
    const v4, 0x7f0b02ef

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Laew;->b:Landroid/widget/LinearLayout;

    .line 61
    const v4, 0x7f0b02fa

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 63
    .local v10, "nameText":Landroid/widget/TextView;
    iget-object v4, p0, Laew;->a:Ladc;

    iget-object v8, v4, Ladc;->d:Lorg/json/JSONArray;

    .line 65
    .local v8, "contactList":Lorg/json/JSONArray;
    iget-object v4, p0, Laew;->a:Ladc;

    iget-object v4, v4, Ladc;->b:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v4, p0, Laew;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 69
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v9, v4, :cond_4

    .line 71
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 73
    .local v7, "contact":Lorg/json/JSONObject;
    const-string/jumbo v4, "contactTag"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "contactTag":Ljava/lang/String;
    const-string/jumbo v4, "contactNumber"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "contactNumber":Ljava/lang/String;
    const-string/jumbo v4, "isMobileNumber"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 77
    .local v3, "isMobileNumber":Z
    new-instance v1, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;

    invoke-virtual/range {p1 .. p1}, Lady;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, "searchItemView":Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v14, 0x1

    if-le v4, v14, :cond_3

    add-int/lit8 v2, v9, 0x1

    .line 81
    .local v2, "index":I
    :goto_2
    iget-object v4, p0, Laew;->a:Ladc;

    iget-object v4, v4, Ladc;->b:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->a(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, p0}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->setItemClickEvent(Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;)V

    .line 84
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v14, -0x2

    invoke-direct {v11, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Laew;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 80
    .end local v2    # "index":I
    .end local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/4 v2, -0x1

    goto :goto_2

    .line 90
    .end local v1    # "searchItemView":Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;
    .end local v3    # "isMobileNumber":Z
    .end local v5    # "contactTag":Ljava/lang/String;
    .end local v6    # "contactNumber":Ljava/lang/String;
    .end local v7    # "contact":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, p2

    iput-object v0, p0, Laew;->c:Laee;

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laew;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 98
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 104
    .local v0, "array":Lorg/json/JSONArray;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p2, v2

    .line 105
    .local v1, "ss":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "ss":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Laew;->a:Ladc;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ladc;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 108
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 38
    instance-of v0, p1, Laex;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laew;->a(Laee;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Laew;->a:Ladc;

    invoke-virtual {v0}, Ladc;->a()V

    .line 113
    return-void
.end method
