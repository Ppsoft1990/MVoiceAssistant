.class final enum Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;
.super Ljava/lang/Enum;
.source "SpeechWake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/speech/wake/SpeechWake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WakeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

.field public static final enum WAKE_ERROR_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

.field public static final enum WAKE_OFF_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

.field public static final enum WAKE_START_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

.field public static final enum WAKE_SUCCESS_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    const-string/jumbo v1, "WAKE_START_STATE"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_START_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    .line 84
    new-instance v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    const-string/jumbo v1, "WAKE_SUCCESS_STATE"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_SUCCESS_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    .line 86
    new-instance v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    const-string/jumbo v1, "WAKE_ERROR_STATE"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_ERROR_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    .line 88
    new-instance v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    const-string/jumbo v1, "WAKE_OFF_STATE"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_OFF_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_START_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_SUCCESS_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_ERROR_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_OFF_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->$VALUES:[Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->$VALUES:[Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    invoke-virtual {v0}, [Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    return-object v0
.end method
