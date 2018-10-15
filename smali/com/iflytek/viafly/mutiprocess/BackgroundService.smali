.class public final Lcom/iflytek/viafly/mutiprocess/BackgroundService;
.super Landroid/app/Service;
.source "BackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;
    }
.end annotation


# static fields
.field private static final g:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final h:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;

.field private b:Lcom/iflytek/base/mms/MmsReceiver;

.field private c:Lcom/iflytek/viafly/mutiprocess/BackgroundReceiver;

.field private d:Lhf;

.field private e:Z

.field private f:Laqk;

.field private i:[Ljava/lang/Object;

.field private j:[Ljava/lang/Object;

.field private k:Landroid/app/NotificationManager;

.field private l:Ljava/lang/reflect/Method;

.field private m:Ljava/lang/reflect/Method;

.field private n:Landroid/content/ServiceConnection;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->g:[Ljava/lang/Class;

    .line 78
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->h:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->i:[Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->j:[Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;-><init>(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->n:Landroid/content/ServiceConnection;

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/mutiprocess/BackgroundService;Laqk;)Laqk;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mutiprocess/BackgroundService;
    .param p1, "x1"    # Laqk;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->f:Laqk;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)Lcom/iflytek/base/mms/MmsReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->b:Lcom/iflytek/base/mms/MmsReceiver;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/mutiprocess/MainBinderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->n:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 144
    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)Laqk;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->f:Laqk;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 181
    invoke-static {}, Lhl;->k()I

    move-result v2

    const/16 v3, 0x11

    if-le v2, v3, :cond_1

    .line 182
    const-string/jumbo v2, "BackgroundService"

    const-string/jumbo v3, "startForeground | android 4.3 not support"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->k:Landroid/app/NotificationManager;

    .line 187
    :try_start_0
    const-class v2, Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    const-string/jumbo v3, "startForeground"

    sget-object v4, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->g:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->l:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :goto_1
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 195
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->l:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->i:[Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lof;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 197
    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->i:[Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 199
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->l:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->i:[Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->k:Landroid/app/NotificationManager;

    sget v3, Lof;->u:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackgroundService"

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->k:Landroid/app/NotificationManager;

    sget v3, Lof;->u:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "notification":Landroid/app/Notification;
    :catch_1
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackgroundService"

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->l:Ljava/lang/reflect/Method;

    goto :goto_1
.end method

.method static synthetic c(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->n:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lhl;->k()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_1

    .line 213
    const-string/jumbo v1, "BackgroundService"

    const-string/jumbo v2, "startForeground | android 4.3 not support"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->m:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 218
    const-class v1, Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    const-string/jumbo v2, "stopForeground"

    sget-object v3, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->h:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->m:Ljava/lang/reflect/Method;

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->j:[Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 222
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->m:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->j:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->k:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->k:Landroid/app/NotificationManager;

    sget v2, Lof;->u:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "BackgroundService"

    const-string/jumbo v2, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->k:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->k:Landroid/app/NotificationManager;

    sget v2, Lof;->u:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->k:Landroid/app/NotificationManager;

    if-eqz v2, :cond_3

    .line 227
    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->k:Landroid/app/NotificationManager;

    sget v3, Lof;->u:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_3
    throw v1
.end method

.method private d()V
    .locals 18

    .prologue
    .line 281
    const-string/jumbo v13, "BackgroundService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "registListener mRegistFlag = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->e:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->e:Z

    if-nez v13, :cond_6

    .line 285
    new-instance v13, Lcom/iflytek/viafly/mutiprocess/BackgroundReceiver;

    invoke-direct {v13}, Lcom/iflytek/viafly/mutiprocess/BackgroundReceiver;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->c:Lcom/iflytek/viafly/mutiprocess/BackgroundReceiver;

    .line 286
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v13, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v13, "LockScreen_Status_Flag"

    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const v13, 0x7fffffff

    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 294
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->c:Lcom/iflytek/viafly/mutiprocess/BackgroundReceiver;

    invoke-virtual {v13, v14, v15, v7}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 295
    new-instance v3, Lcom/iflytek/common/adaptation/AdaptationDbHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/iflytek/common/adaptation/AdaptationDbHelper;-><init>(Landroid/content/Context;)V

    .line 296
    .local v3, "dbHelper":Lcom/iflytek/common/adaptation/AdaptationDbHelper;
    new-instance v5, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;

    invoke-direct {v5, v3}, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 298
    .local v5, "imp":Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;
    invoke-virtual {v5}, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;->matchByModel()Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    move-result-object v6

    .line 299
    .local v6, "info":Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    invoke-static {}, Lhl;->k()I

    move-result v13

    const/4 v14, 0x7

    if-le v13, v14, :cond_0

    .line 301
    if-nez v6, :cond_0

    .line 302
    invoke-virtual {v5}, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;->matchByCpu()Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    move-result-object v6

    .line 305
    :cond_0
    const/4 v8, 0x0

    .line 306
    .local v8, "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    const/4 v10, 0x0

    .line 307
    .local v10, "simInfoAdapter":Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
    if-eqz v6, :cond_1

    .line 309
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "com.iflytek.common.adaptation.siminfo."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 310
    invoke-virtual {v6}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getSimInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    .line 309
    invoke-static {v13, v14, v15}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "simInfoAdapter":Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
    check-cast v10, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .restart local v10    # "simInfoAdapter":Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
    :goto_0
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "com.iflytek.common.adaptation.mms."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 319
    invoke-virtual {v6}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getMms()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v17, v15, v16

    .line 318
    invoke-static {v13, v14, v15}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    check-cast v8, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    .restart local v8    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    :cond_1
    :goto_1
    if-nez v10, :cond_2

    .line 327
    new-instance v10, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;

    .end local v10    # "simInfoAdapter":Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 330
    .restart local v10    # "simInfoAdapter":Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
    :cond_2
    if-nez v8, :cond_3

    .line 331
    new-instance v8, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;

    .end local v8    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    move-object/from16 v0, p0

    invoke-direct {v8, v0, v10}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 334
    .restart local v8    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    :cond_3
    const-string/jumbo v13, "BackgroundService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mmsAdapter = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " simInfoAdapter = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lhy;->a(Landroid/content/Context;)Lhy;

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->f()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 339
    const-string/jumbo v13, "phone"

    .line 340
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 341
    .local v12, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v2, Lha;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lha;-><init>(Landroid/content/Context;)V

    .line 342
    .local v2, "callStateListener":Lha;
    const/16 v13, 0x20

    invoke-virtual {v12, v2, v13}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 346
    .end local v2    # "callStateListener":Lha;
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    new-instance v13, Lcom/iflytek/base/mms/MmsReceiver;

    invoke-direct {v13}, Lcom/iflytek/base/mms/MmsReceiver;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->b:Lcom/iflytek/base/mms/MmsReceiver;

    .line 347
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v9, "mmsFilter":Landroid/content/IntentFilter;
    if-eqz v8, :cond_5

    .line 349
    invoke-virtual {v8}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getMmsReceiveAction()[Ljava/lang/String;

    move-result-object v11

    .line 350
    .local v11, "smsActions":[Ljava/lang/String;
    if-eqz v11, :cond_5

    array-length v13, v11

    if-lez v13, :cond_5

    .line 351
    array-length v14, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_5

    aget-object v1, v11, v13

    .line 352
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v15, "BackgroundService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getMmsAdaptation = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 311
    .end local v1    # "action":Ljava/lang/String;
    .end local v9    # "mmsFilter":Landroid/content/IntentFilter;
    .end local v10    # "simInfoAdapter":Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
    .end local v11    # "smsActions":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 312
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "BackgroundService"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    new-instance v10, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .restart local v10    # "simInfoAdapter":Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
    goto/16 :goto_0

    .line 320
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    :catch_1
    move-exception v4

    .line 321
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, "BackgroundService"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    new-instance v8, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v10}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .restart local v8    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    goto/16 :goto_1

    .line 357
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "mmsFilter":Landroid/content/IntentFilter;
    :cond_5
    const v13, 0x7fffffff

    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 358
    const-string/jumbo v13, "com.iflytek.cmcc.SMS_SEND_FAILED_NOTIFICATION"

    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string/jumbo v13, "com.iflytek.cmcc.STOP_READ"

    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v13, "com.iflytek.cmcc.MSG_STOP_SMS_REPLY"

    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v13, "com.iflytek.cmcc.schedule.ALARM_ALERT"

    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->b:Lcom/iflytek/base/mms/MmsReceiver;

    invoke-virtual {v13, v14, v15, v9}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->e()V

    .line 364
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->e:Z

    .line 366
    .end local v3    # "dbHelper":Lcom/iflytek/common/adaptation/AdaptationDbHelper;
    .end local v5    # "imp":Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;
    .end local v6    # "info":Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    .end local v7    # "intentFilter":Landroid/content/IntentFilter;
    .end local v8    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    .end local v9    # "mmsFilter":Landroid/content/IntentFilter;
    .end local v10    # "simInfoAdapter":Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
    :cond_6
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 373
    new-instance v0, Lhf;

    invoke-virtual {p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->d:Lhf;

    .line 374
    invoke-virtual {p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->d:Lhf;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 376
    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 383
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "model":Ljava/lang/String;
    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->XIAOMI_1S:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->KUPAI_8730:Ljava/lang/String;

    .line 385
    invoke-static {v0, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 100
    const-string/jumbo v0, "BackgroundService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p0}, Lil;->a(Landroid/content/Context;)V

    .line 102
    new-instance v0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;-><init>(Lcom/iflytek/viafly/mutiprocess/BackgroundService;Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->e:Z

    .line 104
    invoke-direct {p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->b()V

    .line 105
    invoke-direct {p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a()V

    .line 106
    invoke-direct {p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->d()V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 166
    const-string/jumbo v1, "BackgroundService"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->c()V

    .line 169
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->n:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 175
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 112
    const-string/jumbo v1, "BackgroundService"

    const-string/jumbo v2, "onStartCommand"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const-string/jumbo v1, "BackgroundService"

    const-string/jumbo v2, "onStartCommand intent is null or not legal"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->f:Laqk;

    if-nez v1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a()V

    .line 125
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 119
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
