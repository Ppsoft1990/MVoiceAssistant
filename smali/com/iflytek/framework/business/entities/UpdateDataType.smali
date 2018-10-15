.class public final enum Lcom/iflytek/framework/business/entities/UpdateDataType;
.super Ljava/lang/Enum;
.source "UpdateDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/business/entities/UpdateDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/business/entities/UpdateDataType;

.field public static final enum call_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

.field public static final enum schedule_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

.field public static final enum schedule_red_hot:Lcom/iflytek/framework/business/entities/UpdateDataType;

.field public static final enum sms_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

.field public static final enum translate_setting:Lcom/iflytek/framework/business/entities/UpdateDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/iflytek/framework/business/entities/UpdateDataType;

    const-string/jumbo v1, "call_log"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/entities/UpdateDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UpdateDataType;->call_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

    .line 18
    new-instance v0, Lcom/iflytek/framework/business/entities/UpdateDataType;

    const-string/jumbo v1, "sms_log"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/business/entities/UpdateDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UpdateDataType;->sms_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

    .line 23
    new-instance v0, Lcom/iflytek/framework/business/entities/UpdateDataType;

    const-string/jumbo v1, "schedule_log"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/business/entities/UpdateDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UpdateDataType;->schedule_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

    .line 28
    new-instance v0, Lcom/iflytek/framework/business/entities/UpdateDataType;

    const-string/jumbo v1, "translate_setting"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/business/entities/UpdateDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UpdateDataType;->translate_setting:Lcom/iflytek/framework/business/entities/UpdateDataType;

    .line 33
    new-instance v0, Lcom/iflytek/framework/business/entities/UpdateDataType;

    const-string/jumbo v1, "schedule_red_hot"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/framework/business/entities/UpdateDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/entities/UpdateDataType;->schedule_red_hot:Lcom/iflytek/framework/business/entities/UpdateDataType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/framework/business/entities/UpdateDataType;

    sget-object v1, Lcom/iflytek/framework/business/entities/UpdateDataType;->call_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/framework/business/entities/UpdateDataType;->sms_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/business/entities/UpdateDataType;->schedule_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/business/entities/UpdateDataType;->translate_setting:Lcom/iflytek/framework/business/entities/UpdateDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/framework/business/entities/UpdateDataType;->schedule_red_hot:Lcom/iflytek/framework/business/entities/UpdateDataType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/framework/business/entities/UpdateDataType;->$VALUES:[Lcom/iflytek/framework/business/entities/UpdateDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/business/entities/UpdateDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/framework/business/entities/UpdateDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/entities/UpdateDataType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/business/entities/UpdateDataType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/framework/business/entities/UpdateDataType;->$VALUES:[Lcom/iflytek/framework/business/entities/UpdateDataType;

    invoke-virtual {v0}, [Lcom/iflytek/framework/business/entities/UpdateDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/business/entities/UpdateDataType;

    return-object v0
.end method
