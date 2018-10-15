.class public final enum Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;
.super Ljava/lang/Enum;
.source "SpeechHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/speech/SpeechHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeechType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

.field public static final enum speech:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

.field public static final enum text:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    const-string/jumbo v1, "speech"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->speech:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    .line 118
    new-instance v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    const-string/jumbo v1, "text"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->text:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    sget-object v1, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->speech:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->text:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->$VALUES:[Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->$VALUES:[Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    invoke-virtual {v0}, [Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    return-object v0
.end method
