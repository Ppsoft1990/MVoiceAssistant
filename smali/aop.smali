.class public Laop;
.super Ljava/lang/Object;
.source "SmsBusinessManager.java"

# interfaces
.implements Lhm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laop$b;,
        Laop$a;
    }
.end annotation


# static fields
.field private static c:Laop;

.field private static j:Laop$a;

.field private static k:Laop$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Lpp;

.field private h:Lcom/iflytek/base/mms/entities/SmsItem;

.field private i:Z

.field private l:Landroid/os/Looper;

.field private m:Landroid/os/Looper;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Lod$a;

.field private r:Ljava/util/Timer;

.field private s:Lju;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Laop;->c:Laop;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string/jumbo v2, "SmsBusinessManager"

    iput-object v2, p0, Laop;->a:Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Laop;->d:Ljava/lang/Object;

    .line 91
    iput-boolean v3, p0, Laop;->f:Z

    .line 95
    iput-boolean v3, p0, Laop;->i:Z

    .line 104
    iput v3, p0, Laop;->n:I

    .line 106
    const/4 v2, 0x1

    iput v2, p0, Laop;->o:I

    .line 409
    new-instance v2, Laop$1;

    invoke-direct {v2, p0}, Laop$1;-><init>(Laop;)V

    iput-object v2, p0, Laop;->q:Lod$a;

    .line 487
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Laop;->r:Ljava/util/Timer;

    .line 488
    new-instance v2, Laop$2;

    invoke-direct {v2, p0}, Laop$2;-><init>(Laop;)V

    iput-object v2, p0, Laop;->s:Lju;

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "smsReadThread"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 124
    .local v0, "readThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "smsUIThread"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 128
    .local v1, "uiThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 130
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Laop;->l:Landroid/os/Looper;

    .line 131
    new-instance v2, Laop$a;

    iget-object v3, p0, Laop;->l:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Laop$a;-><init>(Laop;Landroid/os/Looper;)V

    sput-object v2, Laop;->j:Laop$a;

    .line 133
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Laop;->m:Landroid/os/Looper;

    .line 134
    new-instance v2, Laop$b;

    iget-object v3, p0, Laop;->m:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Laop$b;-><init>(Laop;Landroid/os/Looper;)V

    sput-object v2, Laop;->k:Laop$b;

    .line 135
    return-void
.end method

.method static synthetic a(Laop;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Laop;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Laop;->c:Laop;

    if-nez v0, :cond_1

    .line 112
    const-class v1, Laop;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Laop;->c:Laop;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Laop;

    invoke-direct {v0}, Laop;-><init>()V

    sput-object v0, Laop;->c:Laop;

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    sget-object v0, Laop;->c:Laop;

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/os/Handler;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    return-void
.end method

.method static synthetic a(Laop;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 0
    .param p0, "x0"    # Laop;
    .param p1, "x1"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Laop;->e(Lcom/iflytek/base/mms/entities/SmsItem;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    :cond_0
    const-string/jumbo v2, "SmsBusinessManager"

    const-string/jumbo v3, "item list is null or size is 0"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local p1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    :goto_0
    return-void

    .line 606
    .restart local p1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    const-class v3, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Laop;->a(Z)V

    .line 608
    const/high16 v2, 0x18000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 610
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 612
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_SMS_SAVE_GALLERY"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 615
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v2}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v2

    invoke-virtual {v2}, Loc;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Laop;->e:Z

    if-nez v2, :cond_2

    .line 617
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 619
    const-string/jumbo v2, "SmsBusinessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EXTRA_SMS_READ_STATUS true| mCancelRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Laop;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 627
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v2

    const-string/jumbo v3, "SC02051"

    const-string/jumbo v4, "pop_appear"

    .line 628
    invoke-virtual {v2, v3, v4}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 633
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v2}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->sms_contact_save:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lxb;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    :cond_2
    const-string/jumbo v2, "SmsBusinessManager"

    const-string/jumbo v3, "EXTRA_SMS_READ_STATUS false"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Z)V
    .locals 4
    .param p1, "isMail"    # Z

    .prologue
    .line 637
    if-eqz p1, :cond_1

    .line 645
    :cond_0
    :goto_0
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v2}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v2

    invoke-virtual {v2}, Loc;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 646
    const-string/jumbo v2, "SmsBusinessManager"

    const-string/jumbo v3, "startRingTone | not normal mode"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :goto_1
    return-void

    .line 640
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SMS_VIBRATE"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v2}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v2

    invoke-virtual {v2}, Lod;->e()V

    goto :goto_0

    .line 651
    :cond_2
    :try_start_0
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "ringtone/message.mp3"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 653
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v2}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v2

    .line 654
    invoke-virtual {v2, v1}, Lod;->playRingToneFromAssert(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 655
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Laop;Z)Z
    .locals 0
    .param p0, "x0"    # Laop;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Laop;->f:Z

    return p1
.end method

.method static synthetic b(Laop;)I
    .locals 2
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget v0, p0, Laop;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laop;->n:I

    return v0
.end method

.method private b(Landroid/os/Handler;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 261
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    return-void
.end method

.method static synthetic b(Laop;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 0
    .param p0, "x0"    # Laop;
    .param p1, "x1"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Laop;->i(Lcom/iflytek/base/mms/entities/SmsItem;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 728
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 729
    :cond_0
    const-string/jumbo v3, "SmsBusinessManager"

    const-string/jumbo v4, "item list is null or size is 0"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v3, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v4, "SmsBusinessManager"

    const-string/jumbo v5, "startShowActivity item list is null or size is 0"

    invoke-static {v3, v4, v5}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_0
    return-void

    .line 734
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v2, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    iget-object v3, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v3}, Lhq;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 736
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Laop;->b:Landroid/content/Context;

    const-class v4, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 737
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v5}, Laop;->a(Z)V

    .line 738
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 741
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 747
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 749
    const-string/jumbo v3, "com.iflytek.cmcc.EXTRA_SMS_GALLERY"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 751
    const-string/jumbo v3, "com.iflytek.cmcc.EXTRA_SMS_NEW_FLAG"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 752
    iget-object v3, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v3}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v3

    invoke-virtual {v3}, Loc;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Laop;->e:Z

    if-nez v3, :cond_2

    .line 754
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v3, v4}, Lil;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    const-string/jumbo v3, "SmsBusinessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EXTRA_SMS_READ_STATUS true| mCancelRead = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Laop;->e:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string/jumbo v3, "com.iflytek.cmcc.EXTRA_SMS_READ_STATUS"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 763
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 764
    iget-object v3, p0, Laop;->b:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 767
    iget-object v3, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v3}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->sms_content_dialog_show:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lxb;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 760
    :cond_2
    const-string/jumbo v3, "SmsBusinessManager"

    const-string/jumbo v4, "EXTRA_SMS_READ_STATUS false"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string/jumbo v3, "com.iflytek.cmcc.EXTRA_SMS_READ_STATUS"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 769
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v4, "SmsBusinessManager"

    const-string/jumbo v5, "startShowActivity isNotifyNormalSms false"

    invoke-static {v3, v4, v5}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Laop;Z)Z
    .locals 0
    .param p0, "x0"    # Laop;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Laop;->e:Z

    return p1
.end method

.method private b(Lcom/iflytek/base/mms/entities/SmsItem;)Z
    .locals 7
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 158
    .local v2, "today":J
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getDate()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 159
    .local v0, "date":J
    const-string/jumbo v4, "SmsBusinessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    const-wide/32 v4, -0xa4cb800

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 161
    const-string/jumbo v4, "SmsBusinessManager"

    const-string/jumbo v5, "sms is too old"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v4, 0x1

    .line 164
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic c(Laop;)I
    .locals 1
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget v0, p0, Laop;->n:I

    return v0
.end method

.method private c(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 5
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    const/4 v3, 0x0

    .line 206
    iput-boolean v3, p0, Laop;->e:Z

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    invoke-direct {p0, p1}, Laop;->g(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v0

    .line 211
    .local v0, "isSaveContactMessage":Z
    if-eqz v0, :cond_0

    .line 212
    invoke-static {p1}, Lhu;->a(Lcom/iflytek/base/mms/entities/SmsItem;)I

    .line 213
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0, v1}, Laop;->a(Ljava/util/List;)V

    .line 215
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v3, "SmsBusinessManager"

    const-string/jumbo v4, "sendReadMessageItem isSaveContactMessage true"

    invoke-static {v2, v3, v4}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 219
    :cond_0
    sget-object v2, Laop;->k:Laop$b;

    invoke-direct {p0, v2, p1}, Laop;->a(Landroid/os/Handler;Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 221
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    iget-boolean v2, p0, Laop;->f:Z

    if-eqz v2, :cond_1

    .line 223
    iput-boolean v3, p0, Laop;->e:Z

    .line 224
    iput-boolean v3, p0, Laop;->f:Z

    .line 226
    :cond_1
    sget-object v2, Laop;->j:Laop$a;

    invoke-direct {p0, v2, p1}, Laop;->b(Landroid/os/Handler;Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto :goto_0

    .line 228
    :cond_2
    sget-object v2, Laop;->j:Laop$a;

    invoke-direct {p0, v2, p1}, Laop;->a(Landroid/os/Handler;Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto :goto_0
.end method

.method static synthetic d(Laop;)I
    .locals 1
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget v0, p0, Laop;->o:I

    return v0
.end method

.method private d(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 6
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, "bSetRead":Z
    iget-object v1, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v1}, Lhq;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-static {p1}, Labd;->a(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x1

    .line 245
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "setHaveRead | read sms is open or it\'s send contact message"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v1

    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getMsgId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lhp;->a(Landroid/content/Context;J)V

    .line 251
    :cond_2
    return-void
.end method

.method static synthetic e(Laop;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget-object v0, p0, Laop;->p:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 474
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "notify read thread"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-boolean v1, p0, Laop;->f:Z

    if-eqz v1, :cond_0

    .line 477
    const/4 v1, 0x1

    iput-boolean v1, p0, Laop;->e:Z

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, p0, Laop;->f:Z

    .line 480
    :try_start_0
    iget-object v1, p0, Laop;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 4
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 297
    iget-object v2, p0, Laop;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 298
    :try_start_0
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v3, "run read tts thread"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iput-object p1, p0, Laop;->h:Lcom/iflytek/base/mms/entities/SmsItem;

    .line 300
    :goto_0
    iget-boolean v1, p0, Laop;->f:Z

    if-eqz v1, :cond_0

    .line 301
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v3, "isRead true | thread wait"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :try_start_1
    iget-object v1, p0, Laop;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 308
    :cond_0
    :try_start_3
    invoke-direct {p0}, Laop;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Laop;->f:Z

    .line 310
    invoke-direct {p0, p1}, Laop;->f(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 312
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    return-void
.end method

.method static synthetic f(Laop;)Lod$a;
    .locals 1
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget-object v0, p0, Laop;->q:Lod$a;

    return-object v0
.end method

.method private f(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 13
    .param p1, "messageItem"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 321
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v10, "SmsBusinessManager"

    const-string/jumbo v11, "readSmsMessage "

    invoke-static {v9, v10, v11}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0, p1}, Laop;->h(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 323
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v10, "SmsBusinessManager"

    const-string/jumbo v11, "readSmsMessage isValidReadStatus false "

    invoke-static {v9, v10, v11}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-direct {p0}, Laop;->h()J

    move-result-wide v6

    .line 330
    .local v6, "sleepTime":J
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v9, p1}, Lhq;->a(Landroid/content/Context;Lcom/iflytek/base/mms/entities/SmsItem;)Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "playText":Ljava/lang/String;
    sget-object v9, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->SMS:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    invoke-static {v9}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v3

    .line 337
    .local v3, "params":Landroid/os/Bundle;
    const-string/jumbo v9, "SmsBusinessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "play text = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    .line 339
    invoke-static {v9}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v9

    .line 340
    invoke-virtual {v9}, Ltd;->c()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 341
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v9}, Lhq;->b(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 342
    invoke-static {}, Labb;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 344
    invoke-static {}, Labb;->c()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    .line 343
    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-static {v5}, Lpz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v10, "SmsBusinessManager"

    const-string/jumbo v11, "readSmsMessage playText contains suffixtag"

    invoke-static {v9, v10, v11}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_2
    :goto_2
    invoke-static {p1}, Lhq;->a(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 384
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v9}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v9

    const-string/jumbo v10, "LX_200001"

    invoke-virtual {v9, v10}, Lwz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v5    # "playText":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SmsBusinessManager"

    const-string/jumbo v10, "sleep error"

    invoke-static {v9, v10, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "params":Landroid/os/Bundle;
    .restart local v5    # "playText":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v10, "SmsBusinessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readSmsMessage speak"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "com.iflytek.cmccIFLY_NOTIFY_SMS_TIMES"

    invoke-virtual {v9, v10}, Lil;->d(Ljava/lang/String;)I

    move-result v8

    .line 352
    .local v8, "smsTimes":I
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 353
    const-string/jumbo v9, "SmsBusinessManager"

    const-string/jumbo v10, "readSmsMessage isStarBroadcast true"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v4, 0x0

    .line 356
    .local v4, "path":Ljava/lang/String;
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v9

    invoke-virtual {v9}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    .line 357
    .local v2, "messageModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const/4 v1, 0x0

    .line 358
    .local v1, "isPlay":Z
    if-eqz v2, :cond_4

    .line 359
    const-string/jumbo v9, "1"

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 361
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 362
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v4}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 363
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v9}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "message"

    invoke-virtual {v9, v10, v11}, Lbbl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v9}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v9

    const-string/jumbo v10, "LX_100094"

    invoke-virtual {v9, v10}, Lwz;->a(Ljava/lang/String;)V

    .line 365
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v4, v9}, Laop;->a(Ljava/lang/String;I)V

    .line 366
    const/4 v1, 0x1

    .line 375
    :cond_4
    :goto_3
    if-nez v1, :cond_2

    .line 376
    iget-object v9, p0, Laop;->g:Lpp;

    iget-object v10, p0, Laop;->s:Lju;

    invoke-virtual {v9, v5, v3, v10}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto/16 :goto_2

    .line 368
    :cond_5
    const-string/jumbo v9, "0"

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 369
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v9

    invoke-virtual {v9}, Lhl;->c()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 370
    iget-object v9, p0, Laop;->g:Lpp;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v10

    invoke-virtual {v10, v2}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v10

    iget-object v11, p0, Laop;->s:Lju;

    invoke-virtual {v9, v5, v10, v11}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 371
    const/4 v1, 0x1

    goto :goto_3

    .line 379
    .end local v1    # "isPlay":Z
    .end local v2    # "messageModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v4    # "path":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Laop;->g:Lpp;

    iget-object v10, p0, Laop;->s:Lju;

    invoke-virtual {v9, v5, v3, v10}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto/16 :goto_2

    .line 389
    .end local v8    # "smsTimes":I
    :cond_7
    iget-object v9, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v10, "SmsBusinessManager"

    const-string/jumbo v11, "readSmsMessage isRecognizing or in call state cancel read"

    invoke-static {v9, v10, v11}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Laop;->c()V

    goto/16 :goto_0
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v0}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v0

    invoke-virtual {v0}, Loc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laop;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    .line 580
    invoke-static {v0}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Ltd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v0}, Lhq;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-static {}, Lhq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    .line 583
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labe;->b(Landroid/content/Context;)Labe;

    move-result-object v0

    invoke-virtual {v0}, Labe;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    const-string/jumbo v0, "SmsBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCancelRead = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Laop;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Laop;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget-object v0, p0, Laop;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 831
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v0

    invoke-virtual {v0}, Lhy;->i()Z

    move-result v0

    return v0
.end method

.method private g(Lcom/iflytek/base/mms/entities/SmsItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 597
    invoke-static {p1}, Labd;->a(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v0

    return v0
.end method

.method private h()J
    .locals 4

    .prologue
    .line 873
    const-wide/16 v0, 0x3e8

    .line 874
    .local v0, "sleepTime":J
    sget-object v2, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->SAMSUNG_I8558:Ljava/lang/String;

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    const-wide/16 v0, 0xfa0

    .line 885
    :cond_0
    :goto_0
    return-wide v0

    .line 876
    :cond_1
    sget-object v2, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->KUPAI_8720L:Ljava/lang/String;

    .line 877
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v3

    .line 876
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 878
    const-wide/16 v0, 0xdac

    goto :goto_0

    .line 879
    :cond_2
    sget-object v2, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->SAMSUNGT959:Ljava/lang/String;

    .line 880
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 881
    const-wide/16 v0, 0x9c4

    goto :goto_0

    .line 882
    :cond_3
    sget-object v2, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->KUNUO_S1:Ljava/lang/String;

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    const-wide/16 v0, 0xfa0

    goto :goto_0
.end method

.method static synthetic h(Laop;)Z
    .locals 1
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget-boolean v0, p0, Laop;->f:Z

    return v0
.end method

.method private h(Lcom/iflytek/base/mms/entities/SmsItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 670
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v0}, Lhq;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 673
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Laop;)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 1
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget-object v0, p0, Laop;->h:Lcom/iflytek/base/mms/entities/SmsItem;

    return-object v0
.end method

.method private i(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 3
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Laop;->a(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "showSms isValidMessage false"

    invoke-static {v0, v1, v2}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :goto_0
    return-void

    .line 688
    :cond_0
    invoke-direct {p0, p1}, Laop;->j(Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto :goto_0
.end method

.method static synthetic j(Laop;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Laop;

    .prologue
    .line 82
    iget-object v0, p0, Laop;->r:Ljava/util/Timer;

    return-object v0
.end method

.method private j(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 9
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 692
    invoke-static {p1}, Lhu;->a(Lcom/iflytek/base/mms/entities/SmsItem;)I

    .line 694
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v0}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v0

    invoke-virtual {v0}, Ltd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    .line 696
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labe;->b(Landroid/content/Context;)Labe;

    move-result-object v0

    invoke-virtual {v0}, Labe;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    :cond_0
    const-string/jumbo v0, "SmsBusinessManager"

    const-string/jumbo v1, "sms notification show"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "showSms updateNormalMessageUI sms notification show"

    invoke-static {v0, v1, v2}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    .line 701
    invoke-static {}, Lhu;->b()Ljava/util/ArrayList;

    move-result-object v2

    .line 702
    invoke-static {}, Lhu;->a()I

    move-result v3

    move-object v1, p1

    move v6, v5

    .line 700
    invoke-static/range {v0 .. v6}, Laoz;->a(Landroid/content/Context;Lcom/iflytek/base/mms/entities/SmsItem;Ljava/util/ArrayList;IZZZ)V

    .line 703
    iput-boolean v4, p0, Laop;->i:Z

    .line 723
    :goto_0
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_200002"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 725
    return-void

    .line 705
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    invoke-direct {p0, p1}, Laop;->g(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v7

    .line 707
    .local v7, "isSaveContactMessage":Z
    if-eqz v7, :cond_2

    .line 708
    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-direct {p0, v8}, Laop;->a(Ljava/util/List;)V

    .line 710
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "showSms updateNormalMessageUI isSaveContactMessage true"

    invoke-static {v0, v1, v2}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_2
    iget-boolean v0, p0, Laop;->i:Z

    if-eqz v0, :cond_3

    .line 713
    iput-boolean v5, p0, Laop;->i:Z

    .line 714
    invoke-static {}, Lhu;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Laop;->b(Ljava/util/List;)V

    .line 719
    :goto_1
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "showSms updateNormalMessageUI startShowActivity"

    invoke-static {v0, v1, v2}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_3
    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-direct {p0, v8}, Laop;->b(Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    iput-object p1, p0, Laop;->b:Landroid/content/Context;

    .line 140
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhp;->a(Lhm;)V

    .line 142
    new-instance v0, Lpp;

    iget-object v1, p0, Laop;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laop;->g:Lpp;

    .line 143
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "addToOutbox"    # Z
    .param p5, "simcard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p6, "listener"    # Lhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            "Lhr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 855
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lhp;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    .line 856
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "addToOutbox"    # Z
    .param p5, "listener"    # Lhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lhr;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 796
    invoke-direct {p0}, Laop;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Lhy;->h()Lcom/iflytek/common/adaptation/entity/SystemSettings;

    move-result-object v7

    .line 801
    .local v7, "systemSettings":Lcom/iflytek/common/adaptation/entity/SystemSettings;
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->alwaysAsk:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    if-ne v7, v0, :cond_0

    .line 802
    new-instance v6, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;

    invoke-direct {v6, p1}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;-><init>(Landroid/content/Context;)V

    .line 804
    .local v6, "simCardSelectDialog":Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;
    const/16 v0, 0x53

    const/16 v1, 0xc

    invoke-virtual {v6, v0, v3, v1}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->show(III)V

    .line 805
    new-instance v0, Laop$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Laop$3;-><init>(Laop;Ljava/util/List;Ljava/lang/String;ZLhr;)V

    .line 806
    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->setSimCardSelectListener(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;)V

    .line 825
    .end local v6    # "simCardSelectDialog":Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;
    .end local v7    # "systemSettings":Lcom/iflytek/common/adaptation/entity/SystemSettings;
    :goto_0
    return-void

    .line 814
    .restart local v7    # "systemSettings":Lcom/iflytek/common/adaptation/entity/SystemSettings;
    :cond_0
    iget-object v1, p0, Laop;->b:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Laop;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V

    goto :goto_0

    .line 818
    .end local v7    # "systemSettings":Lcom/iflytek/common/adaptation/entity/SystemSettings;
    :cond_1
    invoke-static {}, Lagm;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 819
    iget-object v1, p0, Laop;->b:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Laop;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V

    goto :goto_0

    .line 822
    :cond_2
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v1

    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p3}, Lhp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "ringPath"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v0, 0x1

    .line 397
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Laop;->p:Ljava/lang/String;

    .line 400
    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    .line 401
    iput p2, p0, Laop;->o:I

    .line 406
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laop;->p:Ljava/lang/String;

    iget-object v2, p0, Laop;->q:Lod$a;

    invoke-static {v0, v1, v2}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;Lod$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 403
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Laop;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/iflytek/base/mms/entities/SmsItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 662
    iget-object v0, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v0}, Lhq;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "doFinish "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v2, p0, Laop;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 444
    :try_start_0
    iget-boolean v1, p0, Laop;->f:Z

    if-eqz v1, :cond_0

    .line 445
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v3, "end read | thread notify"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v1, 0x0

    iput-boolean v1, p0, Laop;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :try_start_1
    iget-object v1, p0, Laop;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lawd;->a(Landroid/content/Context;)V

    .line 456
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lod;->a(Lod$a;)V

    .line 458
    iput v4, p0, Laop;->n:I

    .line 459
    const/4 v1, 0x1

    iput v1, p0, Laop;->o:I

    .line 460
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "addToOutbox"    # Z
    .param p5, "listener"    # Lhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lhr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 868
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lhp;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V

    .line 869
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 466
    const-string/jumbo v0, "SmsBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sRead = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Laop;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-boolean v0, p0, Laop;->f:Z

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Laop;->g:Lpp;

    iget-object v1, p0, Laop;->s:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 470
    :cond_0
    invoke-direct {p0}, Laop;->e()V

    .line 471
    return-void
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 774
    const-string/jumbo v0, "SmsBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Laop;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-boolean v0, p0, Laop;->f:Z

    return v0
.end method

.method public onArrived(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 5
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 170
    const-string/jumbo v2, "SmsBusinessManager"

    const-string/jumbo v3, "onArrived"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v3, "SmsBusinessManager"

    const-string/jumbo v4, "onArrived"

    invoke-static {v2, v3, v4}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Laas;->a()Laas;

    move-result-object v1

    .line 177
    .local v1, "simcardHelper":Laas;
    invoke-virtual {v1}, Laas;->d()V

    .line 178
    invoke-virtual {v1}, Laas;->b()Lcom/iflytek/yd/system/SimType;

    move-result-object v0

    .line 179
    .local v0, "simType":Lcom/iflytek/yd/system/SimType;
    const-string/jumbo v2, "SmsBusinessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SimType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to SMSCollect."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v2, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    if-eq v0, v2, :cond_2

    .line 181
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v2}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v2

    invoke-virtual {v2, p1}, Laos;->a(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 184
    :cond_2
    invoke-direct {p0, p1}, Laop;->b(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v2}, Lhq;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 189
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    const-string/jumbo v3, "SmsBusinessManager"

    const-string/jumbo v4, "onArrived | sms read is closed"

    invoke-static {v2, v3, v4}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v2, "SmsBusinessManager"

    const-string/jumbo v3, "onArrived | sms read is closed"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v2

    invoke-virtual {v2}, Lpb;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Laop;->b:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    invoke-virtual {v2}, Lbbp;->d()V

    .line 201
    invoke-direct {p0, p1}, Laop;->c(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 202
    invoke-direct {p0, p1}, Laop;->d(Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto :goto_0
.end method
