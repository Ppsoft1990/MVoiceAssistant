.class public Lagt;
.super Landroid/widget/BaseAdapter;
.source "UserGuideCustomCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagt$a;
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
            "Laic;",
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
            "Laic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lagt;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lagt;->c:Ljava/util/List;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lagt;->b:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string/jumbo v0, "Fee"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const v0, 0x7f0203b9

    .line 106
    :goto_0
    return v0

    .line 91
    :cond_0
    const-string/jumbo v0, "Weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const v0, 0x7f02041c

    goto :goto_0

    .line 93
    :cond_1
    const-string/jumbo v0, "ListenBook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const v0, 0x7f0203c7

    goto :goto_0

    .line 95
    :cond_2
    const-string/jumbo v0, "Music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    const v0, 0x7f0203d5

    goto :goto_0

    .line 97
    :cond_3
    const-string/jumbo v0, "News"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    const v0, 0x7f0203d6

    goto :goto_0

    .line 99
    :cond_4
    const-string/jumbo v0, "Movie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    const v0, 0x7f0203d4

    goto :goto_0

    .line 101
    :cond_5
    const-string/jumbo v0, "Food"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    const v0, 0x7f0203bd

    goto :goto_0

    .line 103
    :cond_6
    const-string/jumbo v0, "AudioNews"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    const v0, 0x7f0203b1

    goto :goto_0

    .line 106
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string/jumbo v0, "Fee"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "\u8bdd\u8d39\u6d41\u91cf"

    .line 127
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const-string/jumbo v0, "Weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string/jumbo v0, "\u5929\u6c14"

    goto :goto_0

    .line 114
    :cond_1
    const-string/jumbo v0, "ListenBook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const-string/jumbo v0, "\u542c\u4e66"

    goto :goto_0

    .line 116
    :cond_2
    const-string/jumbo v0, "Music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    const-string/jumbo v0, "\u97f3\u4e50"

    goto :goto_0

    .line 118
    :cond_3
    const-string/jumbo v0, "News"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    const-string/jumbo v0, "\u65b0\u95fb"

    goto :goto_0

    .line 120
    :cond_4
    const-string/jumbo v0, "Movie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    const-string/jumbo v0, "\u7535\u5f71"

    goto :goto_0

    .line 122
    :cond_5
    const-string/jumbo v0, "Food"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    const-string/jumbo v0, "\u7f8e\u98df"

    goto :goto_0

    .line 124
    :cond_6
    const-string/jumbo v0, "AudioNews"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    const-string/jumbo v0, "\u6709\u58f0\u8d44\u8baf"

    goto :goto_0

    .line 127
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lagt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lagt;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    iget-object v4, p0, Lagt;->c:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laic;

    .line 55
    .local v2, "item":Laic;
    if-nez p2, :cond_0

    .line 56
    iget-object v4, p0, Lagt;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f030090

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v1, Lagt$a;

    invoke-direct {v1}, Lagt$a;-><init>()V

    .line 58
    .local v1, "holder":Lagt$a;
    const v4, 0x7f0b02e1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lagt$a;->a:Landroid/widget/ImageView;

    .line 59
    const v4, 0x7f0b03cf

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lagt$a;->b:Landroid/widget/TextView;

    .line 60
    const v4, 0x7f0b0326

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lagt$a;->c:Landroid/widget/ImageView;

    .line 61
    const v4, 0x7f0b03ce

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lagt$a;->d:Landroid/widget/RelativeLayout;

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "mGroupId":Ljava/lang/String;
    iget-object v4, v1, Lagt$a;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lagt;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v4, v1, Lagt$a;->b:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lagt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v2}, Laic;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    iget-object v4, v1, Lagt$a;->c:Landroid/widget/ImageView;

    const v5, 0x7f0200fb

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :goto_1
    iget-object v4, v1, Lagt$a;->d:Landroid/widget/RelativeLayout;

    new-instance v5, Lagt$1;

    invoke-direct {v5, p0, v2}, Lagt$1;-><init>(Lagt;Laic;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v3    # "mGroupId":Ljava/lang/String;
    :goto_2
    return-object p2

    .line 64
    .end local v1    # "holder":Lagt$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lagt$a;

    .restart local v1    # "holder":Lagt$a;
    goto :goto_0

    .line 73
    .restart local v3    # "mGroupId":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, v1, Lagt$a;->c:Landroid/widget/ImageView;

    const v5, 0x7f0200fa

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 82
    .end local v3    # "mGroupId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "UserGuideCustomCardAdapter"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
