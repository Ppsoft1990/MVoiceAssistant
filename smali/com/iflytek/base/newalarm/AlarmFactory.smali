.class public final Lcom/iflytek/base/newalarm/AlarmFactory;
.super Ljava/lang/Object;
.source "AlarmFactory.java"


# static fields
.field private static mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/iflytek/base/newalarm/AlarmFactory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/iflytek/base/newalarm/a;

    invoke-direct {v0, p0}, Lcom/iflytek/base/newalarm/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/base/newalarm/AlarmFactory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 24
    :cond_0
    return-void
.end method

.method public static getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/iflytek/base/newalarm/AlarmFactory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/iflytek/base/newalarm/AlarmFactory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAlarmDebug(Z)V
    .locals 0
    .param p0, "debugFlag"    # Z

    .prologue
    .line 27
    invoke-static {p0}, Lcom/iflytek/base/newalarm/util/Logging;->setDebugLogging(Z)V

    .line 28
    return-void
.end method
