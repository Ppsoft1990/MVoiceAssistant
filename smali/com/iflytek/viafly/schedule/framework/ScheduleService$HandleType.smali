.class public final enum Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
.super Ljava/lang/Enum;
.source "ScheduleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ScheduleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

.field public static final enum alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

.field public static final enum clear_trigger_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

.field public static final enum dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

.field public static final enum delete_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

.field public static final enum register_available:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

.field public static final enum show_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

.field public static final enum show_trigger_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    const-string/jumbo v1, "alert"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    const-string/jumbo v1, "dated"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    const-string/jumbo v1, "show_trigger_cach"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->show_trigger_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    const-string/jumbo v1, "clear_trigger_cach"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->clear_trigger_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    const-string/jumbo v1, "show_delay_cach"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->show_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    const-string/jumbo v1, "delete_delay_cach"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->delete_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    const-string/jumbo v1, "register_available"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->register_available:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->show_trigger_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->clear_trigger_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->show_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->delete_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->register_available:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    return-object v0
.end method
