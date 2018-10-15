.class public final enum Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;
.super Ljava/lang/Enum;
.source "ScheduleEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

.field public static final enum Call_Coming:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

.field public static final enum Default:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

.field public static final enum Screen_Off:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

.field public static final enum Sms_Coming:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    const-string/jumbo v1, "Default"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Default:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    .line 9
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    const-string/jumbo v1, "Screen_Off"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Screen_Off:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    .line 10
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    const-string/jumbo v1, "Sms_Coming"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Sms_Coming:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    .line 11
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    const-string/jumbo v1, "Call_Coming"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Call_Coming:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Default:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Screen_Off:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Sms_Coming:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Call_Coming:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    return-object v0
.end method
