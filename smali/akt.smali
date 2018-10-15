.class public Lakt;
.super Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;
.source "FoodSettingFragment.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field private f:Laic;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;-><init>()V

    .line 38
    const-string/jumbo v0, "FoodSettingFragment"

    iput-object v0, p0, Lakt;->a:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lakt;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Laic;
    .locals 2
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Laic;

    invoke-direct {v0}, Laic;-><init>()V

    .line 260
    .local v0, "homeCardItem":Laic;
    const-string/jumbo v1, "Food"

    invoke-virtual {v0, v1}, Laic;->a(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v1, "\u7f8e\u98df\u5361\u7247"

    invoke-virtual {v0, v1}, Laic;->b(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p2}, Laic;->c(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p1}, Laic;->d(Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Laic;->a(I)V

    .line 265
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laic;->b(I)V

    .line 266
    return-object v0
.end method

.method static synthetic a(Lakt;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lakt;

    .prologue
    .line 37
    iget-object v0, p0, Lakt;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method static synthetic b(Lakt;)Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;
    .locals 1
    .param p0, "x0"    # Lakt;

    .prologue
    .line 37
    iget-object v0, p0, Lakt;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    return-object v0
.end method

.method static synthetic c(Lakt;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lakt;

    .prologue
    .line 37
    iget-object v0, p0, Lakt;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lakt;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lakt;

    .prologue
    .line 37
    iget-object v0, p0, Lakt;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lakt;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lakt;

    .prologue
    .line 37
    iget-object v0, p0, Lakt;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lakt;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lakt;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->setVisible(Z)V

    .line 214
    iget-object v0, p0, Lakt;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    iget-object v1, p0, Lakt;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->updateView(Ljava/util/ArrayList;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected loadData(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 58
    const-string/jumbo v2, "\u63a8\u8350\u9644\u8fd1\u7f8e\u98df\u548c\u4f60\u559c\u6b22\u7684\u7f8e\u98df"

    invoke-virtual {p0, v2}, Lakt;->setTipText(Ljava/lang/String;)V

    .line 60
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lakt;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 61
    iget-object v2, p0, Lakt;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v3, "\u9644\u8fd1\u7f8e\u98df"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lakt;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setBottomLineVisible(Z)V

    .line 63
    iget-object v2, p0, Lakt;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v5, v2}, Lakt;->add(ILcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 66
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lakt;->addDiverView(I)V

    .line 68
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lakt;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 69
    iget-object v2, p0, Lakt;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v3, "\u5206\u7c7b\u7f8e\u98df"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lakt;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 71
    iget-object v2, p0, Lakt;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v2}, Lakt;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 73
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v2

    const-string/jumbo v3, "Food"

    invoke-virtual {v2, v3}, Lakm;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lakt;->e:Ljava/util/List;

    .line 74
    const-string/jumbo v2, "Food"

    iput-object v2, p0, Lakt;->h:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lakt;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lakt;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 76
    iget-object v2, p0, Lakt;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laic;

    .line 77
    .local v1, "homeCardItem":Laic;
    const-string/jumbo v3, "recommend"

    invoke-virtual {v1}, Laic;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lakt;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 79
    iput-object v1, p0, Lakt;->f:Laic;

    goto :goto_0

    .line 82
    :cond_0
    iget-object v3, p0, Lakt;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 83
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    invoke-direct {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;-><init>()V

    .line 84
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v1}, Laic;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->setName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Laic;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->setId(Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lakt;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    .end local v1    # "homeCardItem":Laic;
    :cond_1
    new-instance v2, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-virtual {p0}, Lakt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lakt;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lakt;->h:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v2, p0, Lakt;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    .line 92
    iget-object v2, p0, Lakt;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-virtual {p0, v2}, Lakt;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 94
    iget-object v2, p0, Lakt;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v3, Lakt$1;

    invoke-direct {v3, p0}, Lakt$1;-><init>(Lakt;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lakt;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v3, Lakt$2;

    invoke-direct {v3, p0}, Lakt$2;-><init>(Lakt;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method public onDestroy()V
    .locals 13

    .prologue
    .line 139
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onDestroy()V

    .line 140
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v10

    invoke-virtual {v10, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 141
    const/4 v8, 0x0

    .line 143
    .local v8, "isChange":Z
    iget-object v10, p0, Lakt;->f:Laic;

    if-nez v10, :cond_0

    iget-object v10, p0, Lakt;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 144
    const/4 v8, 0x1

    .line 145
    const-string/jumbo v10, "\u9644\u8fd1\u7f8e\u98df"

    const-string/jumbo v11, "recommend"

    invoke-direct {p0, v10, v11}, Lakt;->a(Ljava/lang/String;Ljava/lang/String;)Laic;

    move-result-object v10

    iput-object v10, p0, Lakt;->f:Laic;

    .line 146
    iget-object v10, p0, Lakt;->e:Ljava/util/List;

    const/4 v11, 0x0

    iget-object v12, p0, Lakt;->f:Laic;

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 149
    :cond_0
    iget-object v10, p0, Lakt;->f:Laic;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lakt;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-nez v10, :cond_1

    .line 150
    const/4 v8, 0x1

    .line 151
    iget-object v10, p0, Lakt;->e:Ljava/util/List;

    iget-object v11, p0, Lakt;->f:Laic;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    iget-object v10, p0, Lakt;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_6

    .line 156
    iget-object v10, p0, Lakt;->e:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laic;

    invoke-virtual {v10}, Laic;->c()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "contentId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 159
    .local v9, "isHave":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "recommend"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 155
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 162
    :cond_3
    iget-object v10, p0, Lakt;->g:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 163
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 164
    const/4 v9, 0x1

    .line 168
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    :cond_5
    if-nez v9, :cond_2

    .line 169
    const/4 v8, 0x1

    .line 170
    iget-object v10, p0, Lakt;->e:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 175
    .end local v2    # "contentId":Ljava/lang/String;
    .end local v9    # "isHave":Z
    :cond_6
    iget-object v10, p0, Lakt;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 177
    iget-object v10, p0, Lakt;->g:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 178
    .restart local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 179
    .restart local v2    # "contentId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "contentName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 181
    .restart local v9    # "isHave":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 184
    iget-object v11, p0, Lakt;->e:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laic;

    .line 185
    .local v6, "homeCardItem":Laic;
    invoke-virtual {v6}, Laic;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 186
    const/4 v9, 0x1

    .line 190
    .end local v6    # "homeCardItem":Laic;
    :cond_9
    if-nez v9, :cond_7

    .line 191
    const/4 v8, 0x1

    .line 192
    iget-object v11, p0, Lakt;->e:Ljava/util/List;

    invoke-direct {p0, v4, v2}, Lakt;->a(Ljava/lang/String;Ljava/lang/String;)Laic;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 198
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    .end local v2    # "contentId":Ljava/lang/String;
    .end local v4    # "contentName":Ljava/lang/String;
    .end local v9    # "isHave":Z
    :cond_a
    if-eqz v8, :cond_c

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v3, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v5, "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lakt;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laic;

    .line 202
    .restart local v6    # "homeCardItem":Laic;
    invoke-virtual {v6}, Laic;->c()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v6}, Laic;->d()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 205
    .end local v6    # "homeCardItem":Laic;
    :cond_b
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v10

    const-string/jumbo v11, "Food"

    const-string/jumbo v12, "\u7f8e\u98df\u5361\u7247"

    invoke-virtual {v10, v11, v12, v3, v5}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 206
    new-instance v1, Laia;

    invoke-direct {v1}, Laia;-><init>()V

    .line 207
    .local v1, "changeOrderEvent":Laia;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v10

    invoke-virtual {v10, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 209
    .end local v1    # "changeOrderEvent":Laia;
    .end local v3    # "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    return-void
.end method

.method public onEvent(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;)V
    .locals 6
    .param p1, "categoryChangeEvent"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;

    .prologue
    .line 221
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->getGroupId()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "groupId":Ljava/lang/String;
    const-string/jumbo v4, "Food"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "contentId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 231
    iget-object v4, p0, Lakt;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 232
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    iget-object v4, p0, Lakt;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    :cond_3
    :goto_1
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lakt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lakt$3;

    invoke-direct {v5, p0}, Lakt$3;-><init>(Lakt;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v1    # "contentId":Ljava/lang/String;
    .end local v3    # "groupId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "FoodSettingFragment"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "contentId":Ljava/lang/String;
    .restart local v3    # "groupId":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->getCardCategoryItems()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lakt;->g:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    const-string/jumbo v0, "\u7f8e\u98df"

    invoke-virtual {p0, v0}, Lakt;->setTitleText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lakt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100124"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 54
    return-void
.end method
