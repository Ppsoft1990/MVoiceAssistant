.class public Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;
.super Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;
.source "ScheduleTriggerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field protected final c:I

.field public d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

.field private final e:Ljava/lang/String;

.field private f:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;

.field private k:Lavn;

.field private l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Lcom/iflytek/base/skin/customView/XImageView;

.field private p:Landroid/graphics/drawable/AnimationDrawable;

.field private q:Lazi;

.field private r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/content/BroadcastReceiver;

.field private t:Landroid/os/Handler;

.field private u:J

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;-><init>()V

    .line 76
    const-string/jumbo v0, "ScheduleTriggerDialog"

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->e:Ljava/lang/String;

    .line 78
    const/16 v0, 0x7b

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->c:I

    .line 88
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    .line 91
    iput v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    .line 95
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    .line 100
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->q:Lazi;

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->r:Landroid/util/SparseArray;

    .line 207
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->s:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$3;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->t:Landroid/os/Handler;

    .line 321
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$4;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    .line 555
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->u:J

    .line 697
    iput-boolean v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->v:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->c(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 914
    if-nez p1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 918
    .local v0, "body":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 919
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 920
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 922
    :cond_2
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 923
    new-instance v2, Lcom/iflytek/viafly/news/NewsRemindView;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/news/NewsRemindView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 928
    :goto_1
    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 930
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 931
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v5, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 932
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 925
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    new-instance v2, Lcom/iflytek/viafly/news/NewsRemindView;

    const v3, 0x7f0c0084

    invoke-direct {v2, p0, v3}, Lcom/iflytek/viafly/news/NewsRemindView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    goto :goto_1
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)V
    .locals 2
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "position"    # I

    .prologue
    .line 872
    if-eqz p1, :cond_1

    .line 873
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    .line 874
    .local v0, "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v0, :cond_2

    .line 879
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)V

    .line 888
    .end local v0    # "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    :cond_1
    :goto_0
    return-void

    .line 880
    .restart local v0    # "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v0, :cond_3

    .line 881
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_0

    .line 882
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v0, :cond_4

    .line 883
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_0

    .line 884
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v0, :cond_1

    .line 885
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(ZI)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "remindList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-static {v3}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 307
    .local v2, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v2, :cond_0

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 310
    .local v1, "remind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 311
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    .line 312
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 313
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(ZI)V

    .line 319
    .end local v0    # "i":I
    .end local v1    # "remind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v2    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_0
    return-void

    .line 308
    .restart local v0    # "i":I
    .restart local v1    # "remind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .restart local v2    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(ZI)V
    .locals 3
    .param p1, "isNewIntent"    # Z
    .param p2, "pos"    # I

    .prologue
    .line 627
    const-string/jumbo v0, "ScheduleTriggerDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGallery() | pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-nez p1, :cond_1

    .line 629
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->k:Lavn;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->k:Lavn;

    invoke-virtual {v0}, Lavn;->a()V

    .line 632
    :cond_0
    invoke-static {p0}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 634
    :cond_1
    if-ltz p2, :cond_3

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 635
    new-instance v0, Lavn;

    const v1, 0x7f0300ef

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lavn;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->k:Lavn;

    .line 636
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->j:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;

    if-eqz v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->j:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->k:Lavn;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 638
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->j:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->setSelection(I)V

    .line 641
    :cond_2
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d(I)V

    .line 643
    :cond_3
    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 507
    const-string/jumbo v8, "ScheduleTriggerDialog"

    const-string/jumbo v9, "initIntent()"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string/jumbo v8, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 511
    .local v5, "remindList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const-string/jumbo v8, "handle_type"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 512
    .local v7, "type":Ljava/lang/String;
    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    move-result-object v0

    .line 513
    .local v0, "handleType":Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    invoke-static {v5}, Lazz;->a(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-static {v8}, Lazz;->a(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 514
    const-string/jumbo v8, "ScheduleTriggerDialog"

    const-string/jumbo v9, "init intent | exit: the remindList which geted == null"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v8, 0x0

    .line 550
    :goto_0
    return v8

    .line 517
    :cond_0
    const-string/jumbo v9, "ScheduleTriggerDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "--------->> get remindList\'s size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v5, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 520
    .local v3, "length":I
    const-string/jumbo v8, "ScheduleTriggerDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "--------->> before|mRemindList\'s size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 524
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 526
    .local v4, "remind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    const/4 v6, 0x0

    .line 527
    .local v6, "same":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v3, :cond_1

    .line 528
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v8

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->c(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v9

    if-ne v8, v9, :cond_5

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v8

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->c(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 529
    const-string/jumbo v8, "ScheduleTriggerDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "------->> remind[id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] has showed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v6, 0x1

    .line 534
    :cond_1
    if-nez v6, :cond_2

    .line 535
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    const-string/jumbo v8, "ScheduleTriggerDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "------>> remind: ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|content="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|timeLong="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 537
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 536
    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_2
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 540
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->r:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 523
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 517
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "length":I
    .end local v4    # "remind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v6    # "same":Z
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    goto/16 :goto_1

    .line 527
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "length":I
    .restart local v4    # "remind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .restart local v6    # "same":Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 546
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "remind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v6    # "same":Z
    :cond_6
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-static {v8}, Lazz;->a(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 547
    const-string/jumbo v8, "ScheduleTriggerDialog"

    const-string/jumbo v9, "the remind from remindList is all showed."

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 550
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    .prologue
    .line 74
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    return v0
.end method

.method private b(I)V
    .locals 14
    .param p1, "entry"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v13, 0x1

    .line 432
    iget v10, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-direct {p0, v10}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->c(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v6

    .line 433
    .local v6, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v6, :cond_1

    .line 434
    sget-object v10, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v11

    if-ne v10, v11, :cond_0

    .line 435
    invoke-static {}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a()Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    move-result-object v5

    .line 436
    .local v5, "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    if-eqz v5, :cond_0

    .line 437
    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->d:Z

    .line 440
    .end local v5    # "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    :cond_0
    invoke-static {p0}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v10

    invoke-interface {v10, v6}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 441
    const-string/jumbo v10, "\u95f9\u949f\u5df2\u5173\u95ed"

    invoke-static {p0, v10}, Lawh;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 442
    iget v10, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(I)V

    .line 448
    if-ne p1, v12, :cond_1

    .line 449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 450
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 451
    .local v8, "year":I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 452
    .local v4, "month":I
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 453
    .local v1, "day":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 454
    .local v9, "yearMonthDay":Ljava/lang/String;
    const-string/jumbo v10, "ScheduleTriggerDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Current Year Month Day:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_REMIND_ALARM_NEWS_SYMBOL"

    invoke-virtual {v10, v11}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, "settingDate":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 457
    .local v3, "isSameDate":Z
    const-string/jumbo v10, "ScheduleTriggerDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Year Month Day equals:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    invoke-virtual {v10}, Lhl;->c()Z

    move-result v2

    .line 461
    .local v2, "isNetworkAvailable":Z
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_REMIND_ALARM_NEWS__SETTING"

    invoke-virtual {v10, v11, v13}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v2, :cond_1

    .line 465
    invoke-static {p0, v6, v9}, Lcom/iflytek/viafly/smartschedule/ui/ActivityJumper;->startAlarmNewsDisplay(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V

    .line 469
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "day":I
    .end local v2    # "isNetworkAvailable":Z
    .end local v3    # "isSameDate":Z
    .end local v4    # "month":I
    .end local v7    # "settingDate":Ljava/lang/String;
    .end local v8    # "year":I
    .end local v9    # "yearMonthDay":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 938
    if-nez p1, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 942
    .local v0, "body":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 943
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 944
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 947
    :cond_2
    new-instance v2, Lcom/iflytek/viafly/news/PersonalRemindView;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/viafly/news/PersonalRemindView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 949
    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 951
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 952
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v5, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 953
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)V
    .locals 5
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 895
    if-nez p1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 899
    .local v0, "body":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 900
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 901
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 903
    :cond_2
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;

    invoke-direct {v2, p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 904
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 906
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 907
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 908
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->r:Landroid/util/SparseArray;

    return-object v0
.end method

.method private c(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 4
    .param p1, "positon"    # I

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 474
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .restart local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :goto_0
    return-object v1

    .line 475
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ScheduleTriggerDialog"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    const/4 v1, 0x0

    .restart local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    goto :goto_0
.end method

.method private c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 8
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0c0085

    const/4 v5, 0x0

    .line 959
    const-string/jumbo v2, "ScheduleTriggerDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "schedule is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRawtext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-static {}, Laxc;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/weather/WeatherOneDay;

    .line 961
    .local v1, "weather":Lcom/iflytek/viafly/weather/WeatherOneDay;
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 962
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 963
    .local v0, "body":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    instance-of v2, v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    if-eqz v2, :cond_1

    .line 964
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    check-cast v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 965
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 966
    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 967
    new-instance v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-direct {v2, p0, v6}, Lcom/iflytek/viafly/weather/WeatherOneDayView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 968
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1021
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    check-cast v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->setErrorTip(I)V

    goto :goto_0

    .line 973
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v2, :cond_2

    .line 974
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 975
    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 977
    :cond_2
    new-instance v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-direct {v2, p0, v6}, Lcom/iflytek/viafly/weather/WeatherOneDayView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 978
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 983
    .end local v0    # "body":Landroid/widget/LinearLayout;
    :cond_3
    if-nez v1, :cond_6

    .line 984
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 985
    .restart local v0    # "body":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    instance-of v2, v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    if-eqz v2, :cond_5

    .line 986
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    check-cast v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 987
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 988
    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 989
    new-instance v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-direct {v2, p0, v6}, Lcom/iflytek/viafly/weather/WeatherOneDayView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 990
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 992
    :cond_4
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    check-cast v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->setErrorTip(I)V

    goto :goto_0

    .line 995
    :cond_5
    new-instance v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-direct {v2, p0, v6}, Lcom/iflytek/viafly/weather/WeatherOneDayView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 996
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 999
    .end local v0    # "body":Landroid/widget/LinearLayout;
    :cond_6
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1000
    .restart local v0    # "body":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    instance-of v2, v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    if-eqz v2, :cond_8

    .line 1001
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    check-cast v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->a()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1002
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    check-cast v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->setView(Lcom/iflytek/viafly/weather/WeatherOneDay;)V

    goto/16 :goto_0

    .line 1004
    :cond_7
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1005
    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 1006
    new-instance v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-direct {v2, p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDayView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/weather/WeatherOneDay;)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 1007
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1010
    :cond_8
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v2, :cond_9

    .line 1011
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1012
    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 1014
    :cond_9
    new-instance v2, Lcom/iflytek/viafly/weather/WeatherOneDayView;

    invoke-direct {v2, p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDayView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/weather/WeatherOneDay;)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 1015
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private d(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 646
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->e(I)V

    .line 662
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 663
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 666
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->f:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->setComplaintVisible(Z)V

    .line 670
    :goto_0
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne v2, v3, :cond_1

    .line 671
    invoke-static {}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a()Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    move-result-object v0

    .line 672
    .local v0, "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    sget-object v3, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->playing:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    if-ne v2, v3, :cond_3

    .line 673
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->e()V

    .line 676
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d()V

    .line 691
    .end local v0    # "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    :cond_1
    :goto_1
    return-void

    .line 668
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->f:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->setComplaintVisible(Z)V

    goto :goto_0

    .line 678
    .restart local v0    # "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->e()V

    goto :goto_1
.end method

.method private e(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1024
    const-string/jumbo v1, "ScheduleTriggerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPage() | positon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1026
    add-int/lit8 v0, p1, 0x1

    .line 1027
    .local v0, "index":I
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1028
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1030
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1037
    .end local v0    # "index":I
    :goto_0
    return-void

    .line 1032
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->i:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1034
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1035
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private f(I)Z
    .locals 3
    .param p1, "scheduleId"    # I

    .prologue
    .line 1080
    const/4 v0, 0x0

    .line 1082
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->r:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1086
    :goto_0
    return v0

    .line 1083
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 148
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->setVolumeControlStream(I)V

    .line 152
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    const v8, 0x7f0b03ab

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 154
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v7, v11}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->setBackgroundColor(I)V

    .line 155
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 158
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getTitleBar()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 159
    .local v6, "title":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 163
    .local v0, "body":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 166
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 167
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v5, "layoutParams_body":Landroid/widget/LinearLayout$LayoutParams;
    const v7, 0x7f0300e8

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020317

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    const v7, 0x7f0b057e

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->j:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;

    .line 174
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->j:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;

    invoke-virtual {v7, p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 176
    const v7, 0x7f0b057f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->g:Landroid/widget/ImageView;

    .line 177
    const v7, 0x7f0b0581

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->h:Landroid/widget/ImageView;

    .line 178
    const v7, 0x7f0b0580

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->i:Landroid/widget/TextView;

    .line 179
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->h:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v7, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    invoke-direct {v7, p0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;)V

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->f:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;

    .line 184
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getFootBar()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 185
    .local v2, "foot":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 186
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 187
    .local v3, "footLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->f:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020316

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "ScheduleTriggerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeleteItem() | position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :goto_0
    monitor-exit p0

    return-void

    .line 421
    :cond_0
    :try_start_2
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    .line 422
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    if-gez v1, :cond_1

    .line 423
    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    .line 425
    :cond_1
    const/4 v1, 0x0

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(ZI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "ScheduleTriggerDialog"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.NEWS_TTS_STOP_OR_START_ANIMATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v1, "com.iflytek.cmccACTION_PAUSE_ALERT_PLAYING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "com.iflytek.cmcc.CLOSE_TRIGGER_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v2, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 205
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    const/16 v6, 0x12c

    .line 233
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->e()V

    .line 234
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->o:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v3, :cond_1

    .line 236
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    .line 238
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.btn_broadcast_nor"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 241
    .local v0, "mNewsPlay1":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.btn_broadcast_nor_first_wave"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 244
    .local v1, "mNewsPlay2":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.btn_broadcast_nor_second_wave"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 246
    .local v2, "mNewsPlay3":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v0, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 247
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v1, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 248
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v2, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 249
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 250
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->o:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->o:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 255
    .end local v0    # "mNewsPlay1":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "mNewsPlay2":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "mNewsPlay3":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    .line 264
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->o:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->o:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "stateList.btn_broadcast_broadcast_wave"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 270
    :cond_0
    return-void
.end method

.method public f()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 2

    .prologue
    .line 1073
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 1076
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 559
    const-string/jumbo v1, "ScheduleTriggerDialog"

    const-string/jumbo v2, "-------------------->>> onClick"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->u:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 561
    const-string/jumbo v1, "ScheduleTriggerDialog"

    const-string/jumbo v2, "-------------------->>> Click too much!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->u:J

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 568
    :pswitch_1
    :try_start_0
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    if-ltz v1, :cond_0

    .line 569
    const/4 v1, 0x0

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ScheduleTriggerDialog"

    const-string/jumbo v2, "onClick error"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 578
    const/4 v1, 0x0

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 580
    :catch_1
    move-exception v0

    .line 581
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ScheduleTriggerDialog"

    const-string/jumbo v2, "onClick error"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x7f0b057f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 106
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 109
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(Landroid/content/Intent;)Z

    move-result v0

    .line 110
    .local v0, "initIntentSuccess":Z
    if-eqz v0, :cond_2

    .line 115
    :goto_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 116
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->q:Lazi;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lazi;

    invoke-direct {v1, p0}, Lazi;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->q:Lazi;

    .line 118
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->q:Lazi;

    new-instance v2, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$1;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)V

    invoke-virtual {v1, v2}, Lazi;->a(Lazi$b;)V

    .line 133
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->q:Lazi;

    invoke-virtual {v1}, Lazi;->a()V

    .line 135
    :cond_0
    if-eqz v0, :cond_1

    .line 136
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-direct {p0, v3, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(ZI)V

    .line 137
    invoke-static {p0}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->t:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lavb;->a(Landroid/os/Handler;)V

    .line 139
    :cond_1
    iput-boolean v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->v:Z

    .line 141
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100005"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 143
    invoke-static {p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->schedule_trigger:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxb;->a(Ljava/lang/String;)V

    .line 144
    return-void

    .line 112
    :cond_2
    const-string/jumbo v1, "ScheduleTriggerDialog"

    const-string/jumbo v2, "initIntent()\'s return = false -> finish()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1056
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->q:Lazi;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->q:Lazi;

    invoke-virtual {v0, v1}, Lazi;->a(Lazi$b;)V

    .line 1058
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->q:Lazi;

    invoke-virtual {v0}, Lazi;->b()V

    .line 1059
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->q:Lazi;

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1063
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    .line 1067
    :cond_1
    invoke-static {p0}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lavb;->a(Landroid/os/Handler;)V

    .line 1068
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 1069
    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->onDestroy()V

    .line 1070
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 701
    const-string/jumbo v5, "ScheduleTriggerDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onItemSelected| arg2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    if-nez v5, :cond_0

    .line 703
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    .line 705
    :cond_0
    if-ltz p3, :cond_1

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p3, v5, :cond_2

    .line 865
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->k:Lavn;

    if-eqz v5, :cond_3

    .line 709
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 710
    .local v4, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-eq v5, v6, :cond_3

    .line 711
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->k:Lavn;

    invoke-virtual {v5}, Lavn;->a()V

    .line 714
    .end local v4    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_3
    iget-boolean v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->v:Z

    if-nez v5, :cond_4

    .line 717
    :cond_4
    iput-boolean v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->v:Z

    .line 718
    iput p3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    .line 719
    iget v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d(I)V

    .line 722
    if-nez p3, :cond_b

    .line 723
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 724
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_a

    .line 725
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->h:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 738
    :goto_1
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 750
    .restart local v4    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->b:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 751
    .local v0, "body":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    .line 752
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 753
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    .line 755
    :cond_5
    iget v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-direct {p0, v4, v5}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)V

    .line 757
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 758
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    .line 759
    .local v3, "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_d

    .line 808
    .end local v3    # "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    :cond_6
    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne v5, v6, :cond_1

    .line 809
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    instance-of v5, v5, Lcom/iflytek/viafly/news/NewsRemindView;

    if-eqz v5, :cond_1

    .line 810
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->o:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v5, :cond_7

    .line 811
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->e()V

    .line 814
    :cond_7
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    const v6, 0x7f0b0584

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->o:Lcom/iflytek/base/skin/customView/XImageView;

    .line 815
    invoke-static {}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a()Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    move-result-object v2

    .line 816
    .local v2, "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    if-eqz v2, :cond_f

    iget-boolean v5, v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->b:Z

    if-eqz v5, :cond_f

    .line 817
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->p:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_8

    .line 818
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->e()V

    .line 820
    :cond_8
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d()V

    .line 824
    :goto_3
    if-eqz v2, :cond_10

    iget-object v5, v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    sget-object v6, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->playing:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    if-ne v5, v6, :cond_10

    .line 825
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d()V

    .line 829
    :goto_4
    if-eqz v2, :cond_9

    .line 830
    iput-boolean v8, v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->b:Z

    .line 833
    :cond_9
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    .line 835
    .local v1, "iflySetting":Lil;
    const-string/jumbo v5, "isNewsBroadcastFromNewsMedia"

    invoke-virtual {v1, v5, v8}, Lil;->a(Ljava/lang/String;Z)V

    .line 836
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->o:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v5, :cond_1

    .line 837
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->o:Lcom/iflytek/base/skin/customView/XImageView;

    new-instance v6, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$7;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$7;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)V

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 727
    .end local v0    # "body":Landroid/widget/LinearLayout;
    .end local v1    # "iflySetting":Lil;
    .end local v2    # "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    .end local v4    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_a
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->h:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 729
    :cond_b
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p3, v5, :cond_c

    .line 730
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 731
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->h:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 733
    :cond_c
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 734
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->h:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 760
    .restart local v0    # "body":Landroid/widget/LinearLayout;
    .restart local v3    # "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .restart local v4    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_d
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_e

    .line 761
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    new-instance v6, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$5;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$5;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)V

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 773
    :cond_e
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_6

    .line 774
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->l:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;

    new-instance v6, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$6;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$6;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)V

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 822
    .end local v3    # "ringType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .restart local v2    # "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    :cond_f
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->e()V

    goto :goto_3

    .line 827
    :cond_10
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->e()V

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 592
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->finish()V

    .line 600
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 484
    const-string/jumbo v0, "ScheduleTriggerDialog"

    const-string/jumbo v1, "----------->>onNewIntent()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->onNewIntent(Landroid/content/Intent;)V

    .line 486
    iput-boolean v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->v:Z

    .line 488
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->n:I

    invoke-direct {p0, v2, v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(ZI)V

    .line 490
    invoke-static {p0}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->t:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lavb;->a(Landroid/os/Handler;)V

    .line 504
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string/jumbo v0, "ScheduleTriggerDialog"

    const-string/jumbo v1, "initIntent()\'s return = false -> finish()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->finish()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1046
    const-string/jumbo v0, "ScheduleTriggerDialog"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleBaseDialog;->onStop()V

    .line 1048
    invoke-static {p0}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 1049
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->k:Lavn;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->k:Lavn;

    invoke-virtual {v0}, Lavn;->a()V

    .line 1052
    :cond_0
    return-void
.end method
