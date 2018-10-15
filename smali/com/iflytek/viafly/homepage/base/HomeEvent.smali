.class public final enum Lcom/iflytek/viafly/homepage/base/HomeEvent;
.super Ljava/lang/Enum;
.source "HomeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/homepage/base/HomeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum activity_destory:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum activity_for_result:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum activity_pause:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum activity_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum activity_stop:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum load_net_data:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_dot_updata:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_home_key_pressed:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_incoming_call:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_incoming_schedule:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_incoming_sms:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_network_changed:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_page_dismiss:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_page_pause:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_page_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum on_page_show:Lcom/iflytek/viafly/homepage/base/HomeEvent;

.field public static final enum pull_to_refresh:Lcom/iflytek/viafly/homepage/base/HomeEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "activity_pause"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_pause:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 17
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "activity_stop"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_stop:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "activity_destory"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_destory:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 27
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "activity_resume"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 32
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "activity_for_result"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_for_result:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 37
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_page_resume"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 42
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_page_pause"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_pause:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 47
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_page_show"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_show:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 52
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_page_dismiss"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_dismiss:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 57
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_dot_updata"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_dot_updata:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 62
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_network_changed"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_network_changed:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 67
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_home_key_pressed"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_home_key_pressed:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 72
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_incoming_call"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_call:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 77
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_incoming_sms"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_sms:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 82
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "on_incoming_schedule"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_schedule:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 87
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "pull_to_refresh"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->pull_to_refresh:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 92
    new-instance v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    const-string/jumbo v1, "load_net_data"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/base/HomeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->load_net_data:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .line 7
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/iflytek/viafly/homepage/base/HomeEvent;

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_pause:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_stop:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_destory:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_for_result:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_pause:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_show:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_dismiss:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_dot_updata:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_network_changed:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_home_key_pressed:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_call:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_sms:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_schedule:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->pull_to_refresh:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->load_net_data:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->$VALUES:[Lcom/iflytek/viafly/homepage/base/HomeEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/homepage/base/HomeEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/homepage/base/HomeEvent;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->$VALUES:[Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/homepage/base/HomeEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/homepage/base/HomeEvent;

    return-object v0
.end method
