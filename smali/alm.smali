.class public final Lalm;
.super Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;
.source "NewsSettingFragment.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private d:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private e:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private f:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

.field private g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field private i:Laic;

.field private j:Laic;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;-><init>()V

    .line 43
    const-string/jumbo v0, "NewsSettingFragment"

    iput-object v0, p0, Lalm;->a:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lalm;->k:Ljava/util/ArrayList;

    .line 57
    const-string/jumbo v0, "News"

    iput-object v0, p0, Lalm;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Laic;
    .locals 2
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v0, Laic;

    invoke-direct {v0}, Laic;-><init>()V

    .line 389
    .local v0, "homeCardItem":Laic;
    const-string/jumbo v1, "News"

    invoke-virtual {v0, v1}, Laic;->a(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v1, "\u65b0\u95fb\u5361\u7247"

    invoke-virtual {v0, v1}, Laic;->b(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, p2}, Laic;->c(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, p1}, Laic;->d(Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Laic;->a(I)V

    .line 394
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laic;->b(I)V

    .line 395
    return-object v0
.end method

.method static synthetic a(Lalm;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lalm;

    .prologue
    .line 42
    iget-object v0, p0, Lalm;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method static synthetic b(Lalm;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lalm;

    .prologue
    .line 42
    iget-object v0, p0, Lalm;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 228
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v2

    const-string/jumbo v3, "News"

    invoke-virtual {v2, v3}, Lakm;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lalm;->h:Ljava/util/List;

    .line 229
    const-string/jumbo v2, "News"

    iput-object v2, p0, Lalm;->l:Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lalm;->h:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lalm;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 231
    iget-object v2, p0, Lalm;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laic;

    .line 232
    .local v1, "homeCardItem":Laic;
    const-string/jumbo v3, "top"

    invoke-virtual {v1}, Laic;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lalm;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 234
    iput-object v1, p0, Lalm;->i:Laic;

    goto :goto_0

    .line 235
    :cond_0
    const-string/jumbo v3, "local"

    invoke-virtual {v1}, Laic;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, p0, Lalm;->d:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 237
    iput-object v1, p0, Lalm;->j:Laic;

    goto :goto_0

    .line 240
    :cond_1
    iget-object v3, p0, Lalm;->e:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 241
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    invoke-direct {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;-><init>()V

    .line 242
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v1}, Laic;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->setName(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Laic;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->setId(Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lalm;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    .end local v1    # "homeCardItem":Laic;
    :cond_2
    return-void
.end method

.method static synthetic c(Lalm;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lalm;

    .prologue
    .line 42
    iget-object v0, p0, Lalm;->d:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method static synthetic d(Lalm;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lalm;

    .prologue
    .line 42
    iget-object v0, p0, Lalm;->e:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method static synthetic e(Lalm;)Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;
    .locals 1
    .param p0, "x0"    # Lalm;

    .prologue
    .line 42
    iget-object v0, p0, Lalm;->f:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    return-object v0
.end method

.method static synthetic f(Lalm;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lalm;

    .prologue
    .line 42
    iget-object v0, p0, Lalm;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lalm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lalm;

    .prologue
    .line 42
    iget-object v0, p0, Lalm;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lalm;->f:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lalm;->f:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->setVisible(Z)V

    .line 343
    iget-object v0, p0, Lalm;->f:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    iget-object v1, p0, Lalm;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->updateView(Ljava/util/ArrayList;)V

    .line 345
    :cond_0
    return-void
.end method

.method public a(IZLcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "status"    # Z
    .param p3, "CheckBoxSetting"    # Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .prologue
    .line 195
    if-eqz p2, :cond_0

    .line 196
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->addSmartSchedule(I)V

    .line 197
    const-string/jumbo v1, "NewsSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwitchClick: addSmartSchedule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 201
    invoke-static {p1}, Lawh;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "smartType":Ljava/lang/String;
    iget-object v1, p0, Lalm;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "add"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    invoke-virtual {p3, p2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 214
    return-void

    .line 204
    .end local v0    # "smartType":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 205
    const-string/jumbo v1, "NewsSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwitchClick: removeSmartSchedule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 209
    invoke-static {p1}, Lawh;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0    # "smartType":Ljava/lang/String;
    iget-object v1, p0, Lalm;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "cancel"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected loadData(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 74
    iput-object p1, p0, Lalm;->b:Landroid/content/Context;

    .line 75
    const-string/jumbo v1, "NewsSettingFragment"

    const-string/jumbo v2, "loadData: "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string/jumbo v1, "\u63a8\u8350\u70ed\u95e8\u3001\u672c\u5730\u65b0\u95fb\u548c\u4f60\u559c\u6b22\u7684\u65b0\u95fb"

    invoke-virtual {p0, v1}, Lalm;->setTipText(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v1

    iput-boolean v1, p0, Lalm;->m:Z

    .line 80
    const-string/jumbo v1, "NewsSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCheckSate: isHotNewsGray "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lalm;->m:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-boolean v1, p0, Lalm;->m:Z

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v1, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lalm;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 83
    iget-object v1, p0, Lalm;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v2, "\u70ed\u70b9\u65b0\u95fb\u63a8\u9001"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lalm;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 85
    iget-object v1, p0, Lalm;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setBottomLineVisible(Z)V

    .line 87
    iget-object v1, p0, Lalm;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v1}, Lalm;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 88
    invoke-static {v6}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v0

    .line 89
    .local v0, "hotPushState":Z
    iget-object v1, p0, Lalm;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 91
    iget-object v1, p0, Lalm;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v2, Lalm$1;

    invoke-direct {v2, p0}, Lalm$1;-><init>(Lalm;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0, v5}, Lalm;->addDiverView(I)V

    .line 111
    .end local v0    # "hotPushState":Z
    :cond_0
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v1, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lalm;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 112
    iget-object v1, p0, Lalm;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v2, "\u5934\u6761\u65b0\u95fb"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lalm;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 114
    iget-object v1, p0, Lalm;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v1}, Lalm;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 115
    iget-object v1, p0, Lalm;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v2, Lalm$2;

    invoke-direct {v2, p0}, Lalm$2;-><init>(Lalm;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0, v5}, Lalm;->addDiverView(I)V

    .line 133
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v1, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lalm;->d:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 134
    iget-object v1, p0, Lalm;->d:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v2, "\u672c\u5730\u65b0\u95fb"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lalm;->d:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v1}, Lalm;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 136
    iget-object v1, p0, Lalm;->d:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v2, Lalm$3;

    invoke-direct {v2, p0}, Lalm$3;-><init>(Lalm;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0, v5}, Lalm;->addDiverView(I)V

    .line 155
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v1, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lalm;->e:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 156
    iget-object v1, p0, Lalm;->e:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v2, "\u5206\u7c7b\u65b0\u95fb"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lalm;->e:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setBottomLineVisible(Z)V

    .line 158
    iget-object v1, p0, Lalm;->e:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v1}, Lalm;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 161
    invoke-direct {p0}, Lalm;->b()V

    .line 164
    new-instance v1, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-virtual {p0}, Lalm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lalm;->k:Ljava/util/ArrayList;

    iget-object v4, p0, Lalm;->l:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, p0, Lalm;->f:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    .line 165
    iget-object v1, p0, Lalm;->f:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-virtual {p0, v1}, Lalm;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 167
    iget-object v1, p0, Lalm;->e:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v2, Lalm$4;

    invoke-direct {v2, p0}, Lalm$4;-><init>(Lalm;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method public onDestroy()V
    .locals 13

    .prologue
    .line 252
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onDestroy()V

    .line 253
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v10

    invoke-virtual {v10, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 254
    const/4 v8, 0x0

    .line 257
    .local v8, "isChange":Z
    iget-object v10, p0, Lalm;->i:Laic;

    if-nez v10, :cond_0

    iget-object v10, p0, Lalm;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 258
    const/4 v8, 0x1

    .line 259
    const-string/jumbo v10, "\u5934\u6761\u65b0\u95fb"

    const-string/jumbo v11, "top"

    invoke-direct {p0, v10, v11}, Lalm;->a(Ljava/lang/String;Ljava/lang/String;)Laic;

    move-result-object v10

    iput-object v10, p0, Lalm;->i:Laic;

    .line 260
    iget-object v10, p0, Lalm;->h:Ljava/util/List;

    iget-object v11, p0, Lalm;->i:Laic;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    iget-object v10, p0, Lalm;->i:Laic;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lalm;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-nez v10, :cond_1

    .line 264
    const/4 v8, 0x1

    .line 265
    iget-object v10, p0, Lalm;->h:Ljava/util/List;

    iget-object v11, p0, Lalm;->i:Laic;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    iget-object v10, p0, Lalm;->j:Laic;

    if-nez v10, :cond_2

    iget-object v10, p0, Lalm;->d:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 271
    const/4 v8, 0x1

    .line 272
    const-string/jumbo v10, "\u672c\u5730\u65b0\u95fb"

    const-string/jumbo v11, "local"

    invoke-direct {p0, v10, v11}, Lalm;->a(Ljava/lang/String;Ljava/lang/String;)Laic;

    move-result-object v10

    iput-object v10, p0, Lalm;->j:Laic;

    .line 273
    iget-object v10, p0, Lalm;->h:Ljava/util/List;

    iget-object v11, p0, Lalm;->j:Laic;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_2
    iget-object v10, p0, Lalm;->j:Laic;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lalm;->d:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-nez v10, :cond_3

    .line 277
    const/4 v8, 0x1

    .line 278
    iget-object v10, p0, Lalm;->h:Ljava/util/List;

    iget-object v11, p0, Lalm;->j:Laic;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    :cond_3
    iget-object v10, p0, Lalm;->h:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_8

    .line 284
    iget-object v10, p0, Lalm;->h:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laic;

    invoke-virtual {v10}, Laic;->c()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "contentId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 287
    .local v9, "isHave":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "top"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "local"

    .line 288
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 283
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 291
    :cond_5
    iget-object v10, p0, Lalm;->k:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 292
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 293
    const/4 v9, 0x1

    .line 297
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    :cond_7
    if-nez v9, :cond_4

    .line 298
    const/4 v8, 0x1

    .line 299
    iget-object v10, p0, Lalm;->h:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 304
    .end local v2    # "contentId":Ljava/lang/String;
    .end local v9    # "isHave":Z
    :cond_8
    iget-object v10, p0, Lalm;->e:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v10}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 306
    iget-object v10, p0, Lalm;->k:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 307
    .restart local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 308
    .restart local v2    # "contentId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "contentName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 310
    .restart local v9    # "isHave":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 313
    iget-object v11, p0, Lalm;->h:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laic;

    .line 314
    .local v6, "homeCardItem":Laic;
    invoke-virtual {v6}, Laic;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 315
    const/4 v9, 0x1

    .line 319
    .end local v6    # "homeCardItem":Laic;
    :cond_b
    if-nez v9, :cond_9

    .line 320
    const/4 v8, 0x1

    .line 321
    iget-object v11, p0, Lalm;->h:Ljava/util/List;

    invoke-direct {p0, v4, v2}, Lalm;->a(Ljava/lang/String;Ljava/lang/String;)Laic;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 327
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    .end local v2    # "contentId":Ljava/lang/String;
    .end local v4    # "contentName":Ljava/lang/String;
    .end local v9    # "isHave":Z
    :cond_c
    if-eqz v8, :cond_e

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v3, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v5, "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lalm;->h:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laic;

    .line 331
    .restart local v6    # "homeCardItem":Laic;
    invoke-virtual {v6}, Laic;->c()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v6}, Laic;->d()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 334
    .end local v6    # "homeCardItem":Laic;
    :cond_d
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v10

    const-string/jumbo v11, "News"

    const-string/jumbo v12, "\u65b0\u95fb\u5361\u7247"

    invoke-virtual {v10, v11, v12, v3, v5}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 335
    new-instance v1, Laia;

    invoke-direct {v1}, Laia;-><init>()V

    .line 336
    .local v1, "changeOrderEvent":Laia;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v10

    invoke-virtual {v10, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 338
    .end local v1    # "changeOrderEvent":Laia;
    .end local v3    # "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    return-void
.end method

.method public onEvent(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;)V
    .locals 6
    .param p1, "categoryChangeEvent"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;

    .prologue
    .line 350
    if-nez p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->getGroupId()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "groupId":Ljava/lang/String;
    const-string/jumbo v4, "News"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "contentId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 360
    iget-object v4, p0, Lalm;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 361
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 362
    iget-object v4, p0, Lalm;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    :cond_3
    :goto_1
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lalm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lalm$5;

    invoke-direct {v5, p0}, Lalm$5;-><init>(Lalm;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    .end local v1    # "contentId":Ljava/lang/String;
    .end local v3    # "groupId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NewsSettingFragment"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 368
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "contentId":Ljava/lang/String;
    .restart local v3    # "groupId":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->getCardCategoryItems()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lalm;->k:Ljava/util/ArrayList;
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
    .line 219
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    const-string/jumbo v0, "NewsSettingFragment"

    const-string/jumbo v1, "onViewCreated: "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string/jumbo v0, "\u65b0\u95fb"

    invoke-virtual {p0, v0}, Lalm;->setTitleText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lalm;->b:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100126"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 70
    return-void
.end method
