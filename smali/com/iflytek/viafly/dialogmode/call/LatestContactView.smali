.class public Lcom/iflytek/viafly/dialogmode/call/LatestContactView;
.super Landroid/widget/LinearLayout;
.source "LatestContactView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;

.field private g:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->g:Landroid/view/LayoutInflater;

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f030061

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->e:Landroid/widget/LinearLayout;

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->b:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->c:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->d:Landroid/widget/ImageView;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/LatestContactView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->f:Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->f:Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "markPhoneNum"    # Ljava/lang/String;
    .param p3, "defaultSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p4, "simNameList"    # Lorg/json/JSONArray;
    .param p5, "location"    # Ljava/lang/String;
    .param p6, "focus"    # Ljava/lang/String;
    .param p7, "isDefault"    # Z

    .prologue
    const/4 v4, 0x0

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "tip":Ljava/lang/String;
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v2, p3}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u521a\u521a\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u62e8\u51fa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 149
    if-eqz p7, :cond_0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_1
    :goto_1
    move-object v0, p1

    .line 161
    .local v0, "nameString":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->c:Landroid/widget/ImageView;

    new-instance v3, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$4;

    invoke-direct {v3, p0, p6, v0, p2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$4;-><init>(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->d:Landroid/widget/ImageView;

    new-instance v3, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$5;

    invoke-direct {v3, p0, p2, v0}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$5;-><init>(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->e:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;

    invoke-direct {v3, p0, p2, v0, p7}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;-><init>(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    if-eqz p7, :cond_2

    .line 191
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a:Landroid/widget/TextView;

    const-string/jumbo v3, "#2076EA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->b:Landroid/widget/TextView;

    const-string/jumbo v3, "#2076EA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 196
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_3
    return-void

    .line 140
    .end local v0    # "nameString":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v2, p3}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u521a\u521a\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u62e8\u51fa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 143
    :cond_5
    const-string/jumbo v1, "\u521a\u521a\u62e8\u51fa"

    goto/16 :goto_0

    .line 154
    :cond_6
    if-eqz p7, :cond_1

    .line 155
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 7
    .param p1, "mobile"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "tel"    # Ljava/lang/String;
    .param p4, "defaultSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p5, "simNameList"    # Lorg/json/JSONArray;
    .param p6, "location"    # Lorg/json/JSONArray;
    .param p7, "focus"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "nameContent":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 56
    invoke-static {p3}, Lazk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    :goto_0
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, p4}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u521a\u521a\u7528"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u62e8\u51fa"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "tip":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p6, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "locatioinString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "numberString":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "\u672a\u77e5"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v0    # "locatioinString":Ljava/lang/String;
    .end local v4    # "tip":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    move-object v2, p2

    .line 100
    .local v2, "nameString":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->c:Landroid/widget/ImageView;

    new-instance v6, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;

    invoke-direct {v6, p0, p7, v2, p3}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;-><init>(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->d:Landroid/widget/ImageView;

    new-instance v6, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$2;

    invoke-direct {v6, p0, p3, v2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$2;-><init>(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->e:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$3;

    invoke-direct {v6, p0, p3, v2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$3;-><init>(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->b:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :cond_0
    return-void

    .line 58
    .end local v2    # "nameString":Ljava/lang/String;
    .end local v3    # "numberString":Ljava/lang/String;
    :cond_1
    move-object v1, p3

    goto/16 :goto_0

    .restart local v0    # "locatioinString":Ljava/lang/String;
    .restart local v4    # "tip":Ljava/lang/String;
    :cond_2
    move-object v3, v4

    .line 68
    goto :goto_1

    .line 72
    .restart local v3    # "numberString":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 74
    .end local v0    # "locatioinString":Ljava/lang/String;
    .end local v3    # "numberString":Ljava/lang/String;
    .end local v4    # "tip":Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, p4}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u521a\u521a\u7528"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u62e8\u51fa"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .restart local v4    # "tip":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p6, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "locatioinString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .restart local v3    # "numberString":Ljava/lang/String;
    :goto_3
    const-string/jumbo v5, "\u672a\u77e5"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 79
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .end local v3    # "numberString":Ljava/lang/String;
    :cond_5
    move-object v3, v4

    .line 77
    goto :goto_3

    .line 81
    .restart local v3    # "numberString":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 84
    .end local v0    # "locatioinString":Ljava/lang/String;
    .end local v3    # "numberString":Ljava/lang/String;
    .end local v4    # "tip":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "\u672a\u77e5"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 85
    const/4 v5, 0x0

    invoke-virtual {p6, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    .restart local v3    # "numberString":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 88
    .end local v3    # "numberString":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v5, 0x0

    invoke-virtual {p6, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "locatioinString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "numberString":Ljava/lang/String;
    :goto_4
    goto/16 :goto_2

    .end local v3    # "numberString":Ljava/lang/String;
    :cond_9
    move-object v3, v1

    goto :goto_4
.end method

.method public setItemClickEvent(Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;)V
    .locals 0
    .param p1, "itemClickEvent"    # Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->f:Lcom/iflytek/viafly/dialogmode/call/LatestContactView$a;

    .line 49
    return-void
.end method
