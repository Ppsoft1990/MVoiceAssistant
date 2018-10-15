.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
.super Landroid/widget/RelativeLayout;
.source "ScheduleMultiTimesItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;,
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

.field private e:Lcom/iflytek/viafly/schedule/framework/entities/Time;

.field private f:Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

.field private g:I

.field private h:I

.field private i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field private j:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemChangeListener"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;
    .param p3, "baseDatetimeInfor"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p4, "time"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .param p5, "onceDate"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->j:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;

    .line 47
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->d:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 48
    iput-object p4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->e:Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 49
    iput-object p5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->f:Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->d:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v0, v1, :cond_1

    .line 52
    invoke-virtual {p5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->g:I

    .line 53
    invoke-virtual {p5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->h:I

    .line 61
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->setView(Landroid/content/Context;)V

    .line 62
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v0, v1, :cond_0

    .line 58
    :cond_2
    invoke-virtual {p4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->g:I

    .line 59
    invoke-virtual {p4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->h:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->g:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->f:Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;Lcom/iflytek/viafly/schedule/framework/entities/Time;)Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->e:Lcom/iflytek/viafly/schedule/framework/entities/Time;

    return-object p1
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 108
    const/4 v3, -0x1

    .line 109
    .local v3, "hour":I
    const/4 v4, -0x1

    .line 110
    .local v4, "min":I
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->d:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v7

    .line 111
    .local v7, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v7, v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->f:Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v3

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->f:Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v4

    .line 120
    :cond_0
    :goto_0
    if-eq v3, v1, :cond_1

    if-eq v4, v1, :cond_1

    .line 121
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a:Landroid/content/Context;

    new-instance v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;

    const v5, 0x7f0b060f

    .line 122
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v2, p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;Landroid/widget/TextView;)V

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 123
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 128
    .end local v7    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_1
    :goto_1
    return-void

    .line 114
    .restart local v7    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v0, v7, :cond_3

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v0, v7, :cond_3

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v0, v7, :cond_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->e:Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v3

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->e:Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 125
    .end local v7    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :catch_0
    move-exception v6

    .line 126
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ScheduleMultiTimesItem"

    const-string/jumbo v1, "open TimePickerDialog error!"

    invoke-static {v0, v1, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->setTimeShow(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->h:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->f:Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .prologue
    .line 27
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->g:I

    return v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .prologue
    .line 27
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->h:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->d:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->e:Lcom/iflytek/viafly/schedule/framework/entities/Time;

    return-object v0
.end method

.method private setTimeShow(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 182
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->g:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 183
    const/16 v2, 0xc

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->h:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 184
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 185
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 184
    invoke-static {v2, v4, v5}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "timeShow":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method private setView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030107

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    const v1, 0x7f0b060f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->b:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0b0610

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->c:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->b:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->setTimeShow(Landroid/widget/TextView;)V

    .line 104
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->g:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->h:I

    return v0
.end method

.method public getOnceDate()Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->f:Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    return-object v0
.end method

.method public getTime()Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->e:Lcom/iflytek/viafly/schedule/framework/entities/Time;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a()V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->j:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;

    invoke-interface {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$b;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x7f0b060f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
