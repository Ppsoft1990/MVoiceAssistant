.class public final Laun;
.super Ljava/lang/Object;
.source "ScheduleTempData.java"


# static fields
.field private static a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private static b:Laur;

.field private static c:Lauq;

.field private static d:Ljava/util/TimerTask;

.field private static e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private static f:I

.field private static g:Lcom/iflytek/yd/speech/ViaAsrResult;

.field private static h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private static i:Landroid/content/Context;


# direct methods
.method public static a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Laun;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method public static a(I)V
    .locals 0
    .param p0, "mScheduleConfirmRetryCount"    # I

    .prologue
    .line 117
    sput p0, Laun;->f:I

    .line 118
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .param p0, "mDelayGuideContext"    # Landroid/content/Context;

    .prologue
    .line 43
    sput-object p0, Laun;->i:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static a(Lauq;)V
    .locals 0
    .param p0, "widgetRemindConfirmView"    # Lauq;

    .prologue
    .line 101
    sput-object p0, Laun;->c:Lauq;

    .line 102
    return-void
.end method

.method public static a(Laur;)V
    .locals 0
    .param p0, "widgetRemindView"    # Laur;

    .prologue
    .line 92
    sput-object p0, Laun;->b:Laur;

    .line 93
    return-void
.end method

.method public static a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p0, "mManualAddSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 51
    sput-object p0, Laun;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 52
    return-void
.end method

.method public static a(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p0, "resultFromIntent"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 76
    sput-object p0, Laun;->g:Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 77
    return-void
.end method

.method public static b()Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Laun;->g:Lcom/iflytek/yd/speech/ViaAsrResult;

    return-object v0
.end method

.method public static b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p0, "newSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 84
    sput-object p0, Laun;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 85
    return-void
.end method

.method public static c()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Laun;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method public static c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p0, "mScheduleItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 125
    sput-object p0, Laun;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 126
    return-void
.end method

.method public static d()Laur;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Laun;->b:Laur;

    return-object v0
.end method

.method public static e()Lauq;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Laun;->c:Lauq;

    return-object v0
.end method

.method public static f()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Laun;->d:Ljava/util/TimerTask;

    return-object v0
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 113
    sget v0, Laun;->f:I

    return v0
.end method

.method public static h()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Laun;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method
