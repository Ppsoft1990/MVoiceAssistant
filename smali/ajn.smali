.class public Lajn;
.super Landroid/widget/BaseAdapter;
.source "CityMatchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajn$a;
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
            "Lajw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "cityList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lajn;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lajn;->c:Ljava/util/List;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lajn;->b:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lajn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lajn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    const/4 v4, 0x0

    .line 51
    .local v4, "mViewHolder":Lajn$a;
    if-nez p2, :cond_1

    .line 52
    new-instance v4, Lajn$a;

    .end local v4    # "mViewHolder":Lajn$a;
    invoke-direct {v4, p0}, Lajn$a;-><init>(Lajn;)V

    .line 53
    .restart local v4    # "mViewHolder":Lajn$a;
    iget-object v6, p0, Lajn;->b:Landroid/view/LayoutInflater;

    const v7, 0x7f030071

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 55
    const v6, 0x7f0b0334

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lajn$a;->a:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v6, p0, Lajn;->c:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lajw;

    .line 62
    .local v2, "cityArea":Lajw;
    if-eqz v2, :cond_0

    .line 63
    const-string/jumbo v0, ""

    .line 64
    .local v0, "addressInfo":Ljava/lang/String;
    invoke-virtual {v2}, Lajw;->b()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "areaName":Ljava/lang/String;
    invoke-virtual {v2}, Lajw;->c()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "cityName":Ljava/lang/String;
    invoke-virtual {v2}, Lajw;->d()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "provinceName":Ljava/lang/String;
    invoke-virtual {v2}, Lajw;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    move-object v0, v3

    .line 76
    :goto_1
    iget-object v6, v4, Lajn$a;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .end local v0    # "addressInfo":Ljava/lang/String;
    .end local v1    # "areaName":Ljava/lang/String;
    .end local v3    # "cityName":Ljava/lang/String;
    .end local v5    # "provinceName":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 59
    .end local v2    # "cityArea":Lajw;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "mViewHolder":Lajn$a;
    check-cast v4, Lajn$a;

    .restart local v4    # "mViewHolder":Lajn$a;
    goto :goto_0

    .line 70
    .restart local v0    # "addressInfo":Ljava/lang/String;
    .restart local v1    # "areaName":Ljava/lang/String;
    .restart local v2    # "cityArea":Lajw;
    .restart local v3    # "cityName":Ljava/lang/String;
    .restart local v5    # "provinceName":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 73
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
