.class public final Lni;
.super Ljava/lang/Object;
.source "AuthBehavorCollector.java"


# static fields
.field private static a:Lni;


# instance fields
.field private b:Lwq;

.field private c:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field private d:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lni;->a:Lni;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lni;->e:Z

    .line 41
    iget-object v0, p0, Lni;->b:Lwq;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lwq;

    invoke-direct {v0, p1}, Lwq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lni;->b:Lwq;

    .line 44
    :cond_0
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 96
    const-string/jumbo v0, "auth is ok"

    .line 97
    .local v0, "desc":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    const-string/jumbo v0, "network error"

    .line 100
    goto :goto_0

    .line 102
    :pswitch_1
    const-string/jumbo v0, "background send sms exceed"

    .line 103
    goto :goto_0

    .line 105
    :pswitch_2
    const-string/jumbo v0, "querytoken send sms failure"

    .line 106
    goto :goto_0

    .line 108
    :pswitch_3
    const-string/jumbo v0, "querytokenid exceed"

    .line 109
    goto :goto_0

    .line 111
    :pswitch_4
    const-string/jumbo v0, "querytokenid failure"

    .line 112
    goto :goto_0

    .line 114
    :pswitch_5
    const-string/jumbo v0, "querytokenid overtime"

    .line 115
    goto :goto_0

    .line 117
    :pswitch_6
    const-string/jumbo v0, "querytokenid no permission"

    .line 118
    goto :goto_0

    .line 120
    :pswitch_7
    const-string/jumbo v0, "gettokenid error"

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Lni;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lni;->a:Lni;

    if-nez v0, :cond_0

    .line 32
    const-class v1, Lni;

    monitor-enter v1

    .line 33
    :try_start_0
    new-instance v0, Lni;

    invoke-direct {v0, p0}, Lni;-><init>(Landroid/content/Context;)V

    sput-object v0, Lni;->a:Lni;

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    sget-object v0, Lni;->a:Lni;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lni;->e:Z

    .line 65
    iput-object v1, p0, Lni;->d:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    .line 66
    iput-object v1, p0, Lni;->c:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 67
    return-void
.end method

.method public a(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    .line 70
    iget-boolean v0, p0, Lni;->e:Z

    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, "AuthBehavorCollector"

    const-string/jumbo v1, "createBehavor not start record"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lni;->c:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-nez v0, :cond_1

    .line 75
    const-string/jumbo v0, "AuthBehavorCollector"

    const-string/jumbo v1, "createBehavor scene not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    invoke-direct {v0}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;-><init>()V

    .line 80
    invoke-virtual {v0, p2}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->b(I)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    move-result-object v0

    iget-object v1, p0, Lni;->c:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 81
    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->a(Lcom/iflytek/common/cmccauth/log/AuthScene;)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->a(I)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    move-result-object v0

    iget-object v1, p0, Lni;->d:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    .line 83
    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->a(Lcom/iflytek/common/cmccauth/log/SmsAuthState;)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    move-result-object v0

    .line 84
    invoke-direct {p0, p2}, Lni;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->a(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->a()Lcom/iflytek/common/cmccauth/log/AuthBehavor;

    move-result-object v6

    .line 86
    .local v6, "authBehavor":Lcom/iflytek/common/cmccauth/log/AuthBehavor;
    invoke-virtual {v6}, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->transferOpLog()Ljava/util/HashMap;

    move-result-object v5

    .line 88
    .local v5, "authMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lni;->b:Lwq;

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    .line 89
    iget-object v0, p0, Lni;->b:Lwq;

    const-string/jumbo v1, "IC00016"

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    .line 89
    invoke-virtual/range {v0 .. v5}, Lwq;->appendOpLog(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 92
    :cond_2
    invoke-virtual {p0}, Lni;->a()V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/common/cmccauth/log/AuthScene;)V
    .locals 2
    .param p1, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;

    .prologue
    .line 47
    iget-boolean v0, p0, Lni;->e:Z

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "AuthBehavorCollector"

    const-string/jumbo v1, "startRecord already start record"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lni;->e:Z

    .line 52
    iput-object p1, p0, Lni;->c:Lcom/iflytek/common/cmccauth/log/AuthScene;

    goto :goto_0
.end method

.method public a(Lcom/iflytek/common/cmccauth/log/SmsAuthState;)V
    .locals 2
    .param p1, "smsState"    # Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    .prologue
    .line 56
    iget-boolean v0, p0, Lni;->e:Z

    if-eqz v0, :cond_0

    .line 57
    iput-object p1, p0, Lni;->d:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string/jumbo v0, "AuthBehavorCollector"

    const-string/jumbo v1, "setTempSmsState not start record"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
