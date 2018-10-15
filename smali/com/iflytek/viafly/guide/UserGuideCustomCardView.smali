.class public Lcom/iflytek/viafly/guide/UserGuideCustomCardView;
.super Lcom/iflytek/viafly/guide/AbsCustomView;
.source "UserGuideCustomCardView.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lagt;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/AbsCustomView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->c:Ljava/util/List;

    .line 33
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 65
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030091

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 68
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const v3, 0x7f0b03d0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->a:Landroid/widget/ListView;

    .line 70
    new-instance v3, Lagt;

    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->c:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lagt;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->b:Lagt;

    .line 71
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->a:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->b:Lagt;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    .line 38
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->c:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {}, Laic;->p()Ljava/util/List;

    move-result-object v4

    .line 43
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 44
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laic;

    .line 45
    .local v1, "homeCardItem":Laic;
    if-eqz v1, :cond_1

    const/4 v6, 0x2

    invoke-virtual {v1}, Laic;->e()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 46
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    const-string/jumbo v6, "Schedule"

    invoke-virtual {v1}, Laic;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 50
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 53
    .end local v1    # "homeCardItem":Laic;
    :cond_3
    invoke-static {}, Laic;->o()Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "cardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laic;

    .line 55
    .local v5, "orderItem":Laic;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laic;

    .line 56
    .local v3, "item":Laic;
    invoke-virtual {v5}, Laic;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Laic;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 57
    iget-object v8, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->c:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 61
    .end local v3    # "item":Laic;
    .end local v5    # "orderItem":Laic;
    :cond_6
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->b:Lagt;

    invoke-virtual {v6}, Lagt;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic;

    .line 77
    .local v0, "homeCardItem":Laic;
    invoke-virtual {v0}, Laic;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v2

    invoke-virtual {v0}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lakm;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lakm;->a(Laic;)V

    goto :goto_0

    .line 85
    .end local v0    # "homeCardItem":Laic;
    :cond_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Laia;

    invoke-direct {v2}, Laia;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 86
    return-void
.end method
