.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ScheduleMultiTimesEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Time;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/iflytek/base/skin/customView/XTextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;


# direct methods
.method private a()V
    .locals 19

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 105
    .local v13, "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v18

    .line 106
    .local v18, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 108
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v18

    if-ne v1, v0, :cond_1

    move-object v1, v13

    .line 109
    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v16

    .line 110
    .local v16, "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v13

    .line 111
    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .local v14, "date":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    move-object v7, v13

    .line 112
    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v2

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v3

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;-><init>(IIIII)V

    invoke-virtual {v7, v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addMultiOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    move-object v7, v13

    .line 113
    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v2

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v3

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v4

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;-><init>(IIIII)V

    invoke-virtual {v7, v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addMultiOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    move-object v7, v13

    .line 114
    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v2

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v3

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;-><init>(IIIII)V

    invoke-virtual {v7, v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addMultiOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    .line 115
    check-cast v13, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .end local v13    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v16

    .line 116
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 117
    .local v6, "one":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    const/4 v5, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v6    # "one":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v14    # "date":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .restart local v13    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 121
    .restart local v6    # "one":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    const/4 v5, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .end local v6    # "one":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v16    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v18

    if-eq v1, v0, :cond_2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v18

    if-eq v1, v0, :cond_2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v18

    if-ne v1, v0, :cond_4

    :cond_2
    move-object v1, v13

    .line 128
    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v17

    .line 129
    .local v17, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v13

    .line 130
    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    move-object v1, v13

    .line 131
    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    move-object v1, v13

    .line 132
    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    .line 133
    check-cast v13, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    .end local v13    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v17

    .line 136
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 137
    .local v11, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    new-instance v7, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    const/4 v12, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 141
    .end local v11    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v17    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .line 142
    .local v15, "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 145
    .end local v15    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Z)V

    .line 149
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_7

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->d:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 152
    :cond_7
    return-void
.end method

.method private setView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030106

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    const v2, 0x7f0b060e

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->d:Lcom/iflytek/base/skin/customView/XTextView;

    .line 92
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v2, 0x7f0b060d

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->e:Landroid/widget/LinearLayout;

    .line 96
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->a()V

    .line 98
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .line 99
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->c:Ljava/util/List;

    new-instance v4, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->getHour()I

    move-result v5

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->getMinute()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)V
    .locals 5
    .param p1, "item"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 158
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 160
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v0

    .line 161
    .local v0, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v1, v0, :cond_3

    .line 162
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->getOnceDate()Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->removeMultiDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    .line 170
    .end local v0    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 171
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Z)V

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 175
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 177
    :cond_2
    return-void

    .line 163
    .restart local v0    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v1, v0, :cond_4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v1, v0, :cond_4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v1, v0, :cond_0

    .line 166
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->getTime()Lcom/iflytek/viafly/schedule/framework/entities/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->removeMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 85
    :cond_0
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .line 55
    .local v12, "lastItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->getHour()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v4, v1, 0x18

    .line 56
    .local v4, "hour":I
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v14

    .line 57
    .local v14, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v14, v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 59
    .local v11, "date":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v1

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v2

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;-><init>(IIIII)V

    .line 60
    .local v0, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addMultiOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    .line 61
    new-instance v5, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    const/4 v9, 0x0

    move-object v7, p0

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)V

    .line 62
    .local v5, "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    .end local v0    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v4    # "hour":I
    .end local v5    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .end local v11    # "date":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v12    # "lastItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .end local v14    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->d:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .line 80
    .local v13, "scheduleMultiTimesItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Z)V

    goto :goto_1

    .line 64
    .end local v13    # "scheduleMultiTimesItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .restart local v4    # "hour":I
    .restart local v12    # "lastItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .restart local v14    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v1, v14, :cond_4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v1, v14, :cond_4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v1, v14, :cond_1

    .line 67
    :cond_4
    new-instance v9, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    const/4 v1, 0x0

    invoke-direct {v9, v4, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .line 68
    .local v9, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v1, v9}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    .line 69
    new-instance v5, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    const/4 v10, 0x0

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)V

    .line 70
    .restart local v5    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->b:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b060e
        :pswitch_0
    .end packed-switch
.end method
