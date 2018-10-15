.class public Lawk;
.super Ljava/lang/Object;
.source "VibratorHelper.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lawk;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string/jumbo v0, "ScheduleVibratorHelper"

    const-string/jumbo v1, "----->> stopVibrator() | stop Schedule vibrator..."

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v0

    invoke-virtual {v0}, Lod;->f()V

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lawk;->a:Z

    .line 40
    return-void
.end method
