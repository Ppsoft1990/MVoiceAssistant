.class public Lawz;
.super Landroid/widget/BaseAdapter;
.source "ScheduleRingToneAdapter.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/tone/ListDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private f:[I

.field private g:I

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const-string/jumbo v0, "ScheduleRingToneAdapter"

    iput-object v0, p0, Lawz;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lawz;->d:I

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lawz;->e:I

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lawz;->f:[I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lawz;->g:I

    .line 40
    const-string/jumbo v0, " (\u8bd5\u542c\u793a\u4f8b)"

    iput-object v0, p0, Lawz;->h:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lawz;->b:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawz;->c:Ljava/util/List;

    .line 45
    return-void

    .line 35
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lawz;->g:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 97
    iput p1, p0, Lawz;->g:I

    .line 98
    invoke-virtual {p0}, Lawz;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/tone/ListDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/tone/ListDataItem;>;"
    iget-object v0, p0, Lawz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lawz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_0
    invoke-virtual {p0}, Lawz;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lawz;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lawz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lawz;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 67
    iget-object v0, p0, Lawz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lawz;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lawz;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_1
    iget-object v0, p0, Lawz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u672c\u5730\u94c3\u58f0"

    invoke-static {v0, v2}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, -0x1

    .line 107
    invoke-virtual {p0, p1}, Lawz;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 108
    const-string/jumbo v3, "ScheduleRingToneAdapter"

    const-string/jumbo v4, "getView VIEW_TYPE_TITLE"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-nez p2, :cond_0

    .line 110
    new-instance p2, Lcom/iflytek/base/skin/customView/XTextView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lawz;->b:Landroid/content/Context;

    invoke-direct {p2, v3}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .line 112
    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    move-object v3, p2

    .line 113
    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v4, "schedule_tone_setting_title"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    move-object v3, p2

    .line 115
    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v4, "color.schedule_tone_setting_title_bg"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 118
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v3, p0, Lawz;->b:Landroid/content/Context;

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 119
    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v0, v6, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 120
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    :goto_0
    return-object p2

    .line 122
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const-string/jumbo v3, "ScheduleRingToneAdapter"

    const-string/jumbo v4, "getView VIEW_TYPE_DATA"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-nez p2, :cond_2

    .line 124
    new-instance p2, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lawz;->b:Landroid/content/Context;

    invoke-direct {p2, v3}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    move-object v2, p2

    .line 126
    check-cast v2, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;

    .line 128
    .local v2, "scheduleRingToneItem":Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;
    iget-object v3, p0, Lawz;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 130
    .local v1, "ringTone":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->setTitle(Ljava/lang/String;)V

    .line 131
    iget v3, p0, Lawz;->g:I

    if-ne p1, v3, :cond_4

    .line 132
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->a()V

    .line 133
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (\u8bd5\u542c\u793a\u4f8b)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->setTitle(Ljava/lang/String;)V

    .line 139
    :cond_3
    :goto_1
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v3, p0, Lawz;->b:Landroid/content/Context;

    const-wide v4, 0x4049800000000000L    # 51.0

    .line 140
    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v0, v6, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 141
    .restart local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v3, p0, Lawz;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_5

    .line 144
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->setDividerLine(Z)V

    goto :goto_0

    .line 137
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_4
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->b()V

    goto :goto_1

    .line 146
    .restart local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneItem;->setDividerLine(Z)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lawz;->f:[I

    array-length v0, v0

    return v0
.end method
