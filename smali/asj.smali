.class public Lasj;
.super Landroid/widget/BaseAdapter;
.source "InstalledPluginListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasj$a;,
        Lasj$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lase;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Context;


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
            "Lase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "pluginList":Ljava/util/List;, "Ljava/util/List<Lase;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lasj;->a:Ljava/util/List;

    .line 53
    invoke-virtual {p0, p2}, Lasj;->a(Ljava/util/List;)V

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lasj;->b:Landroid/view/LayoutInflater;

    .line 55
    iput-object p1, p0, Lasj;->d:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic a(Lasj;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lasj;

    .prologue
    .line 38
    iget-object v0, p0, Lasj;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Lasj$b;I)V
    .locals 4
    .param p1, "holder"    # Lasj$b;
    .param p2, "position"    # I

    .prologue
    .line 193
    iget-object v1, p0, Lasj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 194
    .local v0, "totalSize":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v1, p1, Lasj$b;->a:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v2, "statelist.oral_get_help_close_state"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 196
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 211
    :goto_0
    return-void

    .line 198
    :cond_0
    if-nez p2, :cond_1

    .line 199
    iget-object v1, p1, Lasj$b;->a:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v2, "statelist.remind_edit_top_item_state"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 202
    :cond_1
    add-int/lit8 v1, v0, -0x1

    if-ne p2, v1, :cond_2

    .line 203
    iget-object v1, p1, Lasj$b;->a:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v2, "statelist.remind_edit_btm_item_state"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v1, p1, Lasj$b;->a:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v2, "statelist.remind_edit_mid_item_state"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method

.method static synthetic b(Lasj;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lasj;

    .prologue
    .line 38
    iget-object v0, p0, Lasj;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 60
    iput-object p1, p0, Lasj;->c:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "pluginList":Ljava/util/List;, "Ljava/util/List<Lase;>;"
    iget-object v0, p0, Lasj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lasj;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lasj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 77
    const-string/jumbo v0, "InstalledPluginListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lasj;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lasj;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 83
    const-string/jumbo v0, "InstalledPluginListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lasj;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    iget-object v8, p0, Lasj;->a:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lase;

    .line 91
    .local v3, "pluginInfo":Lase;
    const/4 v0, 0x0

    .line 92
    .local v0, "holder":Lasj$b;
    if-nez p2, :cond_2

    .line 93
    iget-object v8, p0, Lasj;->b:Landroid/view/LayoutInflater;

    const v9, 0x7f0300db

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v0, Lasj$b;

    .end local v0    # "holder":Lasj$b;
    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lasj$b;-><init>(Lasj$1;)V

    .line 96
    .restart local v0    # "holder":Lasj$b;
    const v8, 0x7f0b0546

    .line 97
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v8, v0, Lasj$b;->a:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 100
    const v8, 0x7f0b0548

    .line 101
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v8, v0, Lasj$b;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 102
    const v8, 0x7f0b0549

    .line 103
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v8, v0, Lasj$b;->c:Lcom/iflytek/base/skin/customView/XTextView;

    .line 104
    const v8, 0x7f0b054b

    .line 105
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v8, v0, Lasj$b;->e:Lcom/iflytek/base/skin/customView/XButton;

    .line 106
    const v8, 0x7f0b054a

    .line 107
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    .line 110
    iget-object v8, v0, Lasj$b;->e:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 111
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lasj;->d:Landroid/content/Context;

    const-wide/high16 v10, 0x4037000000000000L    # 23.0

    invoke-static {v8, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    iget-object v8, p0, Lasj;->d:Landroid/content/Context;

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    invoke-static {v8, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    iget-object v8, v0, Lasj$b;->e:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v8, v2}, Lcom/iflytek/base/skin/customView/XButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    .line 116
    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 117
    .local v7, "updateparams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lasj;->d:Landroid/content/Context;

    const-wide/high16 v10, 0x4037000000000000L    # 23.0

    invoke-static {v8, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    iget-object v8, p0, Lasj;->d:Landroid/content/Context;

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    invoke-static {v8, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v8, v7}, Lcom/iflytek/base/skin/customView/XButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "updateparams":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {v3}, Lase;->b()I

    move-result v5

    .line 128
    .local v5, "pluginType":I
    invoke-direct {p0, v0, p1}, Lasj;->a(Lasj$b;I)V

    .line 135
    iget-object v8, v0, Lasj$b;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3}, Lase;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/16 v6, 0x8

    .line 139
    .local v6, "testVisibility":I
    const/4 v8, 0x3

    if-ne v5, v8, :cond_0

    .line 140
    const/4 v6, 0x0

    .line 142
    :cond_0
    iget-object v8, v0, Lasj$b;->c:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v8, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 146
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v8

    .line 148
    invoke-static {v5}, Lasa;->f(I)I

    move-result v9

    .line 147
    invoke-virtual {v8, v5, v9}, Lasg;->a(II)Z

    move-result v1

    .line 149
    .local v1, "isExistNewerPlugin":Z
    if-eqz v1, :cond_3

    .line 150
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 151
    invoke-static {}, Lari;->a()Lari;

    move-result-object v8

    .line 152
    invoke-virtual {v8, v5}, Lari;->b(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    move-result-object v4

    .line 153
    .local v4, "pluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    sget-object v8, Lasj$1;->a:[I

    invoke-virtual {v4}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 164
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    const v9, 0x7f0c02e3

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 165
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    new-instance v9, Lasj$a;

    const/4 v10, 0x1

    invoke-direct {v9, p0, p1, v10}, Lasj$a;-><init>(Lasj;IZ)V

    .line 166
    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .end local v4    # "pluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    :goto_1
    invoke-static {v5}, Lasb;->d(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 176
    iget-object v8, v0, Lasj$b;->e:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 177
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 178
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v9, "M812C"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 179
    iget-object v8, v0, Lasj$b;->e:Lcom/iflytek/base/skin/customView/XButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 182
    :cond_1
    iget-object v8, v0, Lasj$b;->e:Lcom/iflytek/base/skin/customView/XButton;

    new-instance v9, Lasj$a;

    const/4 v10, 0x0

    invoke-direct {v9, p0, p1, v10}, Lasj$a;-><init>(Lasj;IZ)V

    .line 183
    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :goto_2
    return-object p2

    .line 123
    .end local v1    # "isExistNewerPlugin":Z
    .end local v5    # "pluginType":I
    .end local v6    # "testVisibility":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lasj$b;
    check-cast v0, Lasj$b;

    .restart local v0    # "holder":Lasj$b;
    goto/16 :goto_0

    .line 155
    .restart local v1    # "isExistNewerPlugin":Z
    .restart local v4    # "pluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    .restart local v5    # "pluginType":I
    .restart local v6    # "testVisibility":I
    :pswitch_0
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    const v9, 0x7f0c02c6

    .line 156
    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 157
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 160
    :pswitch_1
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    const v9, 0x7f0c02e4

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 161
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 171
    .end local v4    # "pluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    :cond_3
    iget-object v8, v0, Lasj$b;->d:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto :goto_1

    .line 186
    :cond_4
    iget-object v8, v0, Lasj$b;->e:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto :goto_2

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
