.class public Ladh;
.super Ljava/lang/Object;
.source "DialRemoteHelper.java"


# static fields
.field private static f:Ladh;

.field private static g:Landroid/content/Context;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field private c:Z

.field private d:I

.field private e:Ladi;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Ladh;->a:I

    .line 21
    iput-boolean v1, p0, Ladh;->c:Z

    .line 24
    iput v1, p0, Ladh;->d:I

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ladh;->b:Ljava/lang/Object;

    .line 36
    sput-object p1, Ladh;->g:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static a()Ladh;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Ladh;->f:Ladh;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ladi;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialLocalHelper"    # Ladi;

    .prologue
    .line 44
    sget-object v0, Ladh;->f:Ladh;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Ladh;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Ladh;->f:Ladh;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ladh;

    invoke-direct {v0, p0}, Ladh;-><init>(Landroid/content/Context;)V

    sput-object v0, Ladh;->f:Ladh;

    .line 48
    sget-object v0, Ladh;->f:Ladh;

    iput-object p1, v0, Ladh;->e:Ladi;

    .line 49
    sget-object v0, Ladh;->f:Ladh;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ladh;->c(I)Z

    .line 51
    :cond_0
    monitor-exit v1

    .line 53
    :cond_1
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Ladh;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ladh;->d:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "dialCallSettingValue"    # I

    .prologue
    .line 76
    iput p1, p0, Ladh;->a:I

    .line 77
    return-void
.end method

.method public a(Z)V
    .locals 5
    .param p1, "isCallSettingKnown"    # Z

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v2, p0, Ladh;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_0
    iget-object v1, p0, Ladh;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :cond_0
    iput-boolean p1, p0, Ladh;->c:Z

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalMonitorStateException;
    :try_start_2
    const-string/jumbo v1, "DialRemoteHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallSettingKnown:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalMonitorStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public b()Ladi;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ladh;->e:Ladi;

    return-object v0
.end method

.method public b(I)Z
    .locals 4
    .param p1, "pAnswerSN"    # I

    .prologue
    .line 111
    sget-object v1, Ladh;->g:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 112
    const-string/jumbo v1, "DialRemoteHelper"

    const-string/jumbo v2, "mContext is null"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x0

    .line 123
    :goto_0
    return v1

    .line 116
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.dial.action_share_call_broadcast_setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ladh;->e:Ladi;

    invoke-interface {v1}, Ladi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "com.iflytek.dial.EXTRA_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string/jumbo v1, "com.iflytek.dial.EXTRA_ANSWER_SN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    sget-object v1, Ladh;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    const-string/jumbo v1, "DialRemoteHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCallSettingFeedBackBroadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Ladh;->a:I

    return v0
.end method

.method public c(I)Z
    .locals 5
    .param p1, "pAnswerSN"    # I

    .prologue
    const/4 v1, 0x1

    .line 133
    sget-object v2, Ladh;->g:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 134
    const-string/jumbo v1, "DialRemoteHelper"

    const-string/jumbo v2, "mContext is null"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    .line 149
    :goto_0
    return v1

    .line 138
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.dial.action_share_call_broadcast_setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Ladh;->e:Ladi;

    invoke-interface {v2}, Ladi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v2, "com.iflytek.dial.EXTRA_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string/jumbo v2, "com.iflytek.dial.EXTRA_SN"

    invoke-direct {p0}, Ladh;->f()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string/jumbo v2, "com.iflytek.dial.EXTRA_VALUE_LINGXI"

    iget-object v3, p0, Ladh;->e:Ladi;

    sget-object v4, Ladh;->g:Landroid/content/Context;

    invoke-interface {v3, v4}, Ladi;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string/jumbo v2, "com.iflytek.dial.EXTRA_VALUE_DIAL"

    iget v3, p0, Ladh;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string/jumbo v2, "com.iflytek.dial.EXTRA_ANSWER_SN"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    sget-object v2, Ladh;->g:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    const-string/jumbo v2, "DialRemoteHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCallSettingNotifyBroadcast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Ladh;->c:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Ladh;->d:I

    return v0
.end method
