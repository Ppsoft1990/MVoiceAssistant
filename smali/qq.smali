.class public Lqq;
.super Landroid/widget/BaseAdapter;
.source "MainSpeechToolAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqq$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrf;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lrf;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "toolData":Ljava/util/List;, "Ljava/util/List<Lrf;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    const-string/jumbo v0, "MainSpeechToolAdapter"

    iput-object v0, p0, Lqq;->a:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lqq;->c:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lqq;->b:Ljava/util/List;

    .line 53
    iput-object p3, p0, Lqq;->d:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method static synthetic a(Lqq;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lqq;

    .prologue
    .line 44
    iget-object v0, p0, Lqq;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lqq;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lqq;

    .prologue
    .line 44
    iget-object v0, p0, Lqq;->d:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lqq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lqq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    iget-object v4, p0, Lqq;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrf;

    .line 75
    .local v1, "model":Lrf;
    if-nez p2, :cond_0

    .line 76
    new-instance v3, Lqq$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lqq$a;-><init>(Lqq$1;)V

    .line 77
    .local v3, "viewHolder":Lqq$a;
    iget-object v4, p0, Lqq;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03013e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "rootView":Landroid/view/View;
    const v4, 0x7f0b0701

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lqq$a;->a:Landroid/widget/LinearLayout;

    .line 79
    const v4, 0x7f0b0702

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lqq$a;->b:Landroid/widget/ImageView;

    .line 80
    const v4, 0x7f0b0703

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lqq$a;->c:Landroid/widget/TextView;

    .line 81
    move-object p2, v2

    .line 82
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    .end local v2    # "rootView":Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lqq;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lrf;->b()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "drawable"

    iget-object v7, p0, Lqq;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "drawableId":I
    iget-object v4, v3, Lqq$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v4, v3, Lqq$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lrf;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, v3, Lqq$a;->a:Landroid/widget/LinearLayout;

    new-instance v5, Lqq$1;

    invoke-direct {v5, p0, v1}, Lqq$1;-><init>(Lqq;Lrf;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-object p2

    .line 84
    .end local v0    # "drawableId":I
    .end local v3    # "viewHolder":Lqq$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqq$a;

    .restart local v3    # "viewHolder":Lqq$a;
    goto :goto_0
.end method
