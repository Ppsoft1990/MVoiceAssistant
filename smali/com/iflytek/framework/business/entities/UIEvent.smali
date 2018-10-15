.class public final enum Lcom/iflytek/framework/business/entities/UIEvent;
.super Ljava/lang/Enum;
.source "UIEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/business/entities/UIEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum activity_destory:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum activity_for_result:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum activity_pause:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum activity_resume:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum cancel_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum cancel_smarthome_scan_view:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum on_key_down:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum show_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum speech_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

.field public static final enum title_speak_button_down:Lcom/iflytek/framework/business/entities/UIEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "activity_pause"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->activity_pause:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 19
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "activity_stop"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 24
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "activity_destory"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->activity_destory:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 29
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "activity_resume"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->activity_resume:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 34
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "activity_for_result"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->activity_for_result:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 39
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "speech_button_down"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->speech_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 44
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "title_speak_button_down"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->title_speak_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 49
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "on_key_down"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->on_key_down:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 54
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "show_local_business"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->show_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 59
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "cancel_local_business"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 64
    new-instance v0, Lcom/iflytek/framework/business/entities/UIEvent;

    const-string/jumbo v1, "cancel_smarthome_scan_view"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_smarthome_scan_view:Lcom/iflytek/framework/business/entities/UIEvent;

    .line 9
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/iflytek/framework/business/entities/UIEvent;

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_pause:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_destory:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_resume:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_for_result:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->speech_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->title_speak_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->on_key_down:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->show_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_smarthome_scan_view:Lcom/iflytek/framework/business/entities/UIEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->$VALUES:[Lcom/iflytek/framework/business/entities/UIEvent;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/business/entities/UIEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/iflytek/framework/business/entities/UIEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/entities/UIEvent;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/business/entities/UIEvent;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->$VALUES:[Lcom/iflytek/framework/business/entities/UIEvent;

    invoke-virtual {v0}, [Lcom/iflytek/framework/business/entities/UIEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/business/entities/UIEvent;

    return-object v0
.end method
