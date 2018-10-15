.class public Laki;
.super Landroid/widget/BaseAdapter;
.source "DayTrafficAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laki$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Runnable;

.field private d:I


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
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "toolData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Laki;->d:I

    .line 26
    iput-object p1, p0, Laki;->b:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Laki;->a:Ljava/util/List;

    .line 28
    iput-object p3, p0, Laki;->c:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method static synthetic a(Laki;I)I
    .locals 0
    .param p0, "x0"    # Laki;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Laki;->d:I

    return p1
.end method

.method static synthetic a(Laki;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Laki;

    .prologue
    .line 18
    iget-object v0, p0, Laki;->c:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Laki;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 85
    iput p1, p0, Laki;->d:I

    .line 86
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Laki;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Laki;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    iget-object v3, p0, Laki;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "model":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 51
    new-instance v2, Laki$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Laki$a;-><init>(Laki$1;)V

    .line 52
    .local v2, "viewHolder":Laki$a;
    iget-object v3, p0, Laki;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030081

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "rootView":Landroid/view/View;
    const v3, 0x7f0b0398

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Laki$a;->a:Landroid/widget/TextView;

    .line 54
    move-object p2, v1

    .line 55
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    .end local v1    # "rootView":Landroid/view/View;
    :goto_0
    iget-object v3, v2, Laki$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget v3, p0, Laki;->d:I

    if-ne v3, p1, :cond_1

    .line 61
    iget-object v3, v2, Laki$a;->a:Landroid/widget/TextView;

    iget-object v4, p0, Laki;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v3, v2, Laki$a;->a:Landroid/widget/TextView;

    const v4, 0x7f0200b0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 67
    :goto_1
    iget-object v3, v2, Laki$a;->a:Landroid/widget/TextView;

    new-instance v4, Laki$1;

    invoke-direct {v4, p0, p1}, Laki$1;-><init>(Laki;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-object p2

    .line 57
    .end local v2    # "viewHolder":Laki$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laki$a;

    .restart local v2    # "viewHolder":Laki$a;
    goto :goto_0

    .line 64
    :cond_1
    iget-object v3, v2, Laki$a;->a:Landroid/widget/TextView;

    iget-object v4, p0, Laki;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v3, v2, Laki$a;->a:Landroid/widget/TextView;

    const v4, 0x7f0200af

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method
