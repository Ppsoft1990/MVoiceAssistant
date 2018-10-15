.class public final enum Lcom/iflytek/yd/speech/msc/interfaces/MscType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/yd/speech/msc/interfaces/MscType;

.field public static final enum contact:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

.field public static final enum evaluate:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

.field public static final enum keyword:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

.field public static final enum other:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

.field public static final enum sms:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

.field public static final enum unknown:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

.field public static final enum url:Lcom/iflytek/yd/speech/msc/interfaces/MscType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    const-string/jumbo v1, "unknown"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->unknown:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    const-string/jumbo v1, "sms"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->sms:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    const-string/jumbo v1, "contact"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    const-string/jumbo v1, "url"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->url:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    const-string/jumbo v1, "keyword"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->keyword:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    const-string/jumbo v1, "other"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->other:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    const-string/jumbo v1, "evaluate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->evaluate:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->unknown:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->sms:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->url:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->keyword:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->other:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->evaluate:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->$VALUES:[Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/yd/speech/msc/interfaces/MscType;
    .locals 1

    const-class v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/yd/speech/msc/interfaces/MscType;
    .locals 1

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->$VALUES:[Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v0}, [Lcom/iflytek/yd/speech/msc/interfaces/MscType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    return-object v0
.end method
