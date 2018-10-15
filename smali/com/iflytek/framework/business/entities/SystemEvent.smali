.class public final enum Lcom/iflytek/framework/business/entities/SystemEvent;
.super Ljava/lang/Enum;
.source "SystemEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/business/entities/SystemEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/business/entities/SystemEvent;

.field public static final enum delay_taxi:Lcom/iflytek/framework/business/entities/SystemEvent;

.field public static final enum incoming_call:Lcom/iflytek/framework/business/entities/SystemEvent;

.field public static final enum incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

.field public static final enum incoming_sms:Lcom/iflytek/framework/business/entities/SystemEvent;

.field public static final enum network_changed:Lcom/iflytek/framework/business/entities/SystemEvent;

.field public static final enum push_receive:Lcom/iflytek/framework/business/entities/SystemEvent;

.field public static final enum screen_off:Lcom/iflytek/framework/business/entities/SystemEvent;

.field public static final enum screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

.field public static final enum wifi_state_changed:Lcom/iflytek/framework/business/entities/SystemEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    const-string/jumbo v1, "incoming_call"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/business/entities/SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_call:Lcom/iflytek/framework/business/entities/SystemEvent;

    .line 18
    new-instance v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    const-string/jumbo v1, "incoming_sms"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/business/entities/SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_sms:Lcom/iflytek/framework/business/entities/SystemEvent;

    .line 23
    new-instance v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    const-string/jumbo v1, "incoming_schedule"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/business/entities/SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    .line 28
    new-instance v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    const-string/jumbo v1, "network_changed"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/framework/business/entities/SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->network_changed:Lcom/iflytek/framework/business/entities/SystemEvent;

    .line 33
    new-instance v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    const-string/jumbo v1, "wifi_state_changed"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/framework/business/entities/SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->wifi_state_changed:Lcom/iflytek/framework/business/entities/SystemEvent;

    .line 38
    new-instance v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    const-string/jumbo v1, "screen_on"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    .line 43
    new-instance v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    const-string/jumbo v1, "screen_off"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_off:Lcom/iflytek/framework/business/entities/SystemEvent;

    .line 48
    new-instance v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    const-string/jumbo v1, "push_receive"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->push_receive:Lcom/iflytek/framework/business/entities/SystemEvent;

    .line 53
    new-instance v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    const-string/jumbo v1, "delay_taxi"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->delay_taxi:Lcom/iflytek/framework/business/entities/SystemEvent;

    .line 8
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/iflytek/framework/business/entities/SystemEvent;

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_call:Lcom/iflytek/framework/business/entities/SystemEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_sms:Lcom/iflytek/framework/business/entities/SystemEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->network_changed:Lcom/iflytek/framework/business/entities/SystemEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->wifi_state_changed:Lcom/iflytek/framework/business/entities/SystemEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_off:Lcom/iflytek/framework/business/entities/SystemEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/framework/business/entities/SystemEvent;->push_receive:Lcom/iflytek/framework/business/entities/SystemEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/framework/business/entities/SystemEvent;->delay_taxi:Lcom/iflytek/framework/business/entities/SystemEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->$VALUES:[Lcom/iflytek/framework/business/entities/SystemEvent;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/business/entities/SystemEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/entities/SystemEvent;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/business/entities/SystemEvent;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->$VALUES:[Lcom/iflytek/framework/business/entities/SystemEvent;

    invoke-virtual {v0}, [Lcom/iflytek/framework/business/entities/SystemEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/business/entities/SystemEvent;

    return-object v0
.end method
