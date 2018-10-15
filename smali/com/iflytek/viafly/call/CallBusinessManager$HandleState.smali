.class final enum Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;
.super Ljava/lang/Enum;
.source "CallBusinessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/call/CallBusinessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HandleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

.field public static final enum IDLE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

.field public static final enum INCOMING_TTS:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

.field public static final enum START_WAKE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    new-instance v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->IDLE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    .line 271
    new-instance v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    const-string/jumbo v1, "INCOMING_TTS"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->INCOMING_TTS:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    .line 272
    new-instance v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    const-string/jumbo v1, "START_WAKE"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->START_WAKE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    .line 269
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    sget-object v1, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->IDLE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->INCOMING_TTS:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->START_WAKE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->$VALUES:[Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

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
    .line 269
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 269
    const-class v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->$VALUES:[Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    return-object v0
.end method
