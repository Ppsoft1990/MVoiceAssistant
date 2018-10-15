.class public final enum Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

.field public static final enum error:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

.field public static final enum hasResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

.field public static final enum noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

.field public static final enum resultOver:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    const-string/jumbo v1, "error"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->error:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    const-string/jumbo v1, "noResult"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    const-string/jumbo v1, "hasResult"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->hasResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    const-string/jumbo v1, "resultOver"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->resultOver:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->error:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->hasResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->resultOver:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->$VALUES:[Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;
    .locals 1

    const-class v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;
    .locals 1

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->$VALUES:[Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    invoke-virtual {v0}, [Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    return-object v0
.end method
