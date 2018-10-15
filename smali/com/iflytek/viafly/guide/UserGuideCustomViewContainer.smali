.class public Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;
.super Landroid/widget/LinearLayout;
.source "UserGuideCustomViewContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/guide/AbsCustomView;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lpp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    .line 43
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    .line 48
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v9, 0x7f0b03e8

    const/4 v6, -0x1

    .line 53
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 55
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030095

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 56
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const v6, 0x7f0b03e7

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a:Landroid/widget/RelativeLayout;

    .line 58
    const v6, 0x7f0b03e5

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->b:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->c:Landroid/widget/TextView;

    .line 60
    const v6, 0x7f0b03e6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->d:Landroid/widget/TextView;

    .line 61
    const v6, 0x7f0b03e4

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->d:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v5, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v5, "speakerView":Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v4, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v4, "scheduleView":Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/iflytek/viafly/guide/UserGuideCustomCardView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "cardView":Lcom/iflytek/viafly/guide/UserGuideCustomCardView;
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->d()V

    .line 72
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 91
    :cond_0
    return-void
.end method

.method private a(Lcom/iflytek/viafly/guide/AbsCustomView;)V
    .locals 2
    .param p1, "view"    # Lcom/iflytek/viafly/guide/AbsCustomView;

    .prologue
    const/4 v1, -0x1

    .line 79
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v0, "fillParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p1}, Lcom/iflytek/viafly/guide/AbsCustomView;->a()V

    .line 85
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 120
    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 121
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    iget v2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/guide/AbsCustomView;

    .line 122
    .local v0, "currentView":Lcom/iflytek/viafly/guide/AbsCustomView;
    if-nez v0, :cond_1

    .line 138
    .end local v0    # "currentView":Lcom/iflytek/viafly/guide/AbsCustomView;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v0    # "currentView":Lcom/iflytek/viafly/guide/AbsCustomView;
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/guide/AbsCustomView;->b()V

    .line 127
    .end local v0    # "currentView":Lcom/iflytek/viafly/guide/AbsCustomView;
    :cond_2
    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    .line 128
    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 129
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->g:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->g:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    iget v2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/guide/AbsCustomView;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a(Lcom/iflytek/viafly/guide/AbsCustomView;)V

    .line 136
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->d()V

    .line 137
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-nez v0, :cond_0

    .line 157
    const-string/jumbo v0, "\u9009\u62e9\u53d1\u97f3\u4eba"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setTitle(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "\u7ee7\u7eed"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setNext(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-ne v0, v1, :cond_1

    .line 161
    const-string/jumbo v0, "\u9009\u62e9\u9996\u9875\u670d\u52a1"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setTitle(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "\u5f00\u59cb\u4f7f\u7528"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setNext(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_1
    const-string/jumbo v0, "\u63d0\u9192\u901a\u77e5"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setTitle(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v0, "\u4e0b\u4e00\u6b65"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setNext(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->h:Lpp;

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->h:Lpp;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->h:Lpp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->h:Lpp;

    invoke-virtual {v0, v1}, Lpp;->d(Lju;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->h:Lpp;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 220
    :cond_1
    return-void
.end method

.method private getChildrenCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNext(Ljava/lang/String;)V
    .locals 1
    .param p1, "next"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setVisibility(I)V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    .line 115
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->c()V

    .line 116
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-gez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a(Landroid/view/View;)V

    .line 145
    iget v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    .line 146
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->d()V

    .line 147
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->getChildrenCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setVisibility(I)V

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e()V

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    const v1, 0x7f0b03e4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->b()Z

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const v1, 0x7f0b03e6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 176
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->g:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->g:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e()V

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-nez v1, :cond_4

    .line 183
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "speaker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90042"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 184
    :cond_4
    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-ne v4, v1, :cond_5

    .line 185
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "schedule"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 186
    :cond_5
    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-ne v5, v1, :cond_3

    .line 187
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "plugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 190
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const v1, 0x7f0b03e8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 192
    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-nez v1, :cond_7

    .line 194
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90044"

    invoke-virtual {v1, v2, v3}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    :goto_2
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->c()V

    goto :goto_0

    .line 195
    :cond_7
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-ne v1, v2, :cond_8

    .line 197
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90046"

    invoke-virtual {v1, v2, v3}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 200
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-ne v4, v1, :cond_a

    .line 202
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "schedule"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90045"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 203
    :cond_a
    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->f:I

    if-ne v5, v1, :cond_9

    .line 204
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "plugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public setEnterListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->g:Landroid/view/View$OnClickListener;

    .line 76
    return-void
.end method
