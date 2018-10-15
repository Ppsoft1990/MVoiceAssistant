.class public Lakz;
.super Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;
.source "ListenSettingFragment.java"


# instance fields
.field private a:Ljava/lang/String;

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
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;-><init>()V

    .line 39
    const-string/jumbo v0, "ListenSettingFragment"

    iput-object v0, p0, Lakz;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lakz;->g:Ljava/util/ArrayList;

    .line 46
    const-string/jumbo v0, "ListenBook"

    iput-object v0, p0, Lakz;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Laic;
    .locals 2
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Laic;

    invoke-direct {v0}, Laic;-><init>()V

    .line 262
    .local v0, "homeCardItem":Laic;
    const-string/jumbo v1, "ListenBook"

    invoke-virtual {v0, v1}, Laic;->a(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "\u542c\u4e66\u5361\u7247"

    invoke-virtual {v0, v1}, Laic;->b(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p2}, Laic;->c(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p1}, Laic;->d(Ljava/lang/String;)V

    .line 266
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Laic;->a(I)V

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laic;->b(I)V

    .line 268
    return-object v0
.end method

.method static synthetic a(Lakz;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lakz;

    .prologue
    .line 38
    iget-object v0, p0, Lakz;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method static synthetic b(Lakz;)Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;
    .locals 1
    .param p0, "x0"    # Lakz;

    .prologue
    .line 38
    iget-object v0, p0, Lakz;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    return-object v0
.end method

.method static synthetic c(Lakz;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lakz;

    .prologue
    .line 38
    iget-object v0, p0, Lakz;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lakz;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lakz;

    .prologue
    .line 38
    iget-object v0, p0, Lakz;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lakz;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lakz;

    .prologue
    .line 38
    iget-object v0, p0, Lakz;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lakz;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lakz;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->setVisible(Z)V

    .line 215
    iget-object v0, p0, Lakz;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    iget-object v1, p0, Lakz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->updateView(Ljava/util/ArrayList;)V

    .line 217
    :cond_0
    return-void
.end method

.method protected loadData(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    const-string/jumbo v2, "\u63a8\u8350\u70ed\u95e8\u56fe\u4e66\u548c\u4f60\u559c\u6b22\u7684\u56fe\u4e66"

    invoke-virtual {p0, v2}, Lakz;->setTipText(Ljava/lang/String;)V

    .line 60
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lakz;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 61
    iget-object v2, p0, Lakz;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v3, "\u70ed\u95e8\u63a8\u8350"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lakz;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 63
    iget-object v2, p0, Lakz;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v2}, Lakz;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 66
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lakz;->addDiverView(I)V

    .line 68
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lakz;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 69
    iget-object v2, p0, Lakz;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v3, "\u5206\u7c7b\u542c\u4e66"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lakz;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 71
    iget-object v2, p0, Lakz;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v2}, Lakz;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 73
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v2

    const-string/jumbo v3, "ListenBook"

    invoke-virtual {v2, v3}, Lakm;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lakz;->e:Ljava/util/List;

    .line 74
    iget-object v2, p0, Lakz;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lakz;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 75
    iget-object v2, p0, Lakz;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laic;

    .line 76
    .local v1, "homeCardItem":Laic;
    const-string/jumbo v3, "recommend"

    invoke-virtual {v1}, Laic;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lakz;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 79
    iput-object v1, p0, Lakz;->f:Laic;

    goto :goto_0

    .line 82
    :cond_0
    iget-object v3, p0, Lakz;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

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
    iget-object v3, p0, Lakz;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    .end local v1    # "homeCardItem":Laic;
    :cond_1
    new-instance v2, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-virtual {p0}, Lakz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lakz;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lakz;->h:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v2, p0, Lakz;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    .line 91
    iget-object v2, p0, Lakz;->d:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-virtual {p0, v2}, Lakz;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 93
    iget-object v2, p0, Lakz;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v3, Lakz$1;

    invoke-direct {v3, p0}, Lakz$1;-><init>(Lakz;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lakz;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v3, Lakz$2;

    invoke-direct {v3, p0}, Lakz$2;-><init>(Lakz;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 13

    .prologue
    .line 140
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onDestroy()V

    .line 141
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v10

    invoke-virtual {v10, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 142
    const/4 v8, 0x0

    .line 144
    .local v8, "isChange":Z
    iget-object v10, p0, Lakz;->f:Laic;

    if-nez v10, :cond_0

    iget-object v10, p0, Lakz;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 145
    const/4 v8, 0x1

    .line 146
    const-string/jumbo v10, "\u542c\u4e66\u63a8\u8350"

    const-string/jumbo v11, "recommend"

    invoke-direct {p0, v10, v11}, Lakz;->a(Ljava/lang/String;Ljava/lang/String;)Laic;

    move-result-object v10

    iput-object v10, p0, Lakz;->f:Laic;

    .line 147
    iget-object v10, p0, Lakz;->e:Ljava/util/List;

    iget-object v11, p0, Lakz;->f:Laic;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    iget-object v10, p0, Lakz;->f:Laic;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lakz;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-nez v10, :cond_1

    .line 151
    const/4 v8, 0x1

    .line 152
    iget-object v10, p0, Lakz;->e:Ljava/util/List;

    iget-object v11, p0, Lakz;->f:Laic;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    iget-object v10, p0, Lakz;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_6

    .line 157
    iget-object v10, p0, Lakz;->e:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laic;

    invoke-virtual {v10}, Laic;->c()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "contentId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 160
    .local v9, "isHave":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "recommend"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 156
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 163
    :cond_3
    iget-object v10, p0, Lakz;->g:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 164
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 165
    const/4 v9, 0x1

    .line 169
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    :cond_5
    if-nez v9, :cond_2

    .line 170
    const/4 v8, 0x1

    .line 171
    iget-object v10, p0, Lakz;->e:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 176
    .end local v2    # "contentId":Ljava/lang/String;
    .end local v9    # "isHave":Z
    :cond_6
    iget-object v10, p0, Lakz;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 178
    iget-object v10, p0, Lakz;->g:Ljava/util/ArrayList;

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

    .line 179
    .restart local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2    # "contentId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "contentName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 182
    .restart local v9    # "isHave":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 185
    iget-object v11, p0, Lakz;->e:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laic;

    .line 186
    .local v6, "homeCardItem":Laic;
    invoke-virtual {v6}, Laic;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 187
    const/4 v9, 0x1

    .line 191
    .end local v6    # "homeCardItem":Laic;
    :cond_9
    if-nez v9, :cond_7

    .line 192
    const/4 v8, 0x1

    .line 193
    iget-object v11, p0, Lakz;->e:Ljava/util/List;

    invoke-direct {p0, v4, v2}, Lakz;->a(Ljava/lang/String;Ljava/lang/String;)Laic;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 199
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    .end local v2    # "contentId":Ljava/lang/String;
    .end local v4    # "contentName":Ljava/lang/String;
    .end local v9    # "isHave":Z
    :cond_a
    if-eqz v8, :cond_c

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v3, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v5, "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lakz;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laic;

    .line 203
    .restart local v6    # "homeCardItem":Laic;
    invoke-virtual {v6}, Laic;->c()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v6}, Laic;->d()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 206
    .end local v6    # "homeCardItem":Laic;
    :cond_b
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v10

    const-string/jumbo v11, "ListenBook"

    const-string/jumbo v12, "\u542c\u4e66\u5361\u7247"

    invoke-virtual {v10, v11, v12, v3, v5}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 207
    new-instance v1, Laia;

    invoke-direct {v1}, Laia;-><init>()V

    .line 208
    .local v1, "changeOrderEvent":Laia;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v10

    invoke-virtual {v10, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 210
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
    .line 222
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->getGroupId()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "groupId":Ljava/lang/String;
    const-string/jumbo v4, "ListenBook"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "contentId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 232
    iget-object v4, p0, Lakz;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 233
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    iget-object v4, p0, Lakz;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    :cond_3
    :goto_1
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lakz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lakz$3;

    invoke-direct {v5, p0}, Lakz$3;-><init>(Lakz;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v1    # "contentId":Ljava/lang/String;
    .end local v3    # "groupId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lakz;->a:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 241
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "contentId":Ljava/lang/String;
    .restart local v3    # "groupId":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->getCardCategoryItems()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lakz;->g:Ljava/util/ArrayList;
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
    .line 136
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
    const-string/jumbo v0, "\u542c\u4e66"

    invoke-virtual {p0, v0}, Lakz;->setTitleText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lakz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100128"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 54
    return-void
.end method
