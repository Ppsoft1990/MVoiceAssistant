.class public Lavt;
.super Landroid/widget/BaseAdapter;
.source "ScheduleDoneListDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavt$a;
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
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resouce"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lavt;->a:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lavt;->c:Ljava/util/List;

    .line 39
    iput p2, p0, Lavt;->d:I

    .line 40
    iget-object v0, p0, Lavt;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lavt;->b:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/base/skin/customView/XImageView;)V
    .locals 3
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "imageView"    # Lcom/iflytek/base/skin/customView/XImageView;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    .line 117
    .local v0, "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "subType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v2

    invoke-static {p2, v0, v1, v2}, Lawg;->a(Lcom/iflytek/base/skin/customView/XImageView;Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;Z)V

    .line 119
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v0, p0, Lavt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lavt;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_0
    invoke-virtual {p0}, Lavt;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lavt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lavt;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 71
    iget-object v4, p0, Lavt;->c:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 72
    .local v3, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    const/4 v0, 0x0

    .line 73
    .local v0, "holder":Lavt$a;
    if-nez p2, :cond_0

    .line 74
    iget-object v4, p0, Lavt;->b:Landroid/view/LayoutInflater;

    iget v5, p0, Lavt;->d:I

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v0, Lavt$a;

    .end local v0    # "holder":Lavt$a;
    invoke-direct {v0, p0, v7}, Lavt$a;-><init>(Lavt;Lavt$1;)V

    .line 76
    .restart local v0    # "holder":Lavt$a;
    const v4, 0x7f0b05f8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v4, v0, Lavt$a;->a:Lcom/iflytek/base/skin/customView/XImageView;

    .line 77
    const v4, 0x7f0b05f9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lavt$a;->b:Landroid/widget/TextView;

    .line 78
    const v4, 0x7f0b05fa

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lavt$a;->c:Landroid/widget/TextView;

    .line 79
    const v4, 0x7f0b05fb

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v4, v0, Lavt$a;->e:Lcom/iflytek/base/skin/customView/XTextView;

    .line 80
    const v4, 0x7f0b05fc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v4, v0, Lavt$a;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 81
    const v4, 0x7f0b05fd

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lavt$a;->f:Landroid/view/View;

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget-object v4, v0, Lavt$a;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {p0, v3, v4}, Lavt;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/base/skin/customView/XImageView;)V

    .line 95
    iget-object v4, v0, Lavt$a;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lavt;->a:Landroid/content/Context;

    invoke-static {v5, v3}, Lawh;->b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, v0, Lavt$a;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lavt;->a:Landroid/content/Context;

    invoke-static {v5, v3}, Lawh;->c(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, v0, Lavt$a;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    .local v2, "paramDivider":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lavt;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_1

    .line 102
    iget-object v4, p0, Lavt;->a:Landroid/content/Context;

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .line 103
    .local v1, "marginPx":I
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 104
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 109
    .end local v1    # "marginPx":I
    :goto_1
    iget-object v4, v0, Lavt$a;->f:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-object p2

    .line 84
    .end local v2    # "paramDivider":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lavt$a;
    check-cast v0, Lavt$a;

    .restart local v0    # "holder":Lavt$a;
    goto :goto_0

    .line 106
    .restart local v2    # "paramDivider":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 107
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method
