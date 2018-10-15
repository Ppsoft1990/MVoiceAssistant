.class public Lqc;
.super Ljava/lang/Object;
.source "WakeEngineFactory.java"


# static fields
.field private static a:Lka;

.field private static b:Ljz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lqc;->a:Lka;

    .line 17
    sput-object v0, Lqc;->b:Ljz;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    const-class v1, Lqc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lqc;->a:Lka;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lka;

    invoke-direct {v0, p0}, Lka;-><init>(Landroid/content/Context;)V

    sput-object v0, Lqc;->a:Lka;

    .line 25
    new-instance v0, Ljz;

    invoke-direct {v0, p0}, Ljz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lqc;->b:Ljz;

    .line 26
    sget-object v0, Lqc;->a:Lka;

    sget-object v2, Lqc;->b:Ljz;

    invoke-virtual {v0, v2}, Lka;->a(Ljz;)V

    .line 28
    :cond_0
    sget-object v0, Lqc;->a:Lka;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
