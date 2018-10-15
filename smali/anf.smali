.class public Lanf;
.super Landroid/widget/BaseAdapter;
.source "BookHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanf$a;,
        Lanf$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lanf$a;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lanf$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selectListener"    # Lanf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;",
            "Lanf$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "lrcList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanf;->c:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lanf;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lanf;->c:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lanf;->d:Lanf$a;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lanf;->b:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method

.method static synthetic a(Lanf;)Lanf$a;
    .locals 1
    .param p0, "x0"    # Lanf;

    .prologue
    .line 36
    iget-object v0, p0, Lanf;->d:Lanf$a;

    return-object v0
.end method

.method private a()Lbcu;
    .locals 4

    .prologue
    const v3, 0x7f020309

    .line 173
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 175
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 179
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v3}, Lbcu$a;->a(I)Lbcu$a;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v3}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v3}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 184
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 186
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method static synthetic b(Lanf;)Z
    .locals 1
    .param p0, "x0"    # Lanf;

    .prologue
    .line 36
    iget-boolean v0, p0, Lanf;->e:Z

    return v0
.end method

.method static synthetic c(Lanf;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lanf;

    .prologue
    .line 36
    iget-object v0, p0, Lanf;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .param p1, "isEdit"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lanf;->e:Z

    .line 170
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 53
    iget-object v1, p0, Lanf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lanf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lanf;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 70
    iget-object v4, p0, Lanf;->c:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 71
    .local v1, "bookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    if-nez p2, :cond_0

    .line 72
    new-instance v3, Lanf$b;

    invoke-direct {v3}, Lanf$b;-><init>()V

    .line 73
    .local v3, "wrapper":Lanf$b;
    iget-object v4, p0, Lanf;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f0300bd

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 74
    const v4, 0x7f0b04d1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lanf$b;->a:Landroid/widget/LinearLayout;

    .line 75
    const v4, 0x7f0b04d2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lanf$b;->b:Landroid/widget/ImageView;

    .line 76
    const v4, 0x7f0b04d3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lanf$b;->c:Landroid/widget/ImageView;

    .line 77
    const v4, 0x7f0b04d4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lanf$b;->d:Landroid/widget/TextView;

    .line 78
    const v4, 0x7f0b04d5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lanf$b;->e:Landroid/widget/TextView;

    .line 79
    const v4, 0x7f0b04d7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lanf$b;->f:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    if-nez v1, :cond_1

    .line 151
    :goto_1
    return-object p2

    .line 82
    .end local v3    # "wrapper":Lanf$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanf$b;

    .restart local v3    # "wrapper":Lanf$b;
    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v4

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lanf$b;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Lanf;->a()Lbcu;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 89
    iget-object v4, v3, Lanf$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const-string/jumbo v0, "\u672a\u77e5"

    .line 91
    .local v0, "author":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 92
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_2
    iget-object v4, v3, Lanf$b;->e:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4e3b\u64ad  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const-string/jumbo v2, "\u672a\u77e5"

    .line 96
    .local v2, "contentName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 97
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b()Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_3
    iget-object v4, v3, Lanf$b;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u56fe\u4e66  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-boolean v4, p0, Lanf;->e:Z

    if-eqz v4, :cond_5

    .line 101
    iget-object v4, v3, Lanf$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->k()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 103
    iget-object v4, v3, Lanf$b;->b:Landroid/widget/ImageView;

    const v5, 0x7f0201f4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    :goto_2
    iget-object v4, v3, Lanf$b;->b:Landroid/widget/ImageView;

    new-instance v5, Lanf$1;

    invoke-direct {v5, p0, v1}, Lanf$1;-><init>(Lanf;Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v4, v3, Lanf$b;->a:Landroid/widget/LinearLayout;

    new-instance v5, Lanf$2;

    invoke-direct {v5, p0, v1}, Lanf$2;-><init>(Lanf;Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 105
    :cond_4
    iget-object v4, v3, Lanf$b;->b:Landroid/widget/ImageView;

    const v5, 0x7f0201f3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 108
    :cond_5
    iget-object v4, v3, Lanf$b;->b:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
