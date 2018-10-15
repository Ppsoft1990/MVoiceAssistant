.class public Lakj;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "DayTrafficGridView.java"


# instance fields
.field private a:Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;

.field private b:Laki;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lakj;->c:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/16 v1, 0x64

    .line 63
    iget-object v2, p0, Lakj;->b:Laki;

    invoke-virtual {v2}, Laki;->a()I

    move-result v0

    .line 64
    .local v0, "index":I
    if-nez v0, :cond_1

    .line 65
    const/16 v1, 0xa

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 67
    const/16 v1, 0x32

    goto :goto_0

    .line 68
    :cond_2
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 70
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 71
    const/16 v1, 0xc8

    goto :goto_0

    .line 72
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 73
    const/16 v1, 0x12c

    goto :goto_0

    .line 74
    :cond_4
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 75
    const/16 v1, 0x190

    goto :goto_0

    .line 76
    :cond_5
    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 77
    const/16 v1, 0x1f4

    goto :goto_0

    .line 78
    :cond_6
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 79
    const/16 v1, 0x3e8

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .param p1, "dayLimit"    # I

    .prologue
    .line 84
    const/4 v0, 0x2

    .line 85
    .local v0, "index":I
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 102
    :cond_0
    :goto_0
    iget-object v1, p0, Lakj;->b:Laki;

    invoke-virtual {v1, v0}, Laki;->a(I)V

    .line 103
    iget-object v1, p0, Lakj;->b:Laki;

    invoke-virtual {v1}, Laki;->notifyDataSetChanged()V

    .line 104
    return-void

    .line 87
    :cond_1
    const/16 v1, 0x32

    if-ne p1, v1, :cond_2

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    .line 90
    const/4 v0, 0x2

    goto :goto_0

    .line 91
    :cond_3
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_4

    .line 92
    const/4 v0, 0x3

    goto :goto_0

    .line 93
    :cond_4
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_5

    .line 94
    const/4 v0, 0x4

    goto :goto_0

    .line 95
    :cond_5
    const/16 v1, 0x190

    if-ne p1, v1, :cond_6

    .line 96
    const/4 v0, 0x5

    goto :goto_0

    .line 97
    :cond_6
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_7

    .line 98
    const/4 v0, 0x6

    goto :goto_0

    .line 99
    :cond_7
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 100
    const/4 v0, 0x7

    goto :goto_0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    .line 32
    new-instance v3, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .local v3, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setClickable(Z)V

    .line 35
    const/high16 v6, 0x60000

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setDescendantFocusability(I)V

    .line 36
    const v6, 0x7f0a0013

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundResource(I)V

    .line 37
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .local v1, "left":I
    move v2, v1

    .line 38
    .local v2, "right":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    .local v5, "top":I
    move v0, v5

    .line 39
    .local v0, "bottom":I
    invoke-virtual {v3, v1, v5, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    .line 41
    new-instance v6, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;

    invoke-direct {v6, p1}, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lakj;->a:Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;

    .line 42
    iget-object v6, p0, Lakj;->a:Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;->setNumColumns(I)V

    .line 43
    iget-object v6, p0, Lakj;->a:Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;->setGravity(I)V

    .line 44
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lakj;->c:Ljava/util/List;

    .line 45
    iget-object v6, p0, Lakj;->c:Ljava/util/List;

    const-string/jumbo v7, "10M"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v6, p0, Lakj;->c:Ljava/util/List;

    const-string/jumbo v7, "50M"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v6, p0, Lakj;->c:Ljava/util/List;

    const-string/jumbo v7, "100M"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v6, p0, Lakj;->c:Ljava/util/List;

    const-string/jumbo v7, "200M"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v6, p0, Lakj;->c:Ljava/util/List;

    const-string/jumbo v7, "300M"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v6, p0, Lakj;->c:Ljava/util/List;

    const-string/jumbo v7, "400M"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v6, p0, Lakj;->c:Ljava/util/List;

    const-string/jumbo v7, "500M"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v6, p0, Lakj;->c:Ljava/util/List;

    const-string/jumbo v7, "1G"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v6, Laki;

    iget-object v7, p0, Lakj;->c:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct {v6, p1, v7, v8}, Laki;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V

    iput-object v6, p0, Lakj;->b:Laki;

    .line 54
    iget-object v6, p0, Lakj;->a:Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;

    iget-object v7, p0, Lakj;->b:Laki;

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v4, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xe

    invoke-virtual {v4, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57
    iget-object v6, p0, Lakj;->a:Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;

    invoke-virtual {v3, v6, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-object v3
.end method
