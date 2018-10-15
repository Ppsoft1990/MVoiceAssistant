.class public final enum Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
.super Ljava/lang/Enum;
.source "MicHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/mic/MicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeakButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

.field public static final enum idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

.field public static final enum init:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

.field public static final enum recording:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

.field public static final enum waiting_result:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    const-string/jumbo v1, "idle"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    .line 156
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    const-string/jumbo v1, "init"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->init:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    .line 161
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    const-string/jumbo v1, "recording"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->recording:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    .line 166
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    const-string/jumbo v1, "waiting_result"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->waiting_result:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->init:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->recording:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->waiting_result:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->$VALUES:[Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->$VALUES:[Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-virtual {v0}, [Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    return-object v0
.end method
