.class public final enum Lcom/iflytek/base/call/PhoneState;
.super Ljava/lang/Enum;
.source "PhoneState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/base/call/PhoneState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/base/call/PhoneState;

.field public static final enum INCOMING:Lcom/iflytek/base/call/PhoneState;

.field public static final enum INCOMING_END:Lcom/iflytek/base/call/PhoneState;

.field public static final enum INCOMING_OFFHOOK:Lcom/iflytek/base/call/PhoneState;

.field public static final enum MISS_INCOMING_END:Lcom/iflytek/base/call/PhoneState;

.field public static final enum OUTGOING:Lcom/iflytek/base/call/PhoneState;

.field public static final enum UNKNOWN:Lcom/iflytek/base/call/PhoneState;


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
    new-instance v0, Lcom/iflytek/base/call/PhoneState;

    const-string/jumbo v1, "INCOMING"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/base/call/PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/call/PhoneState;->INCOMING:Lcom/iflytek/base/call/PhoneState;

    .line 17
    new-instance v0, Lcom/iflytek/base/call/PhoneState;

    const-string/jumbo v1, "INCOMING_OFFHOOK"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/base/call/PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/call/PhoneState;->INCOMING_OFFHOOK:Lcom/iflytek/base/call/PhoneState;

    .line 21
    new-instance v0, Lcom/iflytek/base/call/PhoneState;

    const-string/jumbo v1, "INCOMING_END"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/base/call/PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/call/PhoneState;->INCOMING_END:Lcom/iflytek/base/call/PhoneState;

    .line 25
    new-instance v0, Lcom/iflytek/base/call/PhoneState;

    const-string/jumbo v1, "MISS_INCOMING_END"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/base/call/PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/call/PhoneState;->MISS_INCOMING_END:Lcom/iflytek/base/call/PhoneState;

    .line 29
    new-instance v0, Lcom/iflytek/base/call/PhoneState;

    const-string/jumbo v1, "OUTGOING"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/base/call/PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/call/PhoneState;->OUTGOING:Lcom/iflytek/base/call/PhoneState;

    .line 33
    new-instance v0, Lcom/iflytek/base/call/PhoneState;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/base/call/PhoneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/call/PhoneState;->UNKNOWN:Lcom/iflytek/base/call/PhoneState;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iflytek/base/call/PhoneState;

    sget-object v1, Lcom/iflytek/base/call/PhoneState;->INCOMING:Lcom/iflytek/base/call/PhoneState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/base/call/PhoneState;->INCOMING_OFFHOOK:Lcom/iflytek/base/call/PhoneState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/base/call/PhoneState;->INCOMING_END:Lcom/iflytek/base/call/PhoneState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/base/call/PhoneState;->MISS_INCOMING_END:Lcom/iflytek/base/call/PhoneState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/base/call/PhoneState;->OUTGOING:Lcom/iflytek/base/call/PhoneState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/base/call/PhoneState;->UNKNOWN:Lcom/iflytek/base/call/PhoneState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/base/call/PhoneState;->$VALUES:[Lcom/iflytek/base/call/PhoneState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/base/call/PhoneState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/base/call/PhoneState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/call/PhoneState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/base/call/PhoneState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/base/call/PhoneState;->$VALUES:[Lcom/iflytek/base/call/PhoneState;

    invoke-virtual {v0}, [Lcom/iflytek/base/call/PhoneState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/base/call/PhoneState;

    return-object v0
.end method
