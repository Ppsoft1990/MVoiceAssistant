.class final enum Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;
.super Ljava/lang/Enum;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RecoStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

.field public static final enum BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

.field public static final enum EndRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

.field public static final enum Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

.field public static final enum Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

.field public static final enum WaitResult:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    const-string/jumbo v1, "Idle"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    .line 166
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    const-string/jumbo v1, "BeginRecord"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    .line 167
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    const-string/jumbo v1, "Recording"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    .line 168
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    const-string/jumbo v1, "EndRecord"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->EndRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    .line 169
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    const-string/jumbo v1, "WaitResult"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->WaitResult:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    .line 164
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->EndRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->WaitResult:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->$VALUES:[Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

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
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-class v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->$VALUES:[Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-virtual {v0}, [Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    return-object v0
.end method
