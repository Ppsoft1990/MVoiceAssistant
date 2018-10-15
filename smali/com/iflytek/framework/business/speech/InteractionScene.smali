.class public final enum Lcom/iflytek/framework/business/speech/InteractionScene;
.super Ljava/lang/Enum;
.source "InteractionScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/business/speech/InteractionScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum audio_buffer:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum dial:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum normal:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum receive_sms_contact:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum retry_speech:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum select_call_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum select_contact_name:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum select_contact_number:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum select_schedule_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum select_sms_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum select_weibo_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum simple:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum sms_content:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum weibo_content:Lcom/iflytek/framework/business/speech/InteractionScene;

.field public static final enum weibo_normal:Lcom/iflytek/framework/business/speech/InteractionScene;


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
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 17
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "weibo_normal"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->weibo_normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 22
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "simple"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->simple:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 27
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "select_contact_name"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_name:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 32
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "select_contact_number"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_number:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 37
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "select_call_confirm"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->select_call_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 42
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "select_sms_send_confirm"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->select_sms_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 47
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "select_weibo_send_confirm"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->select_weibo_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 52
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "sms_content"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->sms_content:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 57
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "weibo_content"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->weibo_content:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 62
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "select_schedule_confirm"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->select_schedule_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 67
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "receive_sms_contact"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->receive_sms_contact:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 72
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "retry_speech"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->retry_speech:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 76
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "audio_buffer"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->audio_buffer:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 80
    new-instance v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v1, "dial"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/InteractionScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->dial:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 8
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/iflytek/framework/business/speech/InteractionScene;

    sget-object v1, Lcom/iflytek/framework/business/speech/InteractionScene;->normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/business/speech/InteractionScene;->weibo_normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/business/speech/InteractionScene;->simple:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_name:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_number:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->select_call_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->select_sms_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->select_weibo_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->sms_content:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->weibo_content:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->select_schedule_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->receive_sms_contact:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->retry_speech:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->audio_buffer:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->dial:Lcom/iflytek/framework/business/speech/InteractionScene;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->$VALUES:[Lcom/iflytek/framework/business/speech/InteractionScene;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/business/speech/InteractionScene;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/speech/InteractionScene;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/business/speech/InteractionScene;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->$VALUES:[Lcom/iflytek/framework/business/speech/InteractionScene;

    invoke-virtual {v0}, [Lcom/iflytek/framework/business/speech/InteractionScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/business/speech/InteractionScene;

    return-object v0
.end method
