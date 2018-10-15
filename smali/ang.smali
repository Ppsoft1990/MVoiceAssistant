.class public Lang;
.super Landroid/widget/BaseAdapter;
.source "BookListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lang$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lane;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lane;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callBack"    # Lane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;",
            "Lane;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "mChapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lang;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lang;->b:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lang;->d:Lane;

    .line 35
    return-void
.end method

.method static synthetic a(Lang;)Lane;
    .locals 1
    .param p0, "x0"    # Lang;

    .prologue
    .line 24
    iget-object v0, p0, Lang;->d:Lane;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "chapterId"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lang;->c:Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lang;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lang$3;

    invoke-direct {v1, p0}, Lang$3;-><init>(Lang;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "chapterId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "mChapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    iput-object p1, p0, Lang;->c:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lang;->b:Ljava/util/List;

    .line 127
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lang;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lang$4;

    invoke-direct {v1, p0}, Lang$4;-><init>(Lang;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "mChapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    iput-object p1, p0, Lang;->b:Ljava/util/List;

    .line 106
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lang;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lang$2;

    invoke-direct {v1, p0}, Lang$2;-><init>(Lang;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lang;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lang;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 55
    iget-object v3, p0, Lang;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .line 56
    .local v0, "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    if-nez p2, :cond_0

    .line 57
    new-instance v2, Lang$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lang$a;-><init>(Lang$1;)V

    .line 58
    .local v2, "wrapper":Lang$a;
    iget-object v3, p0, Lang;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300e2

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "rootView":Landroid/view/View;
    const v3, 0x7f0b0560

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lang$a;->c:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f0b055f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lang$a;->b:Landroid/widget/ImageView;

    .line 61
    const v3, 0x7f0b055e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v3, v2, Lang$a;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 62
    move-object p2, v1

    .line 63
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    .end local v1    # "rootView":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .line 95
    :goto_1
    return-object p2

    .line 65
    .end local v2    # "wrapper":Lang$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lang$a;

    .restart local v2    # "wrapper":Lang$a;
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 72
    iget-object v3, v2, Lang$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_2
    iget-object v3, p0, Lang;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lang;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    iget-object v3, v2, Lang$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v3, v2, Lang$a;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lang;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    :goto_2
    iget-object v3, v2, Lang$a;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    new-instance v4, Lang$1;

    invoke-direct {v4, p0, v0}, Lang$1;-><init>(Lang;Lcom/iflytek/viafly/listenbook/entity/Chapter;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 79
    :cond_3
    iget-object v3, v2, Lang$a;->b:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->f()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 81
    iget-object v3, v2, Lang$a;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lang;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 83
    :cond_4
    iget-object v3, v2, Lang$a;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lang;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method
