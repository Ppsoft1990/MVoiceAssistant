.class public final enum Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;
.super Ljava/lang/Enum;
.source "SMSCollectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

.field public static final enum DATA_FLOW:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

.field public static final enum TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    const-string/jumbo v1, "TELEPHONE_BILL"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    .line 11
    new-instance v0, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    const-string/jumbo v1, "DATA_FLOW"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->DATA_FLOW:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    sget-object v1, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->DATA_FLOW:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->$VALUES:[Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->$VALUES:[Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    return-object v0
.end method
