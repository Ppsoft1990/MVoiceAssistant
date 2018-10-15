.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ScheduleTodoItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private c:Lcom/iflytek/base/skin/customView/XImageView;

.field private d:Lcom/iflytek/base/skin/customView/XTextView;

.field private e:Lcom/iflytek/base/skin/customView/XTextView;

.field private f:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

.field private i:Lavx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lavx;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p3, "onDeleteGuideShow"    # Lavx;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const-string/jumbo v0, "ScheduleTodoListItem"

    const-string/jumbo v1, "ScheduleTodoItem:ScheduleCategory.SCHEDULE"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 77
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->h:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    .line 78
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->i:Lavx;

    .line 79
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->setView(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const v2, 0x7f0b063f

    const/16 v1, 0x8

    .line 160
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_RECOMMED_OPEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 164
    :cond_0
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const v7, 0x7f0a0010

    const v6, 0x7f0a000c

    .line 264
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->i:Lavx;

    if-eqz v4, :cond_1

    .line 265
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 266
    .local v1, "resource":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 268
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 273
    :goto_0
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    .line 274
    .local v2, "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "subType":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->c:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v5

    invoke-static {v4, v2, v3, v5}, Lawg;->a(Lcom/iflytek/base/skin/customView/XImageView;Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;Z)V

    .line 290
    .end local v1    # "resource":Landroid/content/res/Resources;
    :goto_1
    return-void

    .line 270
    .end local v2    # "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .end local v3    # "subType":Ljava/lang/String;
    .restart local v1    # "resource":Landroid/content/res/Resources;
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 271
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    goto :goto_0

    .line 277
    .end local v1    # "resource":Landroid/content/res/Resources;
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v4, v5}, Lauu;->b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    .line 278
    .local v0, "isAdded":Z
    if-eqz v0, :cond_2

    .line 279
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->g:Landroid/widget/TextView;

    const-string/jumbo v5, "\u5df2\u6dfb\u52a0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->g:Landroid/widget/TextView;

    const v5, 0x7f0201ad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 285
    :goto_2
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    .line 286
    .restart local v2    # "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .restart local v3    # "subType":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->c:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-static {v4, v2, v3, v0}, Lawg;->a(Lcom/iflytek/base/skin/customView/XImageView;Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;Z)V

    goto :goto_1

    .line 282
    .end local v2    # "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .end local v3    # "subType":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->g:Landroid/widget/TextView;

    const-string/jumbo v5, "\u6dfb\u52a0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->g:Landroid/widget/TextView;

    const v5, 0x7f0201ac

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private getContent()Ljava/lang/String;
    .locals 14

    .prologue
    .line 209
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->h:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    sget-object v9, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v8, v9, :cond_6

    .line 210
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v8, :cond_6

    .line 216
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    .line 217
    .local v1, "dateTimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    const/4 v4, 0x0

    .line 218
    .local v4, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const-string/jumbo v5, ""

    .line 219
    .local v5, "timeShow":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v2, "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v6

    .line 221
    .local v6, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v8, v6, :cond_0

    .line 222
    new-instance v4, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .end local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object v8, v1

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v9

    move-object v8, v1

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 223
    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v8

    invoke-direct {v4, v9, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .restart local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object v8, v1

    .line 225
    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 226
    .local v7, "xTime":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    new-instance v9, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v10

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :cond_0
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v8, v6, :cond_1

    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v8, v6, :cond_1

    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v8, v6, :cond_2

    :cond_1
    move-object v8, v1

    .line 229
    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .restart local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object v8, v1

    .line 231
    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 232
    .local v7, "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    new-instance v9, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v10

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_2
    if-eqz v4, :cond_3

    .line 237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 238
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->isMultiple()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, "n":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 241
    .restart local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const/4 v9, 0x2

    if-le v3, v9, :cond_4

    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 260
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateTimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .end local v2    # "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v3    # "n":I
    .end local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v5    # "timeShow":Ljava/lang/String;
    .end local v6    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .end local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_3
    :goto_3
    return-object v5

    .line 245
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "dateTimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .restart local v2    # "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .restart local v3    # "n":I
    .restart local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .restart local v5    # "timeShow":Ljava/lang/String;
    .restart local v6    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .restart local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_4
    const/16 v9, 0xb

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 246
    const/16 v9, 0xc

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    goto :goto_2

    .line 251
    .end local v3    # "n":I
    .end local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_5
    const/16 v8, 0xb

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/16 v8, 0xc

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 253
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 260
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateTimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .end local v2    # "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v5    # "timeShow":Ljava/lang/String;
    .end local v6    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private setView(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f0b063e

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 167
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 168
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030112

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 170
    const v1, 0x7f0b0640

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 173
    const v1, 0x7f0b0641

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->d:Lcom/iflytek/base/skin/customView/XTextView;

    .line 174
    const v1, 0x7f0b0642

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->e:Lcom/iflytek/base/skin/customView/XTextView;

    .line 175
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->d:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {p1, v2}, Lawh;->b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->e:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {p1, v2}, Lawh;->c(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v1, 0x7f0b0643

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 179
    const v1, 0x7f0b0644

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->g:Landroid/widget/TextView;

    .line 180
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->h:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    .line 184
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    .line 185
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->i:Lavx;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :goto_0
    const v1, 0x7f0b0559

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 198
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->DEFAULT_WEATHER_PUSH_SCHEDULE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_REMIND_RECOMMED_OPEN"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b()V

    .line 205
    return-void

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1, v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCategory()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->h:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    const-string/jumbo v5, "ScheduleTodoListItem"

    const-string/jumbo v6, "onClick()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 87
    :sswitch_0
    const-string/jumbo v4, "ScheduleTodoListItem"

    const-string/jumbo v5, "item onClick()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->h:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v4, v5, :cond_0

    .line 89
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    const-class v5, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v1, "intent0":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v4, "operation_type"

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v4}, Lawh;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->i:Lavx;

    if-nez v4, :cond_1

    .line 96
    const-string/jumbo v4, "need_cover"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "scheduleAddList"

    invoke-virtual {v3, v2, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "scheduleList"

    invoke-virtual {v3, v2, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    .end local v1    # "intent0":Landroid/content/Intent;
    .end local v2    # "type":Ljava/lang/String;
    :sswitch_1
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->i:Lavx;

    if-eqz v5, :cond_5

    .line 107
    const-string/jumbo v5, "ScheduleTodoListItem"

    const-string/jumbo v6, "OpenCloseCheckBox onClick()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    .line 109
    .local v0, "checked":Z
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v5, v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 110
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->h:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v3, v4, :cond_2

    .line 111
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-interface {v3, v4}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 114
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v3}, Lawh;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .restart local v2    # "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "open"

    invoke-virtual {v3, v2, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v2    # "type":Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a()V

    .line 122
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b()V

    goto/16 :goto_0

    :cond_3
    move v3, v4

    .line 109
    goto :goto_2

    .line 118
    .restart local v2    # "type":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "close"

    invoke-virtual {v3, v2, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 124
    .end local v0    # "checked":Z
    .end local v2    # "type":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v5, v6}, Lauu;->b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 126
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v3

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->deleteSchedule(I)V

    .line 127
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    const-string/jumbo v5, "\u5df2\u4ece\u6211\u7684\u63d0\u9192\u4e2d\u5220\u9664"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 130
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v3}, Lawh;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2    # "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "cancel"

    invoke-virtual {v3, v2, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_4
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b()V

    goto/16 :goto_0

    .line 134
    .end local v2    # "type":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 135
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 136
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v3

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-interface {v3, v5}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    .line 137
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    const-string/jumbo v5, "\u5df2\u6dfb\u52a0\u5230\u6211\u7684\u63d0\u9192"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 139
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v3}, Lawh;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .restart local v2    # "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "add"

    invoke-virtual {v3, v2, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x7f0b0559 -> :sswitch_1
        0x7f0b063e -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    const-string/jumbo v0, "ScheduleTodoListItem"

    const-string/jumbo v1, "onLongClick()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->i:Lavx;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->i:Lavx;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->h:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lavx;->b(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;I)V

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
