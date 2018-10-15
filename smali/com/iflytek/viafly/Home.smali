.class public Lcom/iflytek/viafly/Home;
.super Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
.source "Home.java"

# interfaces
.implements Lazi$b;
.implements Lpt$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/Home$c;,
        Lcom/iflytek/viafly/Home$b;,
        Lcom/iflytek/viafly/Home$a;
    }
.end annotation


# static fields
.field private static final R:[Ljava/lang/String;


# instance fields
.field private A:Lalr;

.field private B:Lamg;

.field private C:Lqh;

.field private D:Lahc;

.field private E:Lcom/iflytek/viafly/Home$a;

.field private F:Lagg;

.field private G:Laon;

.field private H:Lbaf;

.field private I:Lcom/iflytek/viafly/Home$b;

.field private J:Ljava/lang/Runnable;

.field private K:Lcom/iflytek/viafly/homehelper/base/HomeReceiver;

.field private L:Z

.field private M:J

.field private N:Landroid/widget/Toast;

.field private O:Landroid/os/HandlerThread;

.field private P:Landroid/os/Handler;

.field private Q:Landroid/os/Handler$Callback;

.field private a:Lazi;

.field private b:Lahw;

.field private c:Lahv;

.field private d:Laha;

.field private e:Lagz;

.field private f:Lahl;

.field private g:Lagw;

.field private h:Lahd;

.field private i:Lahg;

.field private j:Lahf;

.field private k:Lahs;

.field private l:Lahi;

.field private m:Lahk;

.field private n:Lagx;

.field private o:Lahq;

.field private p:Lagy;

.field private q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

.field private r:Lahp;

.field private s:Lahe;

.field private t:Lahh;

.field private u:Laho;

.field private v:Lahb;

.field private w:Lahn;

.field private x:Lahj;

.field private y:Lanx;

.field private z:Lanw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1861
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/Home;->R:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;-><init>()V

    .line 172
    new-instance v0, Lahv;

    invoke-direct {v0}, Lahv;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    .line 302
    new-instance v0, Lcom/iflytek/viafly/Home$b;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/Home$b;-><init>(Lcom/iflytek/viafly/Home;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    .line 304
    new-instance v0, Lcom/iflytek/viafly/Home$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/Home$1;-><init>(Lcom/iflytek/viafly/Home;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->J:Ljava/lang/Runnable;

    .line 1210
    new-instance v0, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;-><init>(Lcom/iflytek/viafly/Home;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->K:Lcom/iflytek/viafly/homehelper/base/HomeReceiver;

    .line 1612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/Home;->L:Z

    .line 1698
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/Home;->M:J

    .line 1729
    new-instance v0, Lcom/iflytek/viafly/Home$5;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/Home$5;-><init>(Lcom/iflytek/viafly/Home;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->Q:Landroid/os/Handler$Callback;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/Home;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/iflytek/viafly/Home;->P:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/Home;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/iflytek/viafly/Home;->O:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/Home$b;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 36
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 783
    if-nez p1, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 790
    .local v4, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->p:Lagy;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->p:Lagy;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lagy;->c(Landroid/content/Intent;)V

    .line 794
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->u:Laho;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Laho;->b(Landroid/content/Intent;)Z

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->p:Lagy;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->p:Lagy;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lagy;->a_(Landroid/content/Intent;)V

    .line 800
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->s:Lahe;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lahe;->b(Landroid/content/Intent;)Z

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->r:Lahp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lahp;->e(Landroid/content/Intent;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->p:Lagy;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lagy;->b(Landroid/content/Intent;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 811
    const-string/jumbo v32, "android.intent.action.VIEW"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 813
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    .line 814
    .local v30, "uri":Landroid/net/Uri;
    if-eqz v30, :cond_5

    .line 815
    const-string/jumbo v31, ""

    .line 818
    .local v31, "url":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "lingxi"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_24

    .line 821
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 822
    .local v5, "allUrl":Ljava/lang/String;
    const-string/jumbo v32, "lingxi://data?url="

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 823
    const-string/jumbo v32, "?"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 824
    .local v13, "index":I
    add-int/lit8 v32, v13, 0x1

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    .line 825
    const/16 v32, 0x4

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    .line 833
    .end local v5    # "allUrl":Ljava/lang/String;
    .end local v13    # "index":I
    :cond_4
    :goto_1
    const-string/jumbo v32, "Home"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "handle action.VIEW, url = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v32

    const-string/jumbo v33, ""

    const-string/jumbo v34, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v30    # "uri":Landroid/net/Uri;
    .end local v31    # "url":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_ENTER_SCHEDULE"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 844
    new-instance v16, Landroid/content/Intent;

    const-class v32, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 845
    .local v16, "intent2":Landroid/content/Intent;
    const/high16 v32, 0x30000000

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 846
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/Home;->startActivity(Landroid/content/Intent;)V

    .line 847
    invoke-static/range {p0 .. p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v32

    const-string/jumbo v33, "other"

    invoke-virtual/range {v32 .. v33}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i(Ljava/lang/String;)V

    .line 851
    .end local v16    # "intent2":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_LUANCH_HOME_TO_CONTTENT_BROWSER"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 852
    const-string/jumbo v32, "com.iflytek.cmcc.EXTRA_CODE_SCAN_URL"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 853
    .restart local v31    # "url":Ljava/lang/String;
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v32

    const-string/jumbo v33, ""

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .end local v31    # "url":Ljava/lang/String;
    :cond_7
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_LUANCH_HOME_TO_SCHEDULE_EDIT"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 858
    const-string/jumbo v32, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    check-cast v24, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 859
    .local v24, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 860
    .local v10, "context":Landroid/content/Context;
    new-instance v15, Landroid/content/Intent;

    const-class v32, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;

    move-object/from16 v0, v32

    invoke-direct {v15, v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 861
    .local v15, "intent1":Landroid/content/Intent;
    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    const/high16 v32, 0x14000000

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 863
    const-string/jumbo v32, "operation_type"

    sget-object v33, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual/range {v33 .. v33}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    const-string/jumbo v32, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 866
    const-string/jumbo v32, "GoChannelWhenFinishFlag"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 868
    :try_start_1
    invoke-virtual {v10, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 875
    .end local v10    # "context":Landroid/content/Context;
    .end local v15    # "intent1":Landroid/content/Intent;
    .end local v24    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_8
    :goto_3
    const-string/jumbo v32, "smart_schedule_action"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 876
    const/16 v26, 0x0

    .line 878
    .local v26, "scheduleItem":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    :try_start_2
    const-string/jumbo v32, "smart_schedule_item"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v32

    move-object/from16 v0, v32

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    move-object/from16 v26, v0

    .line 880
    const-string/jumbo v32, "smart_schedule_show_delete"

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    .line 882
    .local v27, "showDelete":Z
    invoke-static/range {v26 .. v26}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->isJumpToDailyTrafficActivity(Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;)Z

    move-result v32

    if-eqz v32, :cond_25

    .line 883
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->startActivity(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 897
    .end local v26    # "scheduleItem":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .end local v27    # "showDelete":Z
    :cond_9
    :goto_4
    const-string/jumbo v32, "schedule_delay_guid"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 899
    :try_start_3
    new-instance v15, Landroid/content/Intent;

    const-class v32, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    .restart local v15    # "intent1":Landroid/content/Intent;
    const/high16 v32, 0x14000000

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 902
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/iflytek/viafly/Home;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 909
    .end local v15    # "intent1":Landroid/content/Intent;
    :cond_a
    :goto_5
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_ENTER_NEWS"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 910
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v32

    const-string/jumbo v33, "news"

    invoke-virtual/range {v32 .. v33}, Lqh;->a(Ljava/lang/String;)V

    .line 914
    :cond_b
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_OPEN_WEATHER_CHANNEL"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 915
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v32

    const-string/jumbo v33, "weather"

    invoke-virtual/range {v32 .. v33}, Lqh;->a(Ljava/lang/String;)V

    .line 919
    :cond_c
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_OPEN_DOWNLOADLIST_ACTIVITY"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 920
    const-class v32, Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 921
    invoke-virtual/range {p0 .. p1}, Lcom/iflytek/viafly/Home;->startActivity(Landroid/content/Intent;)V

    .line 925
    :cond_d
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_LUANCH_HOME_TO_BROWSER"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 926
    const-string/jumbo v32, "com.iflytek.cmcc.EXTRA_CODE_SCAN_URL"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 927
    .restart local v31    # "url":Ljava/lang/String;
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v32

    const-string/jumbo v33, ""

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .end local v31    # "url":Ljava/lang/String;
    :cond_e
    const-string/jumbo v32, "com.iflytek.cmccLAUNCH_HOME_TO_HANDLE_NOTICE"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 933
    invoke-static/range {p0 .. p0}, Lats;->a(Landroid/content/Context;)Lats;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lats;->a(Landroid/content/Intent;)V

    .line 937
    :cond_f
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_HOME_HUMMING"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->e:Lagz;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lagz;->g()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j()V

    .line 940
    :cond_10
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_MUSIC_HUMMING"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 941
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v32

    const-string/jumbo v33, "music"

    invoke-virtual/range {v32 .. v33}, Lqh;->a(Ljava/lang/String;)V

    .line 945
    :cond_11
    if-eqz p1, :cond_12

    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_LAUNCH_HOME_HANDLE_RESULT"

    .line 947
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    .line 946
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 948
    const-string/jumbo v32, "com.iflytek.cmcc.EXTRA_LAUNCH_HOME_RESULT"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 949
    .local v9, "content":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_12

    .line 951
    :try_start_4
    const-string/jumbo v32, "UTF-8"

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    .line 952
    .local v22, "result":[B
    new-instance v23, Lpr;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lpr;-><init>(Landroid/content/Context;)V

    .line 953
    .local v23, "resultsAnalyser":Lpr;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v11, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lpr;->a([BLjava/util/List;)I

    move-result v28

    .line 955
    .local v28, "size":I
    if-eqz v28, :cond_12

    .line 956
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 957
    .local v21, "recoResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const/16 v32, 0x27

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->setEntryType(I)V

    .line 958
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v33

    const/16 v32, 0x0

    .line 959
    move/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 958
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lahp;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 968
    .end local v9    # "content":Ljava/lang/String;
    .end local v11    # "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    .end local v21    # "recoResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .end local v22    # "result":[B
    .end local v23    # "resultsAnalyser":Lpr;
    .end local v28    # "size":I
    :cond_12
    :goto_6
    const-string/jumbo v32, "com.iflytek.lockscreen.FROM_LOCKSCREEN"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->d:Laha;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Laha;->h()V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->l:Lahi;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lahi;->k()V

    .line 973
    :cond_13
    const-string/jumbo v32, "com.iflytek.cmcc.action.CALL_SETTING"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_26

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/Home;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v17

    .line 975
    .local v17, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    new-instance v19, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct/range {v19 .. v19}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;-><init>()V

    .line 976
    .local v19, "newFragment":Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 977
    .local v6, "args":Landroid/os/Bundle;
    const-string/jumbo v32, "action"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 978
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 979
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 990
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v17    # "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    .end local v19    # "newFragment":Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    :cond_14
    :goto_7
    const-string/jumbo v32, "com.iflytek.cmcc.action.QUICK_START_SETTING"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/Home;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v17

    .line 992
    .restart local v17    # "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    new-instance v19, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-direct/range {v19 .. v19}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;-><init>()V

    .line 993
    .local v19, "newFragment":Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 997
    .end local v17    # "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    .end local v19    # "newFragment":Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;
    :cond_15
    const-string/jumbo v32, "com.iflytek.cmcc.action.ACTION_QUICK_NOTIFICATION_TOOL_SETTING"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_27

    .line 999
    invoke-static/range {p0 .. p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v32

    sget-object v33, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bill_notify_to_setting:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual/range {v33 .. v33}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lxb;->a(Ljava/lang/String;)V

    .line 1002
    invoke-static {}, Lhl;->k()I

    move-result v32

    const/16 v33, 0xf

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_16

    .line 1003
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lzq;->i()V

    .line 1004
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "collapse status bar programatically."

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/Home;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v17

    .line 1007
    .restart local v17    # "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    new-instance v19, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;

    invoke-direct/range {v19 .. v19}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;-><init>()V

    .line 1008
    .local v19, "newFragment":Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 1051
    .end local v17    # "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    .end local v19    # "newFragment":Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;
    :cond_17
    :goto_8
    const-string/jumbo v32, "com.iflytek.cmcc.action.ACTION_BOOK_PLAYER"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 1054
    invoke-static {}, Lhl;->k()I

    move-result v32

    const/16 v33, 0xf

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_18

    .line 1055
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lzq;->i()V

    .line 1056
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "collapse status bar programatically."

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_18
    :try_start_5
    new-instance v7, Landroid/content/Intent;

    const-class v32, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1061
    .local v7, "bookIntent":Landroid/content/Intent;
    const/high16 v32, 0x14000000

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1063
    const-string/jumbo v32, "entry"

    const-string/jumbo v33, "notification"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/Home;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1072
    .end local v7    # "bookIntent":Landroid/content/Intent;
    :cond_19
    :goto_9
    const-string/jumbo v32, "com.iflytek.cmcc.action.CHARGE"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 1075
    invoke-static {}, Lhl;->k()I

    move-result v32

    const/16 v33, 0xf

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_1a

    .line 1076
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lzq;->i()V

    .line 1077
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "collapse status bar programatically."

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_1a
    :try_start_6
    new-instance v7, Landroid/content/Intent;

    const-class v32, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1082
    .restart local v7    # "bookIntent":Landroid/content/Intent;
    const/high16 v32, 0x14000000

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1084
    const-string/jumbo v32, "entry"

    const-string/jumbo v33, "notificationCharge"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const-string/jumbo v32, "charge"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 1086
    .local v8, "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    const-string/jumbo v32, "charge"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1087
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/Home;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1093
    .end local v7    # "bookIntent":Landroid/content/Intent;
    .end local v8    # "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    :cond_1b
    :goto_a
    const-string/jumbo v32, "com.iflytek.cmcc.action.ACTION_MUSIC_PLAYER"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1d

    .line 1096
    invoke-static {}, Lhl;->k()I

    move-result v32

    const/16 v33, 0xf

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_1c

    .line 1097
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lzq;->i()V

    .line 1098
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "collapse status bar programatically."

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_1c
    :try_start_7
    new-instance v7, Landroid/content/Intent;

    const-class v32, Lcom/iflytek/viafly/music/MusicPlayerActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1103
    .restart local v7    # "bookIntent":Landroid/content/Intent;
    const/high16 v32, 0x14000000

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1104
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/Home;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1110
    .end local v7    # "bookIntent":Landroid/content/Intent;
    :cond_1d
    :goto_b
    const-string/jumbo v32, "Home"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "intentProcess begin, mCount is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/iflytek/viafly/Home$b;->d:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v32

    const/high16 v33, 0x100000

    and-int v32, v32, v33

    if-nez v32, :cond_2f

    .line 1113
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getStartHomeInfo()Lcom/iflytek/framework/business/entities/StartHomeInfo;

    move-result-object v14

    .line 1114
    .local v14, "info":Lcom/iflytek/framework/business/entities/StartHomeInfo;
    if-eqz v14, :cond_2e

    .line 1115
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "---->> is launch first time."

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, v14, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mAfferentInfo:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    move/from16 v32, v0

    if-eqz v32, :cond_2c

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->r:Lahp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Lahp;->a(Lcom/iflytek/framework/business/entities/StartHomeInfo;)V

    .line 1130
    :cond_1e
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->b(Landroid/content/Intent;)Z

    .line 1134
    .end local v14    # "info":Lcom/iflytek/framework/business/entities/StartHomeInfo;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->g:Lagw;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lagw;->b(Landroid/content/Intent;)Z

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->r:Lahp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lahp;->b(Landroid/content/Intent;)Z

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->m:Lahk;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lahk;->b(Landroid/content/Intent;)Z

    .line 1139
    const-string/jumbo v32, "com.iflytek.cmcc.VOICE_SEARCH_AUDIO_BUFFER"

    .line 1140
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    .line 1139
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_20

    .line 1141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    .line 1142
    .restart local v30    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->b:Lahw;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1f

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->h()V

    .line 1144
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setNeedStartWakeEngine(Z)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->b:Lahw;

    move-object/from16 v32, v0

    const/16 v33, 0x22

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lahw;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    .line 1146
    invoke-virtual/range {v32 .. v32}, Landroid/os/Message;->sendToTarget()V

    .line 1148
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->l:Lahi;

    move-object/from16 v32, v0

    if-eqz v32, :cond_20

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->l:Lahi;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lahi;->g()V

    .line 1154
    .end local v30    # "uri":Landroid/net/Uri;
    :cond_20
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_LAUNCH_HOME_TEXT_SEARCH"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_21

    .line 1155
    const-string/jumbo v32, "com.iflytek.cmcc.EXTRA_DATA"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1156
    .restart local v9    # "content":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_21

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->h()V

    .line 1158
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setNeedStartWakeEngine(Z)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->b:Lahw;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lahw;->obtainMessage()Landroid/os/Message;

    move-result-object v18

    .line 1160
    .local v18, "message":Landroid/os/Message;
    const/16 v32, 0x19

    move/from16 v0, v32

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1161
    move-object/from16 v0, v18

    iput-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->b:Lahw;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x5dc

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lahw;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1167
    .end local v9    # "content":Ljava/lang/String;
    .end local v18    # "message":Landroid/os/Message;
    :cond_21
    const-string/jumbo v32, "com.iflytek.cmcc.ACTION_AUDIO_SPEECHTEST"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_23

    .line 1168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v29

    .line 1169
    .local v29, "testUri":Landroid/net/Uri;
    const-string/jumbo v32, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1170
    .local v20, "packageName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_30

    const-string/jumbo v32, "com.iflytek.speechtesttool"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_30

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->b:Lahw;

    move-object/from16 v32, v0

    if-eqz v32, :cond_22

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->h()V

    .line 1174
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setNeedStartWakeEngine(Z)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->b:Lahw;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lahw;->obtainMessage()Landroid/os/Message;

    move-result-object v18

    .line 1176
    .restart local v18    # "message":Landroid/os/Message;
    const/16 v32, 0x23

    move/from16 v0, v32

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1177
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->b:Lahw;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x1770

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lahw;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1180
    .end local v18    # "message":Landroid/os/Message;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->l:Lahi;

    move-object/from16 v32, v0

    if-eqz v32, :cond_23

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->l:Lahi;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lahi;->g()V

    .line 1189
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v29    # "testUri":Landroid/net/Uri;
    :cond_23
    :goto_e
    const-string/jumbo v32, "com.iflytek.cmcc.intent.action.GOTO_PLUGIN"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    const-string/jumbo v32, "com.imohoo.shanpao"

    const-string/jumbo v33, "from"

    .line 1190
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    const-string/jumbo v32, "com.cmcc.viafly.headset"

    const-string/jumbo v33, "goto"

    .line 1191
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 1192
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->c()Lcom/iflytek/viafly/ViaFlyApp;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/iflytek/viafly/ViaFlyApp;->h()Z

    move-result v32

    if-nez v32, :cond_31

    .line 1193
    const-string/jumbo v32, "\u6b63\u5728\u521d\u59cb\u5316\u63d2\u4ef6"

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->b:Lahw;

    move-object/from16 v32, v0

    new-instance v33, Lcom/iflytek/viafly/Home$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/Home$3;-><init>(Lcom/iflytek/viafly/Home;)V

    const-wide/16 v34, 0x7d0

    invoke-virtual/range {v32 .. v35}, Lahw;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 830
    .restart local v30    # "uri":Landroid/net/Uri;
    .restart local v31    # "url":Ljava/lang/String;
    :cond_24
    :try_start_8
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v31

    goto/16 :goto_1

    .line 836
    .end local v30    # "uri":Landroid/net/Uri;
    .end local v31    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 837
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 869
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v15    # "intent1":Landroid/content/Intent;
    .restart local v24    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :catch_1
    move-exception v12

    .line 870
    .local v12, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v32, "Home"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Nothing available to handle "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 885
    .end local v10    # "context":Landroid/content/Context;
    .end local v12    # "e":Landroid/content/ActivityNotFoundException;
    .end local v15    # "intent1":Landroid/content/Intent;
    .end local v24    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .restart local v26    # "scheduleItem":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .restart local v27    # "showDelete":Z
    :cond_25
    :try_start_9
    new-instance v25, Landroid/content/Intent;

    const-class v32, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 886
    .local v25, "scheduleIntent":Landroid/content/Intent;
    const/high16 v32, 0x14000000

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 887
    const-string/jumbo v32, "smart_schedule_item"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 888
    const-string/jumbo v32, "smart_schedule_show_delete"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 889
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/Home;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    .line 892
    .end local v25    # "scheduleIntent":Landroid/content/Intent;
    .end local v27    # "showDelete":Z
    :catch_2
    move-exception v12

    .line 893
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 903
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v26    # "scheduleItem":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    :catch_3
    move-exception v12

    .line 904
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 961
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "content":Ljava/lang/String;
    :catch_4
    move-exception v12

    .line 962
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 980
    .end local v9    # "content":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_26
    const-string/jumbo v32, "com.iflytek.cmcc.action.SMS_SETTING"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/Home;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v17

    .line 982
    .restart local v17    # "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    new-instance v19, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct/range {v19 .. v19}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;-><init>()V

    .line 983
    .local v19, "newFragment":Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 984
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string/jumbo v32, "action"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 985
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 986
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_7

    .line 1009
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v17    # "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    .end local v19    # "newFragment":Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    :cond_27
    const-string/jumbo v32, "com.iflytek.viafly.cafnotification.ACTION_GO_TO_DETAIL"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2a

    .line 1011
    invoke-static/range {p0 .. p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v32

    sget-object v33, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bill_notify_content_to_detail:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual/range {v33 .. v33}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lxb;->a(Ljava/lang/String;)V

    .line 1012
    invoke-static/range {p0 .. p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v32

    const-string/jumbo v33, "LX_100016"

    invoke-virtual/range {v32 .. v33}, Lwz;->a(Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Lhl;->k()I

    move-result v32

    const/16 v33, 0xf

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_28

    .line 1016
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lzq;->i()V

    .line 1017
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "collapse status bar programatically."

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_28
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lzn;->j()Ljava/lang/String;

    move-result-object v31

    .line 1020
    .restart local v31    # "url":Ljava/lang/String;
    if-eqz v31, :cond_29

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_29

    .line 1021
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "go to caf detail page success."

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v32

    const-string/jumbo v33, ""

    const-string/jumbo v34, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1024
    :cond_29
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "go to caf detail page fail because the url is null."

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1026
    .end local v31    # "url":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v32, "com.iflytek.viafly.cafnotification.ACTION_GO_TO_AUTH"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 1028
    invoke-static {}, Lhl;->k()I

    move-result v32

    const/16 v33, 0xf

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_2b

    .line 1029
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lzq;->i()V

    .line 1030
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "collapse status bar programatically."

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->e:Lagz;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lagz;->g()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/iflytek/viafly/HomeRootView;->a()V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->b:Lahw;

    move-object/from16 v32, v0

    new-instance v33, Lcom/iflytek/viafly/Home$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/Home$2;-><init>(Lcom/iflytek/viafly/Home;)V

    const-wide/16 v34, 0xc8

    invoke-virtual/range {v32 .. v35}, Lahw;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_8

    .line 1065
    :catch_5
    move-exception v12

    .line 1066
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 1088
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v12

    .line 1089
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 1105
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v12

    .line 1106
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 1119
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v14    # "info":Lcom/iflytek/framework/business/entities/StartHomeInfo;
    :cond_2c
    iget v0, v14, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mFromWhere:I

    move/from16 v32, v0

    const/16 v33, 0xb

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2d

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->w:Lahn;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lahn;->a(Lcom/iflytek/framework/business/entities/StartHomeInfo;Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 1121
    :cond_2d
    iget v0, v14, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mFromWhere:I

    move/from16 v32, v0

    const/16 v33, 0x17

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1e

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->d:Laha;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Laha;->h()V

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/Home;->l:Lahi;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lahi;->k()V

    goto/16 :goto_c

    .line 1127
    :cond_2e
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "intent is not from other entry"

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1132
    .end local v14    # "info":Lcom/iflytek/framework/business/entities/StartHomeInfo;
    :cond_2f
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "---->> is launch from history!"

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1184
    .restart local v20    # "packageName":Ljava/lang/String;
    .restart local v29    # "testUri":Landroid/net/Uri;
    :cond_30
    const-string/jumbo v32, "Home"

    const-string/jumbo v33, "get speech test data, no packageName"

    invoke-static/range {v32 .. v33}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1205
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v29    # "testUri":Landroid/net/Uri;
    :cond_31
    new-instance v32, Lmv;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmv;-><init>(Landroid/content/Context;)V

    sget v33, Lmx;->c:I

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lmv;->a(ILmw;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/iflytek/viafly/Home$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/Home$a;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    .line 396
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/Home;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/Home;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/Home;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->h()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/Home;)Lahp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/Home;)Lahv;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Lqb;->a()Z

    move-result v0

    # if-eqz v0, :cond_0

    .line 522
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "Ivw|startWakeUp-----true"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbbp;->a(Z)V

    .line 526
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/Home;)Lahe;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->s:Lahe;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 530
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/Home;->requestWindowFeature(I)Z

    .line 532
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 533
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 534
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v2, "#E4E9EF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/Home;)Lahh;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->t:Lahh;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 540
    .local v0, "configuration":Landroid/content/res/Configuration;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 541
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 542
    return-void
.end method

.method static synthetic g(Lcom/iflytek/viafly/Home;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->O:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 548
    new-instance v0, Laha;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Laha;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    .line 550
    new-instance v0, Lagz;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lagz;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    .line 551
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    invoke-static {v0}, Lagv;->a(Lagz;)V

    .line 553
    new-instance v0, Lahl;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahl;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->f:Lahl;

    .line 555
    new-instance v0, Lagw;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lagw;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    .line 557
    new-instance v0, Lahf;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahf;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->j:Lahf;

    .line 558
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->j:Lahf;

    invoke-static {v0}, Lagv;->a(Lahf;)V

    .line 560
    new-instance v0, Lahd;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahd;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->h:Lahd;

    .line 561
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->h:Lahd;

    invoke-static {v0}, Lagv;->a(Lahd;)V

    .line 563
    new-instance v0, Lahg;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahg;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    .line 564
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    invoke-static {v0}, Lagv;->a(Lahg;)V

    .line 566
    new-instance v0, Lahs;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahs;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->k:Lahs;

    .line 568
    new-instance v0, Lbaf;

    invoke-direct {v0, p0}, Lbaf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->H:Lbaf;

    .line 570
    new-instance v0, Lahi;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahi;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    .line 571
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    invoke-static {v0}, Lagv;->a(Lahi;)V

    .line 573
    new-instance v0, Lahk;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahk;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    .line 574
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    invoke-static {v0}, Lagv;->a(Lahk;)V

    .line 576
    new-instance v0, Lagx;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lagx;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->n:Lagx;

    .line 577
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->n:Lagx;

    invoke-static {v0}, Lagv;->a(Lagx;)V

    .line 579
    new-instance v0, Lahq;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahq;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->o:Lahq;

    .line 580
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->o:Lahq;

    invoke-static {v0}, Lagv;->a(Lahq;)V

    .line 582
    new-instance v0, Lagy;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lagy;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    .line 583
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    invoke-static {v0}, Lagv;->a(Lagy;)V

    .line 585
    new-instance v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    .line 586
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    invoke-static {v0}, Lagv;->a(Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;)V

    .line 588
    new-instance v0, Lahp;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahp;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    .line 589
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-static {v0}, Lagv;->a(Lahp;)V

    .line 590
    new-instance v0, Lahe;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahe;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->s:Lahe;

    .line 591
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->s:Lahe;

    invoke-static {v0}, Lagv;->a(Lahe;)V

    .line 593
    new-instance v0, Lahh;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahh;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->t:Lahh;

    .line 594
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->t:Lahh;

    invoke-static {v0}, Lagv;->a(Lahh;)V

    .line 596
    new-instance v0, Laho;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Laho;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->u:Laho;

    .line 597
    invoke-static {}, Lvl;->a()Lvl;

    move-result-object v1

    iget-object v0, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-virtual {v0}, Lahv;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lvl;->a(Landroid/content/Context;)V

    .line 599
    new-instance v1, Lqh;

    iget-object v0, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-virtual {v0}, Lahv;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lqh;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/Home;->C:Lqh;

    .line 600
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->C:Lqh;

    invoke-static {v0}, Lagv;->a(Lqh;)V

    .line 602
    new-instance v0, Lahb;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahb;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->v:Lahb;

    .line 604
    new-instance v0, Lahn;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahn;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->w:Lahn;

    .line 606
    new-instance v0, Lahj;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahj;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->x:Lahj;

    .line 608
    invoke-static {p0}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->createInstance(Landroid/content/Context;)V

    .line 610
    new-instance v0, Lanx;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lanx;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->y:Lanx;

    .line 611
    new-instance v0, Lanw;

    invoke-direct {v0, p0}, Lanw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->z:Lanw;

    .line 613
    new-instance v0, Lalr;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lalr;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->A:Lalr;

    .line 615
    new-instance v0, Lamg;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lamg;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->B:Lamg;

    .line 617
    new-instance v0, Lagg;

    invoke-direct {v0}, Lagg;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->F:Lagg;

    .line 619
    new-instance v0, Laon;

    invoke-direct {v0}, Laon;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->G:Laon;

    .line 621
    new-instance v0, Lahc;

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    invoke-direct {v0, v1}, Lahc;-><init>(Lahu;)V

    iput-object v0, p0, Lcom/iflytek/viafly/Home;->D:Lahc;

    .line 622
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->D:Lahc;

    invoke-static {v0}, Lagv;->a(Lahc;)V

    .line 623
    return-void
.end method

.method static synthetic h(Lcom/iflytek/viafly/Home;)Landroid/os/Handler$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->Q:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 755
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "initView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v0}, Lahp;->h()V

    .line 757
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v2}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lahv;->h(Ljava/lang/ref/WeakReference;)V

    .line 759
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    invoke-virtual {v0}, Lagz;->f()Z

    .line 760
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    invoke-virtual {v2}, Lagz;->g()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lahv;->e(Ljava/lang/ref/WeakReference;)V

    .line 761
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    invoke-virtual {v0}, Lagz;->g()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-static {v0}, Lagv;->a(Lcom/iflytek/viafly/HomeRootView;)V

    .line 764
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    invoke-virtual {v0}, Lagz;->g()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home$a;)V

    .line 766
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    invoke-virtual {v0}, Laha;->f()Z

    .line 771
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->a()Lqr;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lahv;->j(Ljava/lang/ref/WeakReference;)V

    .line 772
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v0}, Lahp;->f()Z

    .line 773
    return-void
.end method

.method static synthetic i(Lcom/iflytek/viafly/Home;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->P:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1349
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "freeMemory()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1352
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/Home;->setContentView(Landroid/view/View;)V

    .line 1354
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->j()V

    .line 1355
    iput-object v2, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    .line 1357
    iput-object v2, p0, Lcom/iflytek/viafly/Home;->N:Landroid/widget/Toast;

    .line 1359
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->b:Lahw;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->b:Lahw;

    invoke-virtual {v0, v2}, Lahw;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1361
    iput-object v2, p0, Lcom/iflytek/viafly/Home;->b:Lahw;

    .line 1363
    :cond_0
    iput-object v2, p0, Lcom/iflytek/viafly/Home;->K:Lcom/iflytek/viafly/homehelper/base/HomeReceiver;

    .line 1365
    iput-object v2, p0, Lcom/iflytek/viafly/Home;->J:Ljava/lang/Runnable;

    .line 1366
    iput-object v2, p0, Lcom/iflytek/viafly/Home;->O:Landroid/os/HandlerThread;

    .line 1367
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->P:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1368
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "mWorkThreadHandler remove all message!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->P:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1370
    iput-object v2, p0, Lcom/iflytek/viafly/Home;->P:Landroid/os/Handler;

    .line 1372
    :cond_1
    iput-object v2, p0, Lcom/iflytek/viafly/Home;->Q:Landroid/os/Handler$Callback;

    .line 1374
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1375
    return-void
.end method

.method static synthetic j(Lcom/iflytek/viafly/Home;)Lahw;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->b:Lahw;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->j:Lahf;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->j:Lahf;

    invoke-virtual {v0}, Lahf;->d()V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->h:Lahd;

    if-eqz v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->h:Lahd;

    invoke-virtual {v0}, Lahd;->d()V

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    if-eqz v0, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    invoke-virtual {v0}, Lahg;->d()V

    .line 1387
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->k:Lahs;

    if-eqz v0, :cond_3

    .line 1388
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->k:Lahs;

    invoke-virtual {v0}, Lahs;->d()V

    .line 1390
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    if-eqz v0, :cond_4

    .line 1391
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    invoke-virtual {v0}, Lahi;->d()V

    .line 1393
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    if-eqz v0, :cond_5

    .line 1394
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    invoke-virtual {v0}, Lahk;->d()V

    .line 1396
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->n:Lagx;

    if-eqz v0, :cond_6

    .line 1397
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->n:Lagx;

    invoke-virtual {v0}, Lagx;->d()V

    .line 1399
    :cond_6
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->o:Lahq;

    if-eqz v0, :cond_7

    .line 1400
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->o:Lahq;

    invoke-virtual {v0}, Lahq;->d()V

    .line 1402
    :cond_7
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    if-eqz v0, :cond_8

    .line 1403
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    invoke-virtual {v0}, Lagy;->d()V

    .line 1405
    :cond_8
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    if-eqz v0, :cond_9

    .line 1406
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d()V

    .line 1408
    :cond_9
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    if-eqz v0, :cond_a

    .line 1409
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v0}, Lahp;->d()V

    .line 1411
    :cond_a
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->s:Lahe;

    if-eqz v0, :cond_b

    .line 1412
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->s:Lahe;

    invoke-virtual {v0}, Lahe;->d()V

    .line 1414
    :cond_b
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->t:Lahh;

    if-eqz v0, :cond_c

    .line 1415
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->t:Lahh;

    invoke-virtual {v0}, Lahh;->d()V

    .line 1417
    :cond_c
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->u:Laho;

    if-eqz v0, :cond_d

    .line 1418
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->u:Laho;

    invoke-virtual {v0}, Laho;->d()V

    .line 1420
    :cond_d
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->v:Lahb;

    if-eqz v0, :cond_e

    .line 1421
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->v:Lahb;

    invoke-virtual {v0}, Lahb;->d()V

    .line 1423
    :cond_e
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->w:Lahn;

    if-eqz v0, :cond_f

    .line 1424
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->w:Lahn;

    invoke-virtual {v0}, Lahn;->d()V

    .line 1426
    :cond_f
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->j:Lahf;

    if-eqz v0, :cond_10

    .line 1427
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->j:Lahf;

    invoke-virtual {v0}, Lahf;->d()V

    .line 1429
    :cond_10
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->x:Lahj;

    if-eqz v0, :cond_11

    .line 1430
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->x:Lahj;

    invoke-virtual {v0}, Lahj;->d()V

    .line 1433
    :cond_11
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->f:Lahl;

    if-eqz v0, :cond_12

    .line 1434
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->f:Lahl;

    invoke-virtual {v0}, Lahl;->d()V

    .line 1436
    :cond_12
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    if-eqz v0, :cond_13

    .line 1437
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    invoke-virtual {v0}, Lagw;->d()V

    .line 1439
    :cond_13
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    if-eqz v0, :cond_14

    .line 1440
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    invoke-virtual {v0}, Laha;->d()V

    .line 1443
    :cond_14
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    if-eqz v0, :cond_15

    .line 1444
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    invoke-virtual {v0}, Lagz;->d()V

    .line 1446
    :cond_15
    return-void
.end method

.method static synthetic k(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1452
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->k:Lahs;

    if-eqz v2, :cond_0

    .line 1453
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->k:Lahs;

    invoke-virtual {v2, v5}, Lahs;->b(Z)Z

    .line 1455
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    if-eqz v2, :cond_1

    .line 1456
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v2, v5}, Lahp;->b(Z)Z

    .line 1458
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->n:Lagx;

    if-eqz v2, :cond_2

    .line 1459
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->n:Lagx;

    invoke-virtual {v2, v5}, Lagx;->b(Z)Z

    .line 1461
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    if-eqz v2, :cond_3

    .line 1462
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    invoke-virtual {v2, v5}, Lagw;->b(Z)Z

    .line 1471
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "channelID":Ljava/lang/String;
    const-string/jumbo v2, "Home"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extra: channelID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const-string/jumbo v2, "16010017"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1474
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->H:Lbaf;

    if-eqz v2, :cond_4

    .line 1475
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/iflytek/viafly/Home$4;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/Home$4;-><init>(Lcom/iflytek/viafly/Home;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1489
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->w:Lahn;

    if-eqz v2, :cond_5

    .line 1490
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->w:Lahn;

    invoke-virtual {v2, v5}, Lahn;->b(Z)Z

    .line 1492
    :cond_5
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->u:Laho;

    if-eqz v2, :cond_6

    .line 1493
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->u:Laho;

    invoke-virtual {v2, v5}, Laho;->b(Z)Z

    .line 1495
    :cond_6
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->K:Lcom/iflytek/viafly/homehelper/base/HomeReceiver;

    if-eqz v2, :cond_7

    .line 1497
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->K:Lcom/iflytek/viafly/homehelper/base/HomeReceiver;

    invoke-virtual {v2}, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;->a()V

    .line 1500
    :cond_7
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/Home;->setVolumeControlStream(I)V

    .line 1502
    invoke-static {v5}, Lagv;->a(Z)V

    .line 1503
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    if-eqz v2, :cond_8

    .line 1504
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    invoke-virtual {v2, v5}, Lahg;->b(Z)Z

    .line 1507
    :cond_8
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v2

    invoke-virtual {v2}, Ltd;->d()V

    .line 1512
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    if-eqz v2, :cond_9

    .line 1513
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    invoke-virtual {v2, v5}, Lagy;->b(Z)Z

    .line 1516
    :cond_9
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v1

    .line 1517
    .local v1, "phoneModel":Ljava/lang/String;
    const-string/jumbo v2, "Home"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "phone model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    if-eqz v2, :cond_a

    .line 1520
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    invoke-virtual {v2, v5}, Lahk;->b(Z)Z

    .line 1544
    :cond_a
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->z:Lanw;

    if-eqz v2, :cond_b

    .line 1545
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->z:Lanw;

    invoke-virtual {v2}, Lanw;->a()V

    .line 1547
    :cond_b
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->l()V

    .line 1549
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->F:Lagg;

    if-eqz v2, :cond_c

    .line 1550
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->F:Lagg;

    invoke-virtual {v2, p0}, Lagg;->a(Landroid/app/Activity;)V

    .line 1554
    :cond_c
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->A:Lalr;

    if-eqz v2, :cond_d

    .line 1555
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->A:Lalr;

    invoke-virtual {v2, v5}, Lalr;->b(Z)Z

    .line 1558
    :cond_d
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->B:Lamg;

    if-eqz v2, :cond_e

    .line 1559
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->B:Lamg;

    invoke-virtual {v2, v5}, Lamg;->b(Z)Z

    .line 1563
    :cond_e
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1564
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->G:Laon;

    if-eqz v2, :cond_f

    .line 1565
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->G:Laon;

    invoke-virtual {v2}, Laon;->a()V

    .line 1569
    :cond_f
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->D:Lahc;

    if-eqz v2, :cond_10

    .line 1570
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->D:Lahc;

    invoke-virtual {v2, v5}, Lahc;->b(Z)Z

    .line 1574
    :cond_10
    invoke-static {}, Laoj;->b()V

    .line 1575
    return-void

    .line 1483
    .end local v1    # "phoneModel":Ljava/lang/String;
    :cond_11
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->k:Lahs;

    if-eqz v2, :cond_4

    .line 1484
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->k:Lahs;

    invoke-virtual {v2}, Lahs;->h()V

    .line 1485
    iget-object v2, p0, Lcom/iflytek/viafly/Home;->k:Lahs;

    invoke-virtual {v2}, Lahs;->j()V

    goto/16 :goto_0
.end method

.method static synthetic l(Lcom/iflytek/viafly/Home;)Lahi;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 1579
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v2, "shortcut":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    const-string/jumbo v5, "\u7075\u7280\u4e8c\u7ef4\u7801"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CaptureActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 1585
    .local v3, "shortcutIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1587
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/Home;->sendBroadcast(Landroid/content/Intent;)V

    .line 1589
    const-string/jumbo v4, "Home"

    const-string/jumbo v5, "removeCodeScanShortCut"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v2    # "shortcut":Landroid/content/Intent;
    .end local v3    # "shortcutIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1590
    :catch_0
    move-exception v1

    .line 1591
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Home"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic m(Lcom/iflytek/viafly/Home;)Lbaf;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->H:Lbaf;

    return-object v0
.end method

.method private m()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iflytek/viafly/Home;->M:J

    sub-long v0, v4, v6

    .line 1704
    .local v0, "interval":J
    const-string/jumbo v3, "Home"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "---->> click to exit app : interval time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const-wide/16 v4, 0x7d0

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 1706
    iget-object v3, p0, Lcom/iflytek/viafly/Home;->N:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 1707
    const v3, 0x7f0c02eb

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/Home;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/Home;->N:Landroid/widget/Toast;

    .line 1711
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/Home;->N:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/viafly/Home;->M:J

    .line 1717
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1874
    invoke-static {}, Laza;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1909
    :goto_0
    return-void

    .line 1878
    :cond_0
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "handlePermission"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    sget-object v0, Lcom/iflytek/viafly/Home;->R:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/Home$7;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/Home$7;-><init>(Lcom/iflytek/viafly/Home;)V

    invoke-static {p0, v0, v1}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/iflytek/viafly/Home;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->k()V

    return-void
.end method


# virtual methods
.method public a()Lqr;
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    invoke-virtual {v0}, Lagz;->g()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getMicController()Lqr;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "webFocus"    # Ljava/lang/String;
    .param p2, "loaclFocus"    # Ljava/lang/String;

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->b:Lahw;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lahw;->sendEmptyMessage(I)Z

    .line 1811
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1819
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    invoke-virtual {v0}, Lahg;->c_()Z

    .line 1820
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->x:Lahj;

    invoke-virtual {v0}, Lahj;->c_()Z

    .line 1821
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->C:Lqh;

    invoke-virtual {v0, v1}, Lqh;->b(Z)V

    .line 1823
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/Home$a;->b(Z)Z

    .line 1826
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1833
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->C:Lqh;

    invoke-virtual {v0, v1}, Lqh;->b(Z)V

    .line 1834
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/Home$a;->b(Z)Z

    .line 1837
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1624
    const-string/jumbo v1, "Home"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchKeyEvent keyCode is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, "-------------------------dispatchKeyEvent"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    invoke-virtual {v1, p1}, Laha;->a(Landroid/view/KeyEvent;)Z

    .line 1628
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1632
    :goto_0
    return v1

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, "dispatchKeyEvent()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1632
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1597
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    invoke-virtual {v1, p1}, Laha;->b(Landroid/view/MotionEvent;)Z

    .line 1599
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1603
    :goto_0
    return v1

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, "dispatchTouchEvent()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1603
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1214
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->finish()V

    .line 1215
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_FIRST_USE"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 1216
    invoke-static {v2}, Lagv;->a(Z)V

    .line 1217
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    invoke-virtual {v0}, Lahg;->v()Z

    .line 1218
    return-void
.end method

.method public getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;
    .locals 1

    .prologue
    .line 1841
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1784
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1785
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "----------->> onActivityResult()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const/16 v0, 0x1f41

    if-ne p1, v0, :cond_0

    .line 1788
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/Home$6;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/Home$6;-><init>(Lcom/iflytek/viafly/Home;)V

    invoke-virtual {v0, v1}, Lpb;->a(Lpb$a;)V

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v0, p1, p2, p3}, Lahp;->a(IILandroid/content/Intent;)Z

    .line 1798
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    if-eqz v0, :cond_1

    .line 1799
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/viafly/Home$a;->a(IILandroid/content/Intent;)Z

    .line 1801
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 401
    const-string/jumbo v0, "Home"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    .line 406
    const-string/jumbo v8, "Home"

    const-string/jumbo v9, "onCreate"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lahv;->b(Ljava/lang/ref/WeakReference;)V

    .line 410
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lahv;->c(Ljava/lang/ref/WeakReference;)V

    .line 411
    new-instance v8, Lahw;

    invoke-direct {v8, p0}, Lahw;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/Home;->b:Lahw;

    .line 412
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    new-instance v9, Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Lcom/iflytek/viafly/Home;->b:Lahw;

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lahv;->d(Ljava/lang/ref/WeakReference;)V

    .line 413
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->b:Lahw;

    invoke-static {v8}, Lagv;->a(Lahw;)V

    .line 414
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    new-instance v9, Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lahv;->g(Ljava/lang/ref/WeakReference;)V

    .line 416
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->g()V

    .line 419
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v8

    invoke-virtual {v8}, Lzq;->i()V

    .line 422
    invoke-static {}, Lahm;->h()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 423
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 424
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    new-instance v9, Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Lcom/iflytek/viafly/Home;->mContentView:Landroid/widget/RelativeLayout;

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lahv;->f(Ljava/lang/ref/WeakReference;)V

    .line 426
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 427
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 428
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    const-string/jumbo v8, "com.iflytek.cmcc.VOICE_SEARCH_AUDIO_BUFFER"

    .line 429
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 430
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 432
    :cond_0
    const-string/jumbo v8, "com.iflytek.cmcc.VOICE_SEARCH_AUDIO_BUFFER"

    invoke-static {p0, v8, v5}, Lahm;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 434
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->finish()V

    .line 518
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0

    .line 219
    new-instance v0, Lcom/iflytek/viafly/Home$c;
    invoke-direct {v0, p0}, Lcom/iflytek/viafly/Home$c;-><init>(Lcom/iflytek/viafly/Home;)V
    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Lpf$a;)V
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->d()V



    .line 244
    return-void

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->n()V

    .line 440
    new-instance v8, Lazi;

    invoke-direct {v8, p0}, Lazi;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/Home;->a:Lazi;

    .line 441
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->a:Lazi;

    invoke-virtual {v8, p0}, Lazi;->a(Lazi$b;)V

    .line 442
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->a:Lazi;

    invoke-virtual {v8}, Lazi;->a()V

    .line 445
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v8

    const-string/jumbo v9, "LX_600000"

    invoke-virtual {v8, v9}, Lwz;->a(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 450
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->u:Laho;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Laho;->a(Landroid/content/Intent;)Z

    .line 452
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->f:Lahl;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lahl;->a(Landroid/content/Intent;)Z

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 455
    .local v6, "startTime":J
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->f:Lahl;

    invoke-virtual {v8, v6, v7}, Lahl;->a(J)V

    .line 456
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    invoke-virtual {v8, v6, v7}, Lagw;->a(J)V

    .line 458
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->f()V

    .line 459
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->e()V

    .line 461
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->v:Lahb;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lahb;->a(Landroid/content/Intent;)Z

    .line 464
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 465
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->c:Lahv;

    new-instance v9, Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Lcom/iflytek/viafly/Home;->mContentView:Landroid/widget/RelativeLayout;

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lahv;->f(Ljava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_1
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lagz;->a(Landroid/content/Intent;)Z

    .line 472
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lagy;->a(Landroid/content/Intent;)Z

    .line 473
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->o:Lahq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lahq;->a(Landroid/content/Intent;)Z

    .line 475
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lahi;->a(Landroid/content/Intent;)Z

    .line 477
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lahp;->a(Landroid/content/Intent;)Z

    .line 478
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lagw;->a(Landroid/content/Intent;)Z

    .line 480
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(Landroid/content/Intent;)Z

    .line 481
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->D:Lahc;

    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lahc;->a(Landroid/content/Intent;)Z

    .line 494
    invoke-static {p0}, Lahr;->a(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {p0}, Lahr;->b(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 495
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmccIFLY_SHORTCUT_STATE"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v4

    .line 497
    .local v4, "shortCutState":Z
    if-nez v4, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/iflytek/viafly/SplashActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0c0009

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/Home;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0203bf

    invoke-static {p0, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v11

    invoke-static {p0, v8, v9, v10, v11}, Lazv;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;)V

    .line 499
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmccIFLY_SHORTCUT_STATE"

    invoke-virtual {v8, v9, v12}, Lil;->a(Ljava/lang/String;Z)V

    .line 507
    .end local v4    # "shortCutState":Z
    :cond_3
    invoke-static {p0}, Laup;->a(Landroid/content/Context;)V

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 511
    .local v2, "endTime":J
    iget-object v8, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iput-boolean v12, v8, Lcom/iflytek/viafly/Home$b;->a:Z

    .line 513
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lxd;->a(Landroid/content/Context;)Lxd;

    move-result-object v8

    invoke-virtual {v8}, Lxd;->c()V

    .line 515
    const-string/jumbo v8, "ApplicationLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "home onCreate end timestamp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string/jumbo v8, "ApplicationLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "home onCreate end = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string/jumbo v8, "ApplicationLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "from process onCreate begin to home onCreate end = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-wide v10, v10, Lcom/iflytek/viafly/Home$b;->i:J

    sub-long v10, v2, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 466
    .end local v2    # "endTime":J
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "Home"

    const-string/jumbo v9, "onCreate()"

    invoke-static {v8, v9, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I



    goto/16 :goto_1
.end method

.method protected declared-synchronized onDestroy()V
    .locals 4

    .prologue
    .line 1222
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, "----------------->>>> onDestroy()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-static {}, Lahm;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    :goto_0
    monitor-exit p0

    return-void

    .line 1230
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v1, v1, Lcom/iflytek/viafly/Home$b;->l:Z

    if-eqz v1, :cond_1

    .line 1231
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1222
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1236
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    if-eqz v1, :cond_2

    .line 1237
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    invoke-interface {v1}, Lcom/iflytek/viafly/Home$a;->g()Z

    .line 1240
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->a:Lazi;

    if-eqz v1, :cond_3

    .line 1241
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->a:Lazi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lazi;->a(Lazi$b;)V

    .line 1242
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->a:Lazi;

    invoke-virtual {v1}, Lazi;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1250
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->K:Lcom/iflytek/viafly/homehelper/base/HomeReceiver;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1255
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->x:Lahj;

    if-eqz v1, :cond_4

    .line 1256
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->x:Lahj;

    invoke-virtual {v1}, Lahj;->c()Z

    .line 1260
    :cond_4
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->reset()V

    .line 1262
    const/4 v1, 0x0

    invoke-static {v1}, Lagv;->a(Z)V

    .line 1264
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    if-eqz v1, :cond_5

    .line 1265
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    invoke-virtual {v1}, Lahg;->c()Z

    .line 1267
    :cond_5
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_FIRST_USE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 1269
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onDestroy()V

    .line 1271
    invoke-static {}, Lpt;->a()V

    .line 1273
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->N:Landroid/widget/Toast;

    if-eqz v1, :cond_6

    .line 1274
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->N:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 1278
    :cond_6
    invoke-static {p0}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v1

    invoke-virtual {v1}, Ltd;->b()V

    .line 1280
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    if-eqz v1, :cond_7

    .line 1281
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v1}, Lahp;->c()Z

    .line 1283
    :cond_7
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    if-eqz v1, :cond_8

    .line 1284
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    invoke-virtual {v1}, Lahi;->c()Z

    .line 1286
    :cond_8
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->z:Lanw;

    if-eqz v1, :cond_9

    .line 1288
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->z:Lanw;

    invoke-virtual {v1}, Lanw;->b()V

    .line 1291
    :cond_9
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    if-eqz v1, :cond_a

    .line 1292
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->e:Lagz;

    invoke-virtual {v1}, Lagz;->c()Z

    .line 1295
    :cond_a
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->D:Lahc;

    if-eqz v1, :cond_b

    .line 1296
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->D:Lahc;

    invoke-virtual {v1}, Lahc;->c()Z

    .line 1303
    :cond_b
    const-string/jumbo v1, "com.cmcc.viafly.headset"

    invoke-static {v1}, Lcom/iflytek/greenplug/client/GreenPlug;->isPluginRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1304
    const-string/jumbo v1, "com.cmcc.viafly.headset"

    invoke-static {v1}, Lcom/iflytek/greenplug/client/GreenPlug;->stopPackage(Ljava/lang/String;)I

    .line 1307
    :cond_c
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->f:Lahl;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->f:Lahl;

    invoke-virtual {v1}, Lahl;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1308
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->i()V

    goto/16 :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1312
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    if-eqz v1, :cond_e

    .line 1313
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    invoke-virtual {v1}, Lahk;->c()Z

    .line 1314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    .line 1316
    :cond_e
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    if-eqz v1, :cond_f

    .line 1317
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    invoke-virtual {v1}, Lagy;->c()Z

    .line 1318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/Home;->p:Lagy;

    .line 1320
    :cond_f
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->y:Lanx;

    if-eqz v1, :cond_10

    .line 1321
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->y:Lanx;

    invoke-virtual {v1}, Lanx;->c()Z

    .line 1322
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/Home;->y:Lanx;

    .line 1325
    :cond_10
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->A:Lalr;

    if-eqz v1, :cond_11

    .line 1326
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->A:Lalr;

    invoke-virtual {v1}, Lalr;->c()Z

    .line 1327
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/Home;->A:Lalr;

    .line 1330
    :cond_11
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->B:Lamg;

    if-eqz v1, :cond_12

    .line 1331
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->B:Lamg;

    invoke-virtual {v1}, Lamg;->c()Z

    .line 1332
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/Home;->B:Lamg;

    .line 1335
    :cond_12
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    if-eqz v1, :cond_13

    .line 1336
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->c()Z

    .line 1337
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    .line 1342
    :cond_13
    const-string/jumbo v1, "ApplicationLoader"

    const-string/jumbo v2, "----------------->>>> onDestroy() end"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1640
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, "--------------->> onKeyDown()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-boolean v1, p0, Lcom/iflytek/viafly/Home;->L:Z

    if-nez v1, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return v0

    .line 1646
    :cond_1
    iput-boolean v3, p0, Lcom/iflytek/viafly/Home;->L:Z

    .line 1648
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    invoke-virtual {v1, p1, p2}, Lahi;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    invoke-virtual {v1, p1, p2}, Laha;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1662
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v1, p1, p2}, Lahp;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1666
    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    .line 1667
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanView()Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1672
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1673
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanView()Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1674
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanView()Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->stopScan()V

    .line 1675
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->setHomeEntryScanFlag(Z)V

    goto :goto_0

    .line 1680
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/viafly/Home$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1684
    :cond_4
    if-ne p1, v4, :cond_5

    .line 1685
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->m()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1686
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 1687
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, " onKeyDown : HandleBlackboard.reset()"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1689
    :cond_6
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, " onKeyDown : \u4e24\u6b21\u70b9\u51fb\u8fd4\u56de\u952e\u65f6\u95f4\u95f4\u9694\u5927\u4e8e\u7b49\u4e8e2s"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1616
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "--------------->> onKeyUp()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    invoke-virtual {v0, p1, p2}, Laha;->b(ILandroid/view/KeyEvent;)Z

    .line 1618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/Home;->L:Z

    .line 1619
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1751
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1752
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, "----------------->>> onNewIntent()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->u:Laho;

    invoke-virtual {v1, p1}, Laho;->d(Landroid/content/Intent;)Z

    .line 1755
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->h:Lahd;

    invoke-virtual {v1, p1}, Lahd;->d(Landroid/content/Intent;)Z

    .line 1756
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v1, p1}, Lahp;->d(Landroid/content/Intent;)Z

    .line 1757
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/iflytek/viafly/Home$b;->a:Z

    .line 1764
    :try_start_0
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/Home;->a(Landroid/content/Intent;)V

    .line 1765
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    invoke-virtual {v1, p1}, Laha;->c(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    invoke-virtual {v1, p1}, Laha;->d(Landroid/content/Intent;)Z

    .line 1776
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setStartHomeInfo(Lcom/iflytek/framework/business/entities/StartHomeInfo;)V

    .line 1777
    return-void

    .line 1766
    :catch_0
    move-exception v0

    .line 1767
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, "onNewIntent()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 704
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->f:Lahl;

    invoke-virtual {v0}, Lahl;->a()Z

    .line 705
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onPause()V

    .line 706
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "----------->>> onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iput-boolean v2, v0, Lcom/iflytek/viafly/Home$b;->g:Z

    .line 708
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iflytek/viafly/Home$b;->c:Z

    .line 709
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    invoke-virtual {v0}, Lahi;->a()Z

    .line 711
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v0}, Lahp;->a()Z

    .line 712
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    invoke-virtual {v0}, Lagw;->a()Z

    .line 713
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v0}, Lahp;->m()V

    .line 715
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a()Z

    .line 717
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/Home$a;->e()Z

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0


    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0
    # avoid pause
    # invoke-virtual {v0, v2}, Lbbp;->a(Z)V

    .line 722
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "Ivw|onPause()------false"


    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 691
    const-string/jumbo v1, "Home"

    const-string/jumbo v2, "----------->>> onreStart()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-virtual {v1, v2, v0}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    invoke-static {}, Lpu;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 694
    .local v0, "currOpenState":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 696
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j()V

    .line 699
    :cond_2
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onRestart()V

    .line 700
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    .line 627
    const-string/jumbo v6, "Home"

    const-string/jumbo v7, "onResume()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 629
    .local v4, "onResumeStart":J
    const-string/jumbo v6, "ApplicationLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "home onResume begin timestamp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string/jumbo v6, "ApplicationLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "from process onCreate begin to home onResume begin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-wide v8, v8, Lcom/iflytek/viafly/Home$b;->i:J

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0}, Lcom/iflytek/viafly/Home;->d()V

    .line 633
    const-string/jumbo v6, "Home"

    const-string/jumbo v7, "Ivw|onResume()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    if-eqz v6, :cond_0

    .line 636
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    invoke-interface {v6}, Lcom/iflytek/viafly/Home$a;->d()Z

    .line 639
    :cond_0
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->f:Lahl;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    invoke-virtual {v6, v7}, Lahl;->a(Z)Z

    .line 641
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->m:Lahk;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    invoke-virtual {v6, v7}, Lahk;->a(Z)Z

    .line 642
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->i:Lahg;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    invoke-virtual {v6, v7}, Lahg;->a(Z)Z

    .line 643
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->x:Lahj;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    invoke-virtual {v6, v7}, Lahj;->a(Z)Z

    .line 645
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onResume()V

    .line 647
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->l:Lahi;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    invoke-virtual {v6, v7}, Lahi;->a(Z)Z

    .line 649
    const-wide/16 v0, 0x0

    .line 650
    .local v0, "delayTime":J
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v6, v6, Lcom/iflytek/viafly/Home$b;->e:Z

    if-eqz v6, :cond_1

    .line 653
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->h:Lahd;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lahd;->a(Z)Z

    .line 654
    const-wide/16 v0, 0x32

    .line 658
    :cond_1
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->b:Lahw;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->J:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v0, v1}, Lahw;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    invoke-virtual {v6, v7}, Lahp;->a(Z)Z

    .line 662
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    invoke-virtual {v6, v7}, Lagw;->a(Z)Z

    .line 664
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(Z)Z

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 667
    .local v2, "endTime":J
    const-string/jumbo v6, "Home"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResume end timestamp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string/jumbo v6, "Home"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResume end = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string/jumbo v6, "Home"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "from process onCreate begin to home onResume end = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-wide v8, v8, Lcom/iflytek/viafly/Home$b;->i:J

    sub-long v8, v2, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string/jumbo v6, "Home"

    const-string/jumbo v7, "startServer"

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {p0}, Lpt;->a(Lpt$a;)V

    .line 673
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->y:Lanx;

    if-eqz v6, :cond_2

    .line 674
    iget-object v6, p0, Lcom/iflytek/viafly/Home;->y:Lanx;

    iget-object v7, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    invoke-virtual {v6, v7}, Lanx;->a(Z)Z

    .line 676
    :cond_2
    return-void
.end method

.method protected onSoftInputMethodChange(Z)V
    .locals 1
    .param p1, "isShowing"    # Z

    .prologue
    .line 1846
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onSoftInputMethodChange(Z)V

    .line 1847
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iput-boolean p1, v0, Lcom/iflytek/viafly/Home$b;->j:Z

    .line 1850
    if-nez p1, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->C:Lqh;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->C:Lqh;

    invoke-virtual {v0}, Lqh;->b()V

    .line 1855
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 680
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onStart()V

    .line 681
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "----------->>> onStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->h:Lahd;

    invoke-virtual {v0}, Lahd;->b_()Z

    .line 683
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->b_()Z

    .line 684
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/Home$a;->c()Z

    .line 687
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 730
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onStop()V

    .line 731
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "----------------- >>> onStop()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    iput-boolean v2, v0, Lcom/iflytek/viafly/Home$b;->g:Z

    .line 734
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->I:Lcom/iflytek/viafly/Home$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iflytek/viafly/Home$b;->b:Z

    .line 736
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->q:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->b()Z

    .line 737
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->r:Lahp;

    invoke-virtual {v0}, Lahp;->b()Z

    .line 739
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->g:Lagw;

    invoke-virtual {v0}, Lagw;->b()Z

    .line 745
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 744
    invoke-static {v0}, Lxd;->a(Landroid/content/Context;)Lxd;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Lxd;->d()V

    .line 747
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->E:Lcom/iflytek/viafly/Home$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/Home$a;->f()Z

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0
    # avoid stop
    # invoke-virtual {v0, v2}, Lbbp;->a(Z)V

    .line 751
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "Ivw|onPause()------false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/iflytek/viafly/Home;->d:Laha;

    invoke-virtual {v0, p1}, Laha;->a(Landroid/view/MotionEvent;)Z

    .line 1609
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
