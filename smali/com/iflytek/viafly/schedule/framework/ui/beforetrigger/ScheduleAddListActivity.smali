.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ScheduleAddListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ScrollView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ScrollView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

.field private l:Lcom/iflytek/viafly/smartschedule/ScheduleView;

.field private m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

.field private n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

.field private o:Lcom/iflytek/viafly/smartschedule/ScheduleView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;)V
    .locals 6
    .param p1, "category"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    .prologue
    const v5, 0x7f0a0010

    const v4, 0x7f0a000c

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 163
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v0, p1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c(Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SMARTSCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v0, p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    const-string/jumbo v1, "smartSchedule"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-static {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getSmartScheduleItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    move-result-object v1

    .line 328
    .local v1, "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "smart_schedule_item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    const-string/jumbo v2, "need_cover"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    const/16 v2, 0x3eb

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 125
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 126
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 127
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lavx;)V

    .line 128
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 131
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 132
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->d()V

    .line 133
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 136
    invoke-static {p0}, Lauu;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 138
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-static {p0, v1}, Lauu;->d(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    .line 139
    .local v2, "temp":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v2, :cond_0

    .line 140
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v2    # "temp":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v1, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 188
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-direct {v0, p0, v1, p0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;-><init>(Landroid/content/Context;ILcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 190
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const-string/jumbo v1, "image.ic_smart_card_umbrella"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setLogo(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const-string/jumbo v1, "\u4e0b\u96e8\u65f6\u63d0\u9192\u6211\u5e26\u4f1e"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setTitle(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-direct {v0, p0, v4, p0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;-><init>(Landroid/content/Context;ILcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const-string/jumbo v1, "image.ic_smart_card_cooling"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setLogo(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const-string/jumbo v1, "\u964d\u6e29\u65f6\u63d0\u9192\u6211\u52a0\u8863\u670d"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setTitle(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    :cond_1
    invoke-static {}, Lmz;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 210
    new-instance v0, Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-direct {v0, p0, v2, p0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;-><init>(Landroid/content/Context;ILcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 211
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const-string/jumbo v1, "image.ic_smart_card_flow"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setLogo(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const-string/jumbo v1, "\u624b\u673a\u6d41\u91cf\u4e0d\u8db3\u65f6\u63d0\u9192\u6211"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setTitle(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    new-instance v0, Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-direct {v0, p0, v3, p0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;-><init>(Landroid/content/Context;ILcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 220
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const-string/jumbo v1, "image.ic_smart_card_hotevent"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setLogo(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const-string/jumbo v1, "\u70ed\u95e8\u4e8b\u4ef6\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setTitle(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    :cond_4
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 299
    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 97
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 343
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 344
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 345
    const/16 v0, 0x3e8

    if-eq v0, p1, :cond_0

    const/16 v0, 0x3e9

    if-eq v0, p1, :cond_0

    const/16 v0, 0x3ea

    if-eq v0, p1, :cond_0

    const/16 v0, 0x3eb

    if-ne v0, p1, :cond_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->finish()V

    .line 352
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 70
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Laun;->a(Landroid/content/Context;)V

    .line 73
    const-string/jumbo v1, "is_from_main_schedule_view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "operation_type"

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v1, "schedule_type"

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "need_cover"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->h()V

    goto :goto_0

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->finish()V

    goto :goto_0

    .line 85
    :sswitch_2
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;)V

    goto :goto_0

    .line 88
    :sswitch_3
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SMARTSCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;)V

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x7f0b0237 -> :sswitch_1
        0x7f0b05d7 -> :sswitch_2
        0x7f0b05d9 -> :sswitch_3
        0x7f0b05dc -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f0300f9

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a()V

    .line 105
    const v0, 0x7f0b05db

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->b:Landroid/widget/ScrollView;

    .line 106
    const v0, 0x7f0b05d7

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->c:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0b05a8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->e:Landroid/widget/LinearLayout;

    .line 108
    const v0, 0x7f0b05dd

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->g:Landroid/widget/ScrollView;

    .line 109
    const v0, 0x7f0b05d9

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->h:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0b05de

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->j:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f0b05dc

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->f:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0b05d8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->d:Landroid/view/View;

    .line 114
    const v0, 0x7f0b05da

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->i:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->c()V

    .line 121
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->b()V

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 304
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->destory()V

    .line 306
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->destory()V

    .line 310
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->m:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->l:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->l:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->destory()V

    .line 314
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->l:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->destory()V

    .line 318
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->k:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->destory()V

    .line 322
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 324
    :cond_4
    return-void
.end method

.method public onItemClick(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 270
    const/4 v2, 0x6

    if-ne v2, p1, :cond_1

    .line 271
    const-string/jumbo v2, "BadWeatherReminder"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a(Ljava/lang/String;)V

    .line 281
    :cond_0
    :goto_0
    invoke-static {p1}, Lawh;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "smartType":Ljava/lang/String;
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    const-string/jumbo v3, "scheduleAddList"

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void

    .line 272
    .end local v1    # "smartType":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x5

    if-ne v2, p1, :cond_2

    .line 273
    const-string/jumbo v2, "CoolingController"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_2
    if-ne v3, p1, :cond_3

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "need_cover"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const/16 v2, 0x3ea

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 278
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x4

    if-ne v2, p1, :cond_0

    .line 279
    const-string/jumbo v2, "HotEventController"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 154
    const-string/jumbo v0, "ScheduleHomePageActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 156
    invoke-static {p0}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v0

    invoke-virtual {v0}, Lauu;->a()V

    .line 157
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->b()V

    .line 158
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;->e()V

    .line 159
    return-void
.end method

.method public onSwitchClick(Lcom/iflytek/viafly/smartschedule/ScheduleView;IZ)V
    .locals 5
    .param p1, "view"    # Lcom/iflytek/viafly/smartschedule/ScheduleView;
    .param p2, "type"    # I
    .param p3, "status"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 230
    if-nez p3, :cond_2

    .line 231
    invoke-static {p2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->addSmartSchedule(I)V

    .line 233
    if-eq v1, p2, :cond_1

    .line 234
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, p2, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 241
    :cond_0
    :goto_0
    const-string/jumbo v3, "\u5df2\u6dfb\u52a0\u5230\u6211\u7684\u63d0\u9192"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 243
    invoke-static {p2}, Lawh;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "smartType":Ljava/lang/String;
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "add"

    invoke-virtual {v3, v0, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_1
    if-nez p3, :cond_4

    :goto_2
    invoke-virtual {p1, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 260
    return-void

    .line 236
    .end local v0    # "smartType":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {p2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 248
    if-eq v1, p2, :cond_3

    .line 249
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 254
    :goto_3
    const-string/jumbo v3, "\u5df2\u4ece\u6211\u7684\u63d0\u9192\u4e2d\u5220\u9664"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 256
    invoke-static {p2}, Lawh;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0    # "smartType":Ljava/lang/String;
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "cancel"

    invoke-virtual {v3, v0, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    .end local v0    # "smartType":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 252
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_3

    .restart local v0    # "smartType":Ljava/lang/String;
    :cond_4
    move v1, v2

    .line 259
    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
