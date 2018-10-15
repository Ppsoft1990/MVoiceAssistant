.class final Lcom/iflytek/base/newalarm/c$a;
.super Landroid/content/BroadcastReceiver;
.source "AlarmTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/newalarm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/newalarm/c;

.field private b:Lcom/iflytek/base/newalarm/entities/AlarmData;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/iflytek/base/newalarm/c;Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 2
    .param p2, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/iflytek/base/newalarm/c$a;->a:Lcom/iflytek/base/newalarm/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/iflytek/base/newalarm/c$a;->b:Lcom/iflytek/base/newalarm/entities/AlarmData;

    .line 183
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c$a;->b:Lcom/iflytek/base/newalarm/entities/AlarmData;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c$a;->b:Lcom/iflytek/base/newalarm/entities/AlarmData;

    invoke-virtual {v0}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/base/newalarm/c$a;->c:J

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    const-string/jumbo v0, "AlarmTrigger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive intent action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c$a;->a:Lcom/iflytek/base/newalarm/c;

    iget-wide v0, p0, Lcom/iflytek/base/newalarm/c$a;->c:J

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v0, "AlarmTrigger"

    const-string/jumbo v1, "time is expired"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c$a;->a:Lcom/iflytek/base/newalarm/c;

    invoke-static {v0}, Lcom/iflytek/base/newalarm/c;->a(Lcom/iflytek/base/newalarm/c;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/newalarm/c$a;->b:Lcom/iflytek/base/newalarm/entities/AlarmData;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c$a;->a:Lcom/iflytek/base/newalarm/c;

    invoke-static {v0}, Lcom/iflytek/base/newalarm/c;->a(Lcom/iflytek/base/newalarm/c;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/newalarm/c$a;->b:Lcom/iflytek/base/newalarm/entities/AlarmData;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c$a;->a:Lcom/iflytek/base/newalarm/c;

    iget-object v1, p0, Lcom/iflytek/base/newalarm/c$a;->b:Lcom/iflytek/base/newalarm/entities/AlarmData;

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/c;->a(Lcom/iflytek/base/newalarm/c;Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 201
    :cond_0
    return-void
.end method
