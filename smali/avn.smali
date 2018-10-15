.class public Lavn;
.super Landroid/widget/BaseAdapter;
.source "ScheduleNotifyGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavn$a;
    }
.end annotation


# static fields
.field public static a:Landroid/graphics/drawable/AnimationDrawable;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/graphics/drawable/AnimationDrawable;

.field private i:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lavn;->a:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v2, 0x1

    iput v2, p0, Lavn;->e:I

    .line 35
    iput-boolean v3, p0, Lavn;->g:Z

    .line 37
    const/4 v2, 0x0

    iput-object v2, p0, Lavn;->h:Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    iput-object p1, p0, Lavn;->b:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lavn;->c:Landroid/view/LayoutInflater;

    .line 49
    iput p2, p0, Lavn;->d:I

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lavn;->f:Ljava/util/ArrayList;

    .line 51
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 54
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_start_0
    iget-object v3, p0, Lavn;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->clone()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string/jumbo v3, "ScheduleGalleryAdapter"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lavn;->e:I

    .line 63
    :goto_1
    return-void

    .line 61
    :cond_1
    iput v3, p0, Lavn;->e:I

    goto :goto_1
.end method

.method static synthetic a(Lavn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lavn;

    .prologue
    .line 27
    iget-object v0, p0, Lavn;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 4
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 223
    if-nez p1, :cond_1

    .line 224
    const-string/jumbo v1, ""

    .line 263
    :cond_0
    :goto_0
    return-object v1

    .line 242
    :cond_1
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 243
    const-string/jumbo v1, ""

    goto :goto_0

    .line 245
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 246
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const-string/jumbo v1, ""

    goto :goto_0

    .line 254
    .end local v1    # "title":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 256
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 257
    .restart local v1    # "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const-string/jumbo v1, ""

    goto :goto_0

    .end local v1    # "title":Ljava/lang/String;
    :cond_5
    move-object v1, v0

    .line 263
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lavn;->e:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 95
    iget-object v3, p0, Lavn;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 96
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-nez p2, :cond_0

    .line 97
    iget-object v3, p0, Lavn;->c:Landroid/view/LayoutInflater;

    iget v4, p0, Lavn;->d:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance v2, Lavn$a;

    invoke-direct {v2, p0, v5}, Lavn$a;-><init>(Lavn;Lavn$1;)V

    .line 99
    .local v2, "viewHolder":Lavn$a;
    const v3, 0x7f0b0596

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lavn$a;->a:Landroid/widget/TextView;

    .line 100
    const v3, 0x7f0b0594

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lavn$a;->b:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f0b0592

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lavn$a;->c:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f0b0595

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lavn$a;->d:Landroid/widget/TextView;

    .line 103
    const v3, 0x7f0b0591

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v3, v2, Lavn$a;->e:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 111
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :goto_0
    iput-object p2, p0, Lavn;->i:Landroid/view/View;

    .line 118
    iget-object v3, v2, Lavn$a;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 119
    iget-object v3, v2, Lavn$a;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 120
    iget-object v3, v2, Lavn$a;->e:Lcom/iflytek/base/skin/customView/XLinearLayout;

    new-instance v4, Lavn$1;

    invoke-direct {v4, p0, v1}, Lavn$1;-><init>(Lavn;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v4, v2, Lavn$a;->c:Landroid/widget/TextView;

    const-string/jumbo v5, "HH:mm"

    iget-object v3, p0, Lavn;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v4, v2, Lavn$a;->b:Landroid/widget/TextView;

    const-string/jumbo v5, "yyyy\u5e74MM\u6708dd\u65e5"

    iget-object v3, p0, Lavn;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, v2, Lavn$a;->d:Landroid/widget/TextView;

    const-string/jumbo v5, "EEE"

    iget-object v3, p0, Lavn;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p0, Lavn;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v3}, Lavn;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    iget-object v3, v2, Lavn$a;->a:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_1
    const v3, 0x7f0b0593

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 149
    return-object p2

    .line 113
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "viewHolder":Lavn$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lavn$a;

    .restart local v2    # "viewHolder":Lavn$a;
    goto/16 :goto_0

    .line 139
    .restart local v0    # "content":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_2
    iget-object v3, v2, Lavn$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v3, v2, Lavn$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    .local v0, "position":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    :pswitch_0
    return-void

    .line 162
    :pswitch_data_0
    .packed-switch 0x7f0b0584
        :pswitch_0
    .end packed-switch
.end method
