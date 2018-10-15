.class public final enum Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;
.super Ljava/lang/Enum;
.source "ScheduleConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/ScheduleConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReminderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

.field public static final enum NORMAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

.field public static final enum WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 447
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;->NORMAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    .line 449
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    const-string/jumbo v1, "WEATHER"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    .line 445
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;->NORMAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 445
    const-class v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$ReminderType;

    return-object v0
.end method
