.class public final Lgo;
.super Ljava/lang/Object;
.source "IflyAlarmManager.java"


# static fields
.field private static volatile a:Lgo;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lgn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lgo;->a:Lgo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgo;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 22
    iput-object p1, p0, Lgo;->b:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lgo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lgo;->a:Lgo;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lgo;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lgo;->a:Lgo;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lgo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lgo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgo;->a:Lgo;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lgo;->a:Lgo;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alarmId"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lgo;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgn;

    .line 129
    .local v0, "module":Lgn;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lgo;->b:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lgm;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 131
    invoke-interface {v0, p2}, Lgn;->a(I)V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, p2, v4, v5}, Lgn;->b(IJ)J

    move-result-wide v2

    .line 133
    .local v2, "nextAlarm":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 134
    iget-object v1, p0, Lgo;->b:Landroid/content/Context;

    invoke-static {v1, p1, p2, v2, v3}, Lgm;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 135
    invoke-interface {v0, p2, v2, v3}, Lgn;->a(IJ)V

    .line 138
    .end local v2    # "nextAlarm":J
    :cond_0
    return-void
.end method
