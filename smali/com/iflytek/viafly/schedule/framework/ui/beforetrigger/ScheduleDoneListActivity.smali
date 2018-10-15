.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ScheduleDoneListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/iflytek/base/skin/customView/XTextView;

.field private c:Lavt;

.field private d:Lcom/iflytek/base/skin/customView/XLinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;)Lavt;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->c:Lavt;

    return-object v0
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v0, 0x0

    .line 193
    if-nez p1, :cond_1

    move-object p1, v0

    .line 204
    .end local p1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_0
    :goto_0
    return-object p1

    .line 197
    .restart local p1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x48190800

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 199
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->deleteSchedule(I)V

    .line 200
    const-string/jumbo v1, "ScheduleDoneListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteDatedSchedule(), delete a dated schedule | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 201
    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    const v2, 0x7f0b05ff

    .line 59
    const-string/jumbo v0, "ScheduleDoneListActivity"

    const-string/jumbo v1, "initView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->b()V

    .line 62
    const v0, 0x7f0b0600

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->a:Landroid/widget/ListView;

    .line 63
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 64
    const v0, 0x7f0b0601

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->d:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 66
    const v0, 0x7f0b05fe

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->c()V

    .line 70
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "ScheduleDoneListActivity"

    const-string/jumbo v1, "setTitle()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 79
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->e()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lavt;

    const v1, 0x7f030101

    invoke-direct {v0, p0, v1}, Lavt;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->c:Lavt;

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->c:Lavt;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    return-void
.end method

.method private d()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->i()V

    .line 126
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->h()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->f()V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->g()V

    .line 142
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->c:Lavt;

    invoke-virtual {v1, v0}, Lavt;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->d:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->a:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    const v1, -0x2a1b04

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 153
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setFocusable(Z)V

    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 158
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->d:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->a:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 167
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ScheduleDoneListActivity"

    const-string/jumbo v3, "showList error"

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private h()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    const-string/jumbo v4, "ScheduleDoneListActivity"

    const-string/jumbo v5, "getDoneSchedules()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {p0}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v4

    invoke-virtual {v4, p0}, Lauu;->d(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    .line 179
    .local v2, "scheduleList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 182
    .local v3, "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    .line 183
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v3    # "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u6e05\u7a7a\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 210
    const-string/jumbo v1, "\u786e\u5b9a\u6e05\u7a7a\u6240\u6709\u5df2\u5b8c\u6210\u95f9\u949f\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 212
    const-string/jumbo v1, "\u6e05\u7a7a"

    new-instance v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 226
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$3;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 233
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 234
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    const-string/jumbo v0, "ScheduleDoneListActivity"

    const-string/jumbo v1, "onClick()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 114
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->finish()V

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->d()V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b05fe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const-string/jumbo v0, "ScheduleDoneListActivity"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030102

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->a()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "ScheduleDoneListActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->e()V

    .line 133
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
