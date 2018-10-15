.class public final enum Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;
.super Ljava/lang/Enum;
.source "SpeechSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TtsStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

.field public static final enum IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

.field public static final enum PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

.field public static final enum RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

.field public static final enum STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

.field public static final enum UNINIT:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    const-string/jumbo v1, "UNINIT"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->UNINIT:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 85
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 86
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 87
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 88
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    const-string/jumbo v1, "STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->UNINIT:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->$VALUES:[Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->$VALUES:[Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-virtual {v0}, [Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    return-object v0
.end method
