.class final Lcom/iflytek/base/newalarm/a;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/c$b;
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarm;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/iflytek/base/newalarm/entities/AlarmData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/iflytek/base/newalarm/a;->a:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmHelper;->isMIUIRom()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/iflytek/base/newalarm/adapter/MiuiAlarmAdapter;

    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/base/newalarm/adapter/MiuiAlarmAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    iput-object v0, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/base/newalarm/c;->a(Landroid/content/Context;)Lcom/iflytek/base/newalarm/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/base/newalarm/c;->a(Lcom/iflytek/base/newalarm/c$b;)V

    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/base/newalarm/AlarmHelper;->isRegisterService(Landroid/content/Context;)Z

    .line 43
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmHelper;->isZteModel()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/iflytek/base/newalarm/adapter/ZteAlarmAdatper;

    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/base/newalarm/adapter/ZteAlarmAdatper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/iflytek/base/newalarm/adapter/DefaultAlarmAdapter;

    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/base/newalarm/adapter/DefaultAlarmAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    goto :goto_0
.end method

.method private a(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 5
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmMode()I

    move-result v0

    .line 196
    .local v0, "alarmMode":I
    invoke-static {p1}, Lcom/iflytek/base/newalarm/a;->c(Lcom/iflytek/base/newalarm/entities/AlarmData;)I

    move-result v1

    .line 197
    .local v1, "requestCode":I
    const-string/jumbo v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleSetAlarm requestCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->setNormalAlarm(ILcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->setExactAlarm(ILcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 215
    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 218
    .local v0, "alarmHashSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 2
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 225
    invoke-static {p1}, Lcom/iflytek/base/newalarm/a;->c(Lcom/iflytek/base/newalarm/entities/AlarmData;)I

    move-result v0

    .line 226
    .local v0, "requestCode":I
    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->b:Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->cancelAlarm(ILcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/newalarm/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/base/newalarm/c;->a(Landroid/content/Context;)Lcom/iflytek/base/newalarm/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/base/newalarm/c;->b(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 230
    return-void
.end method

.method private static c(Lcom/iflytek/base/newalarm/entities/AlarmData;)I
    .locals 4
    .param p0, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 233
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    :cond_0
    const/4 v3, -0x1

    .line 246
    :goto_0
    return v3

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "moduleName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmId()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "alarmId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 241
    const-string/jumbo v0, ""

    .line 243
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public final a(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 5
    .param p1, "realTime"    # J
    .param p3, "triggerData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 251
    if-nez p3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const-string/jumbo v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "realTime = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " trigger data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "moduleName":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 258
    .local v0, "alarmHashSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .end local v0    # "alarmHashSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    :cond_2
    invoke-direct {p0, p3}, Lcom/iflytek/base/newalarm/a;->b(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 265
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;

    invoke-interface {v2, p1, p2, p3}, Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;->onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method public final cancelAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "cancelAlarm alarm data not legal"

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "moduleName":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 141
    .local v0, "alarmHashSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v0    # "alarmHashSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/a;->b(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method public final cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "alarmId"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    :cond_0
    const-string/jumbo v3, "AlarmManager"

    const-string/jumbo v4, "cancelAlarm moduleName or alarmId is empty"

    invoke-static {v3, v4}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 159
    .local v1, "alarmHashSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 160
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/newalarm/entities/AlarmData;

    .line 162
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 164
    invoke-direct {p0, v0}, Lcom/iflytek/base/newalarm/a;->b(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 168
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final cancelModuleAlarms(Ljava/lang/String;)V
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    const-string/jumbo v3, "AlarmManager"

    const-string/jumbo v4, "cancelModuleAlarms moduleName is empty"

    invoke-static {v3, v4}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 303
    .local v1, "alarmHashSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 304
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 305
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/newalarm/entities/AlarmData;

    .line 307
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    invoke-direct {p0, v0}, Lcom/iflytek/base/newalarm/a;->b(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_1

    .line 311
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    :cond_2
    iget-object v3, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getAbortiveAlarms(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/newalarm/entities/AlarmData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    const-string/jumbo v4, "AlarmManager"

    const-string/jumbo v5, "getAbortiveAlarms moduleName is empty"

    invoke-static {v4, v5}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    return-object v0

    .line 277
    :cond_1
    iget-object v4, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/iflytek/base/newalarm/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 279
    .local v2, "alarmHashSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "abortiveAlarmDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 282
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/base/newalarm/entities/AlarmData;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/newalarm/entities/AlarmData;

    .line 284
    .local v1, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "alarmTrigger"    # Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;

    .prologue
    const/4 v0, 0x2

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "registModule moduleName is empty"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return v0

    .line 60
    :cond_0
    if-nez p2, :cond_1

    .line 61
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "registModule alarmTrigger is null"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 66
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "handleRegistModule callback hashmap is empty"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x3

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "setAlarm alarm data not legal"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "moduleName":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/iflytek/base/newalarm/a;->a(Ljava/lang/String;Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/a;->a(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method public final setAlarm(Ljava/lang/String;JILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "triggerTime"    # J
    .param p4, "mode"    # I
    .param p5, "alarmId"    # Ljava/lang/String;
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "setAlarm alarm params not legal"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v1, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    invoke-virtual {v1, p6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 127
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    invoke-direct {p0, p1, v0}, Lcom/iflytek/base/newalarm/a;->a(Ljava/lang/String;Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/iflytek/base/newalarm/a;->a(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method public final unRegistModule(Ljava/lang/String;)I
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "unRegistModule moduleName is empty"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x2

    .line 97
    :goto_0
    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 87
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "handleRegistModule callback hashmap is empty"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x3

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    const/4 v0, 0x4

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/iflytek/base/newalarm/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method
