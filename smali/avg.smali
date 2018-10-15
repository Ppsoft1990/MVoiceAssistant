.class public Lavg;
.super Ljava/lang/Object;
.source "ScheduleTriggerController.java"


# static fields
.field private static a:Lavh;

.field private static b:Laxc;

.field private static c:Lawo;


# direct methods
.method public static a(Landroid/content/Context;)Lave;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-string/jumbo v0, "ScheduleTriggerController"

    const-string/jumbo v1, "getDefaultHandler()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lavg;->a:Lavh;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lavh;

    invoke-direct {v0, p0}, Lavh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lavg;->a:Lavh;

    .line 89
    :cond_0
    sget-object v0, Lavg;->a:Lavh;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)Lave;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleRingtoneType"    # Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .prologue
    .line 57
    const-string/jumbo v0, "ScheduleTriggerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBusinessHandler(), scheduleRingtoneType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v0, Lavg;->a:Lavh;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lavh;

    invoke-direct {v0, p0}, Lavh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lavg;->a:Lavh;

    .line 61
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v0, p1, :cond_2

    .line 62
    sget-object v0, Lavg;->b:Laxc;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Laxc;

    sget-object v1, Lavg;->a:Lavh;

    invoke-direct {v0, p0, v1}, Laxc;-><init>(Landroid/content/Context;Lave;)V

    sput-object v0, Lavg;->b:Laxc;

    .line 66
    :cond_1
    sget-object v0, Lavg;->b:Laxc;

    .line 75
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lavg;->a:Lavh;

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    sget-object v1, Lavg;->a:Lavh;

    if-eqz v1, :cond_1

    sget-object v1, Lavg;->a:Lavh;

    invoke-virtual {v1}, Lavh;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    sget-object v1, Lavg;->c:Lawo;

    if-eqz v1, :cond_2

    sget-object v1, Lavg;->c:Lawo;

    invoke-virtual {v1}, Lawo;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :cond_2
    sget-object v1, Lavg;->b:Laxc;

    if-eqz v1, :cond_3

    sget-object v1, Lavg;->b:Laxc;

    invoke-virtual {v1}, Laxc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
